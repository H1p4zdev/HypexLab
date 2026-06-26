package com.hypexui.lab.ui.screens.hypex

import android.content.ComponentName
import android.content.Intent
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Animation
import androidx.compose.material.icons.filled.Apps
import androidx.compose.material.icons.filled.AutoAwesome
import androidx.compose.material.icons.filled.ColorLens
import androidx.compose.material.icons.filled.FlipToFront
import androidx.compose.material.icons.filled.GraphicEq
import androidx.compose.material.icons.filled.Mic
import androidx.compose.material.icons.filled.RotateRight
import androidx.compose.material.icons.filled.ScreenLockPortrait
import androidx.compose.material.icons.filled.Speed
import androidx.compose.material.icons.filled.TheaterComedy
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.hypexui.compose.preferences.ClickablePreference
import com.hypexui.compose.preferences.PreferenceGroup
import com.hypexui.compose.preferences.SecureSettingSwitch
import com.hypexui.compose.scaffold.HypexScaffold

@Composable
fun ExtraModsScreen(
    onBackClick: (() -> Unit)? = null,
) {
    val context = LocalContext.current

    HypexScaffold(
        title = "Extra Mods",
        onBackClick = { onBackClick?.invoke() },
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .verticalScroll(rememberScrollState()),
        ) {
            HypexHeader(subtitle = "Some Useful Features and Customizations")

            PreferenceGroup(title = "System") {
                item {
                    ClickablePreference(
                        title = "Enable Google Assistant/Gemini",
                        summary = "Open power menu settings",
                        icon = Icons.Default.Mic,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("com.android.settings", "com.android.settings.Settings\$PowerMenuSettingsActivity")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Default Apps",
                        summary = "Set all service to Google",
                        icon = Icons.Default.Apps,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("com.android.settings", "com.android.settings.applications.defaultapps.MiuiDefaultAppSettings")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "App Vault",
                        summary = "Open App Vault settings",
                        icon = Icons.Default.TheaterComedy,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("com.miui.personalassistant", "com.miui.personalassistant.settings.PASettingActivity")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Change Theme Server",
                        summary = "Open theme server settings",
                        icon = Icons.Default.ColorLens,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("com.android.thememanager", "com.android.thememanager.activity.ThemePreferenceActivity")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
            }

            PreferenceGroup(title = "Animation") {
                item {
                    SecureSettingSwitch(
                        settingKey = "show_rotation_suggestions",
                        title = "Show Rotation Suggestions",
                        summary = "Show rotation button when screen rotates",
                        icon = Icons.Default.RotateRight,
                    )
                }
                item {
                    SecureSettingSwitch(
                        settingKey = "disable_flag_secure",
                        title = "Disable Secure Flag",
                        summary = "Allow Screenshot in any apps",
                        icon = Icons.Default.ScreenLockPortrait,
                        defaultValue = true,
                    )
                }
                item {
                    SecureSettingSwitch(
                        settingKey = "force_max_fps",
                        title = "Force Max FPS",
                        summary = "Force maximum FPS in all apps (may increase battery consumption)",
                        icon = Icons.Default.Speed,
                    )
                }
            }

            Spacer(modifier = Modifier.height(32.dp))
        }
    }
}
