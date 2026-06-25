# HypexUI Lab — System Permission Integration

## Overview

HypexUI Lab needs `WRITE_SECURE_SETTINGS` and `WRITE_SETTINGS` to modify
Settings.System/Secure keys. By default, these permissions are only granted
to apps signed with the platform certificate or running as SYSTEM_UID.

Three approaches, from simplest to most thorough:

---

## Approach 1: Priv-App Permissions XML (simplest, app must be pre-installed)

**File**: `privapp-permissions-hypexuilab.xml`

Place in `/system/product/etc/permissions/` and ensure the app is in
`/system/product/priv-app/HypexUILab/`.

- ✅ No smali patching needed
- ✅ Grants all needed permissions
- ❌ App must be pre-installed in ROM
- ❌ Must be signed with platform certificate

---

## Approach 2: SettingsProvider Smali Patch (for sideloaded app)

**File**: `settings_provider_patch.sh`

Patches `SettingsProvider.apk` to allow writes from any app (Option A) or
from a specific package (Option B).

### Option B (recommended) — white-list HypexUI Lab

In `SettingsProvider.smali`, find the method `enforceWritePermission` (or
where `WRITE_SECURE_SETTINGS` is checked via `checkCallingOrSelfPermission`).

Insert this BEFORE the permission check:

```smali
    # HypexUI bypass: allow our app
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.hypexui.lab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_hypexui_bypass
```

Then find where the `SecurityException` is thrown and add a label:

```smali
    :cond_hypexui_bypass
```

### Option A (permissive) — skip all UID checks

Replace `enforceWritePermission` with a no-op:

```smali
.method private enforceWritePermission(I)V
    .locals 0
    return-void
.end method
```

---

## Approach 3: services.jar — PermissionManagerService Patch

Instead of patching SettingsProvider, patch `services.jar` to grant
`WRITE_SECURE_SETTINGS` to any app that requests it.

### Step 1: Decompile services.jar
```bash
apktool d services.jar -o services_decompiled
```

### Step 2: Find permission check

In `PermissionManagerService.smali`, find the method that checks
`android.permission.WRITE_SECURE_SETTINGS`. Typically in
`checkUidPermission()` or `grantPermissions()`.

### Step 3: Patch

Find where the permission is checked against the calling UID and insert:

```smali
    # Always grant WRITE_SECURE_SETTINGS
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermission(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    # Return PERMISSION_GRANTED immediately for this permission
    const/4 v0, 0x0  # PackageManager.PERMISSION_GRANTED
    return v0
```

Note: exact registers and method names depend on the Android version.
Use `services-src/sources/` as reference for method signatures.

---

## SELinux Property Contexts

For SystemProperties writes (`persist.sys.ax_*`, `persist.sys.axion_*`),
add these to your ROM's `plat_property_contexts`:

```
persist.sys.ax                       u:object_r:system_prop:s0 exact string
persist.sys.ax.                      u:object_r:system_prop:s0
persist.sys.axion                    u:object_r:system_prop:s0 exact string
persist.sys.axion.                   u:object_r:system_prop:s0
```

This allows HypexUI Lab's performance/sysprop writes to succeed even
without platform signature.
