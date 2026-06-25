#!/bin/bash
#===============================================================================
# SettingsProvider Permission Patch — for HypexUI ROM
# ===============================================================================
# This script patches the HyperOS SettingsProvider APK to allow any app (Option A)
# or a specific app (Option B) to write to Settings.System and Settings.Secure
# WITHOUT requiring platform signature.
#
# Usage:
#   1. Extract SettingsProvider.apk from your ROM:
#      - From ROM zip: unsquashfs system.img && find output -name SettingsProvider.apk
#      - Path: /system/priv-app/SettingsProvider/SettingsProvider.apk
#
#   2. Run this script:
#      bash settings_provider_patch.sh /path/to/SettingsProvider.apk [OPTION]
#      OPTION: a  (Option A — allow ALL apps)
#              b  (Option B — allow specific app only, default)
#
#   3. Replace the patched APK back into your ROM
#
# Requires: apktool, zipalign (in PATH or ANDROID_HOME)
#===============================================================================

set -e

if [ $# -lt 1 ]; then
    echo "Usage: $0 <SettingsProvider.apk> [option]"
    echo "  option: a = allow ALL apps (dangerous, not recommended)"
    echo "          b = allow specific app only (default, recommended)"
    exit 1
fi

APK="$1"
OPTION="${2:-b}"
WORKDIR="/tmp/sppatch_$$"

PACKAGE_NAME="${PACKAGE_NAME:-com.hypexui.lab}"
APP_NAME="${APP_NAME:-HypexUI Lab}"

echo "==> HypexUI SettingsProvider Patcher"
echo "    APK: $APK"
echo "    Option: $OPTION (a=all apps, b=specific app)"
echo "    Target package: $PACKAGE_NAME"
echo ""

if [ ! -f "$APK" ]; then
    echo "ERROR: APK not found: $APK"
    exit 1
fi

# Check for apktool
APKTOOL=$(command -v apktool || echo "")
if [ -z "$APKTOOL" ]; then
    APKTOOL=$(command -v apktool_2.9.3.jar || echo "")
fi
if [ -z "$APKTOOL" ]; then
    APKTOOL=$(find "$ANDROID_HOME" -name "apktool*.jar" 2>/dev/null | head -1 || echo "")
fi
if [ -z "$APKTOOL" ]; then
    echo "ERROR: apktool not found. Install it first."
    echo "  wget https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar"
    echo "  sudo mv apktool_2.9.3.jar /usr/local/bin/"
    exit 1
fi

cleanup() { rm -rf "$WORKDIR"; }
trap cleanup EXIT

echo "==> Decompiling SettingsProvider.apk..."
java -jar "$APKTOOL" d -f -o "$WORKDIR/decompiled" "$APK" 2>/dev/null

SMALI_DIR="$WORKDIR/decompiled/smali"
if [ ! -d "$SMALI_DIR" ]; then
    echo "ERROR: No smali directory found after decompile."
    exit 1
fi

# =============================================================================
# Find the SettingsProvider smali file
# =============================================================================
echo "==> Locating SettingsProvider smali..."

PROVIDER_SMALI=$(find "$SMALI_DIR" -name "SettingsProvider.smali" -path "*/providers/settings/*" 2>/dev/null | head -1)

if [ -z "$PROVIDER_SMALI" ]; then
    # Try broader search
    PROVIDER_SMALI=$(find "$SMALI_DIR" -name "SettingsProvider.smali" 2>/dev/null | grep -v '\$' | head -1)
fi

if [ -z "$PROVIDER_SMALI" ]; then
    echo "ERROR: Could not find SettingsProvider.smali in decompiled APK."
    echo "Trying fallback: search for any file containing the enforcement method..."
    
    # Look for the enforcement pattern
    ENFORCE_FILE=$(grep -rl "WRITE_SECURE_SETTINGS\|enforceWrite\|enforceMutate" "$SMALI_DIR" 2>/dev/null | head -1)
    if [ -n "$ENFORCE_FILE" ]; then
        PROVIDER_SMALI="$ENFORCE_FILE"
        echo "    Found: $PROVIDER_SMALI"
    else
        echo "ERROR: Cannot find permission enforcement code."
        echo "Falling back to manual patch location."
        echo ""
        echo "Manual steps:"
        echo "  1. Look in the decompiled APK for SettingsProvider.smali"
        echo "  2. Find a method that checks android.permission.WRITE_SECURE_SETTINGS"
        echo "  3. Apply the patches shown below"
        PROVIDER_SMALI=""
    fi
else
    echo "    Found: $PROVIDER_SMALI"
fi

# =============================================================================
# Patch Option A — Remove ALL UID checks (any app can write settings)
# =============================================================================
if [ "$OPTION" = "a" ]; then
    if [ -n "$PROVIDER_SMALI" ]; then
        echo "==> Applying Option A: Removing all caller UID checks..."
        
        # Create backup
        cp "$PROVIDER_SMALI" "${PROVIDER_SMALI}.bak"
        
        # Find the enforceWritePermission method and replace with return-void
        # Pattern 1: Standard enforceWritePermission method
        grep -n "\.method.*enforceWrite\|\.method.*enforce.*Permission" "$PROVIDER_SMALI" | while read line; do
            lineno=$(echo "$line" | cut -d: -f1)
            method_name=$(echo "$line" | grep -oP '\.method\s+\S+\s+(\S+)')
            echo "    Found enforcement method at line $lineno: $method_name"
            
            # Find the .end method
            end_lineno=$(tail -n +"$lineno" "$PROVIDER_SMALI" | grep -n "\.end method" | head -1 | cut -d: -f1)
            if [ -n "$end_lineno" ]; then
                end_lineno=$((lineno + end_lineno - 1))
                
                # Calculate the exact replacement
                sed -i "${lineno},${end_lineno}c\\    .method private enforceWritePermission(I)V\\n    .locals 0\\n    return-void\\n.end method" "$PROVIDER_SMALI"
                echo "    ✓ Patched: method now returns immediately"
            fi
        done
        
        # Pattern 2: Check inside call() method — find Binder.getCallingUid() checks
        echo "    Also patching inline UID checks in call()..."
        sed -i '/invoke-static.*Binder;->getCallingUid/I,/move-result/s/invoke-static.*Binder;->getCallingUid.*/# PATCHED: removed UID check\n    const/4 v0, 0x0/' "$PROVIDER_SMALI" 2>/dev/null || true
        
        echo "==> Option A applied successfully!"
    else
        echo ""
        echo "=== OPTION A PATCH (apply manually) ==="
        echo ""
        echo "In SettingsProvider.smali, find the enforceWritePermission method and"
        echo "replace it with:"
        echo ""
        echo "  .method private enforceWritePermission(I)V"
        echo "      .locals 0"
        echo "      return-void"
        echo "  .end method"
        echo ""
        echo "If enforceWritePermission doesn't exist, find the call() method and"
        echo "remove any lines that invoke Binder.getCallingUid() followed by"
        echo "permission checks."
    fi
fi

# =============================================================================
# Patch Option B — White-list specific app package
# =============================================================================
if [ "$OPTION" = "b" ]; then
    if [ -n "$PROVIDER_SMALI" ]; then
        echo "==> Applying Option B: White-listing package $PACKAGE_NAME..."
        
        # Create backup
        cp "$PROVIDER_SMALI" "${PROVIDER_SMALI}.bak"
        
        # We need to add a package name check before the permission check.
        # Look for the permission check pattern and insert our bypass.
        
        # Find line where checkCallingOrSelfPermission with WRITE_SECURE_SETTINGS happens
        PERM_CHECK_LINE=$(grep -n "WRITE_SECURE_SETTINGS\|checkCallingOrSelfPermission" "$PROVIDER_SMALI" | head -1 | cut -d: -f1)
        
        if [ -n "$PERM_CHECK_LINE" ]; then
            echo "    Found permission check at line $PERM_CHECK_LINE"
            
            # We insert before this line: get calling package, compare with our app
            INSERT_AFTER_LINE=$((PERM_CHECK_LINE - 5))
            
            # Need to find a good spot - look for a method prologue or register allocation
            # Find the method this check is inside
            METHOD_START=$(head -n "$PERM_CHECK_LINE" "$PROVIDER_SMALI" | grep -n "\.method " | tail -1 | cut -d: -f1)
            if [ -z "$METHOD_START" ]; then METHOD_START=1; fi
            
            # Get registers used in this method
            LOCAL_REGEX=$(sed -n "${METHOD_START},${PERM_CHECK_LINE}p" "$PROVIDER_SMALI" | grep "\.registers\|\.locals" | tail -1)
            
            echo "    Method starts at line $METHOD_START"
            echo "    Will inject bypass before permission check"
            
            # Build the smali bypass code
            # This checks: getPackageName().equals("com.hypexui.lab")
            # If match, skip the permission check
            
            BYPASS_CODE='    # HypexUI: bypass WRITE_SECURE_SETTINGS check for target package
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "'$PACKAGE_NAME'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_hypexui_bypass

    # Original permission check follows (lines below)...'
            
            # Insert before the first checkCallingOrSelfPermission
            sed -i "${PERM_CHECK_LINE}i\\$BYPASS_CODE" "$PROVIDER_SMALI"
            
            # Find where the SecurityException is thrown and insert bypass label
            SEC_EXC_LINE=$(grep -n "SecurityException\|Security" "$PROVIDER_SMALI" | head -1 | cut -d: -f1)
            if [ -n "$SEC_EXC_LINE" ]; then
                sed -i "${SEC_EXC_LINE}i\\    :cond_hypexui_bypass" "$PROVIDER_SMALI"
                echo "    ✓ Added bypass label before SecurityException"
            fi
            
            echo "==> Option B applied successfully!"
        else
            echo "ERROR: Could not find permission check pattern."
            echo ""
            echo "=== OPTION B PATCH (apply manually) ==="
            echo ""
            echo "In SettingsProvider.smali, find where WRITE_SECURE_SETTINGS is checked"
            echo "and insert this BEFORE the check:"
            echo ""
            echo "  # HypexUI bypass: allow our app to write settings"
            echo "  iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mContext:Landroid/content/Context;"
            echo "  invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;"
            echo "  move-result-object v0"
            echo "  invoke-static {}, Landroid/os/Binder;->getCallingUid()I"
            echo "  move-result v1"
            echo "  invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;"
            echo "  move-result-object v0"
            echo "  const-string v1, \"$PACKAGE_NAME\""
            echo "  invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z"
            echo "  move-result v0"
            echo "  if-eqz v0, :cond_bypass"
            echo ""
            echo "Then find the SecurityException throw and add a label before it:"
            echo "  :cond_bypass"
        fi
    else
        echo ""
        echo "=== OPTION B PATCH (apply manually) ==="
        echo ""
        echo "In SettingsProvider.smali, find where WRITE_SECURE_SETTINGS is checked"
        echo "and insert this BEFORE the check:"
        echo ""
        echo "  # HypexUI bypass: allow our app to write settings"
        echo "  iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mContext:Landroid/content/Context;"
        echo "  invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;"
        echo "  move-result-object v0"
        echo "  invoke-static {}, Landroid/os/Binder;->getCallingUid()I"
        echo "  move-result v1"
        echo "  invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;"
        echo "  move-result-object v0"
        echo "  const-string v1, \"$PACKAGE_NAME\""
        echo "  invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z"
        echo "  move-result v0"
        echo "  if-eqz v0, :cond_bypass"
        echo ""
        echo "Then find the SecurityException throw and add a label before it:"
        echo "  :cond_bypass"
    fi
fi

# =============================================================================
# Rebuild APK
# =============================================================================
if [ -n "$PROVIDER_SMALI" ]; then
    echo ""
    echo "==> Rebuilding patched SettingsProvider.apk..."
    java -jar "$APKTOOL" b -o "$WORKDIR/SettingsProvider-patched.apk" "$WORKDIR/decompiled" 2>/dev/null
    
    # Zipalign
    ZIPALIGN=$(command -v zipalign || find "$ANDROID_HOME" -name zipalign 2>/dev/null | head -1 || echo "")
    if [ -n "$ZIPALIGN" ]; then
        "$ZIPALIGN" -f 4 "$WORKDIR/SettingsProvider-patched.apk" "$WORKDIR/SettingsProvider-aligned.apk" 2>/dev/null
        cp "$WORKDIR/SettingsProvider-aligned.apk" "$(dirname "$APK")/SettingsProvider-patched.apk"
    else
        cp "$WORKDIR/SettingsProvider-patched.apk" "$(dirname "$APK")/SettingsProvider-patched.apk"
    fi
    
    echo ""
    echo "================================================================"
    echo "  ✓ PATCH COMPLETE!"
    echo "  Patched APK: $(dirname "$APK")/SettingsProvider-patched.apk"
    echo "================================================================"
    echo ""
    echo "Next steps:"
    echo "  1. Replace SettingsProvider.apk in your ROM with the patched version"
    echo "  2. Re-sign with platform cert if required"
    echo "  3. Flash the ROM"
    echo ""
    echo "For ROM zip integration:"
    echo "  cp $(dirname "$APK")/SettingsProvider-patched.apk \\"
    echo "    /path/to/rom/system/priv-app/SettingsProvider/SettingsProvider.apk"
fi
