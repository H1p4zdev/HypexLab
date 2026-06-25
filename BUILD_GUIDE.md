# Building HypexUI Lab

## Method 1: Inside AOSP/HyperOS Source Tree (recommended)

This app is designed to be built with the Android.bp (Soong) build system.

```bash
# 1. Copy source to your ROM's packages directory
mkdir -p <rom_root>/packages/apps/HypexUILab
cp -r src/ res/ Android.bp AndroidManifest.xml \
    privapp-permissions-axionparts.xml \
    <rom_root>/packages/apps/HypexUILab/

# 2. Build
cd <rom_root>
source build/envsetup.sh
lunch <your_device_codename>-userdebug
mma HypexUILab

# Output: out/target/product/<device>/system/product/priv-app/HypexUILab/HypexUILab.apk
```

### Important Dependencies (must exist in your ROM tree)

| Dependency | Source |
|-----------|--------|
| `ax_compose` | AxionOS `vendor/axion/packages/apps/AxionCompose/` |
| `miuframework` | HyperOS `vendor/xiaomi/frameworks/` or `prebuilts/sdk/` |
| `material-icons-extended` | `external/compose-material-design/icons-extended/` |

If `ax_compose` is missing, you need to port it from AxionOS or replace
the custom composables (`AxionScaffold`, `PreferenceGroup`, etc.) with
standard Compose Material3 equivalents.

---

## Method 2: Standalone Gradle Build (for testing on device)

Since this project uses `ax_compose` (AOSP internal library), a direct
Gradle build won't work without providing those dependencies. Steps to
make it buildable with Gradle:

### Step 1: Add build.gradle.kts

Create `build.gradle.kts` in the project root:

```kotlin
plugins {
    id("com.android.application") version "8.2.0"
    id("org.jetbrains.kotlin.android") version "1.9.22"
    id("org.jetbrains.kotlin.plugin.compose") version "1.9.22"
}

android {
    namespace = "com.hypexui.lab"
    compileSdk = 35
    defaultConfig {
        applicationId = "com.hypexui.lab"
        minSdk = 31
        targetSdk = 35
    }
    buildTypes {
        release { isMinifyEnabled = false }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    kotlinOptions { jvmTarget = "17" }
    buildFeatures { compose = true }
}

dependencies {
    // Compose BOM
    val composeBom = platform("androidx.compose:compose-bom:2024.02.00")
    implementation(composeBom)
    implementation("androidx.compose.ui:ui")
    implementation("androidx.compose.material3:material3")
    implementation("androidx.compose.material:material-icons-extended")
    implementation("androidx.compose.foundation:foundation")
    implementation("androidx.compose.animation:animation-core")
    implementation("androidx.compose.animation:animation-graphics")
    implementation("androidx.compose.runtime:runtime")
    implementation("androidx.activity:activity-compose:1.8.2")
    implementation("androidx.core:core-ktx:1.12.0")
    implementation("androidx.appcompat:appcompat:1.6.1")
    implementation("androidx.navigation:navigation-compose:2.7.6")
    implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.7.0")
    implementation("androidx.lifecycle:lifecycle-runtime-compose:2.7.0")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.7.3")
    implementation("com.google.android.material:material:1.11.0")

    // Framework JAR for system APIs (TileService, Settings.System, SystemProperties)
    // Extract from your device: adb pull /system/framework/framework.jar
    compileOnly(files("libs/framework.jar"))
}

// Package: com.hypexui.lab
android.sourceSets {
    getByName("main") {
        manifest.srcFile("AndroidManifest.xml")
        java.srcDirs("src")
        res.srcDirs("res")
    }
}
```

### Step 2: Replace ax_compose dependencies

The `ax_compose` library provides custom composables like `AxionScaffold`,
`PreferenceGroup`, `SecureSettingSwitch`, etc. For a standalone build,
replace these with standard Material3 equivalents OR include the
ax_compose source as a module.
```

### Step 3: build.gradle.kts (ready to use)

```kotlin
plugins {
    id("com.android.application") version "8.7.3"
    id("org.jetbrains.kotlin.android") version "2.1.0"
    id("org.jetbrains.kotlin.plugin.compose") version "2.1.0"
}

android {
    namespace = "com.hypexui.lab"
    compileSdk = 36

    defaultConfig {
        applicationId = "com.hypexui.lab"
        minSdk = 31
        targetSdk = 36
        versionCode = 1
        versionName = "1.0"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "17"
    }

    buildFeatures {
        compose = true
    }
}

dependencies {
    val composeBom = platform("androidx.compose:compose-bom:2024.12.01")
    implementation(composeBom)

    implementation("androidx.compose.ui:ui")
    implementation("androidx.compose.material3:material3")
    implementation("androidx.compose.material:material-icons-core")
    implementation("androidx.compose.material:material-icons-extended")
    implementation("androidx.compose.foundation:foundation")
    implementation("androidx.compose.animation:animation-core")
    implementation("androidx.compose.animation:animation-graphics")
    implementation("androidx.compose.runtime:runtime")
    implementation("androidx.compose.ui:ui-graphics")

    implementation("androidx.activity:activity-compose:1.9.3")
    implementation("androidx.core:core-ktx:1.15.0")
    implementation("androidx.appcompat:appcompat:1.7.0")
    implementation("androidx.navigation:navigation-compose:2.8.5")
    implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.8.7")
    implementation("androidx.lifecycle:lifecycle-runtime-compose:2.8.7")

    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.9.0")
    implementation("com.google.android.material:material:1.12.0")

    // Framework JAR for system APIs (compileOnly — not included in APK)
    // Download from: adb pull /system/framework/framework.jar
    compileOnly(file("libs/framework.jar"))
}

android.sourceSets {
    getByName("main") {
        manifest.srcFile("AndroidManifest.xml")
        java.srcDirs("src")
        res.srcDirs("res")
    }
}
```

### Settings file: settings.gradle.kts

```kotlin
pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}
dependencyResolution {
    repositories {
        google()
        mavenCentral()
    }
}
rootProject.name = "HypexUILab"
```

### Building

```bash
# Clone the gradle wrapper
gradle wrapper

# Build
./gradlew assembleDebug

# Output: app/build/outputs/apk/debug/HypexUILab-debug.apk
```

> **Note**: A debug APK built this way will NOT have WRITE_SECURE_SETTINGS
> unless you apply the SettingsProvider patch (see patches/README.md).
> Use it with a patched ROM for testing.

---

## ROM Integration (full system privileges)

To bake into your HypexUI ROM:

```makefile
# In device/hypex/<device>/device.mk
PRODUCT_PACKAGES += HypexUILab

# Copy permissions XML
PRODUCT_COPY_FILES += \
    device/hypex/permissions/privapp-permissions-hypexuilab.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hypexuilab.xml

# Copy SELinux contexts
PRODUCT_COPY_FILES += \
    device/hypex/sepolicy/plat_property_contexts:$(TARGET_COPY_OUT_SYSTEM)/etc/selinux/plat_property_contexts
```

The app uses `android:sharedUserId="android.uid.system"` in the manifest,
so when signed with the platform certificate, it runs as SYSTEM_UID
(UID 1000) and has full access to all system APIs including
WRITE_SECURE_SETTINGS.
