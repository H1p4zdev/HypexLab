package com.hypexui.lab.ui.screens

import android.content.ComponentName
import android.content.Intent
import android.provider.Settings
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Bolt
import androidx.compose.material.icons.filled.Brightness6
import androidx.compose.material.icons.filled.Build
import androidx.compose.material.icons.filled.CameraAlt
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.DarkMode
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.Looks
import androidx.compose.material.icons.filled.Notifications
import androidx.compose.material.icons.filled.Palette
import androidx.compose.material.icons.filled.PowerSettingsNew
import androidx.compose.material.icons.filled.PrivacyTip
import androidx.compose.material.icons.filled.ScreenRotation
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.SettingsBrightness
import androidx.compose.material.icons.filled.Star
import androidx.compose.material.icons.filled.Storage
import androidx.compose.material.icons.filled.TouchApp
import androidx.compose.material.icons.filled.VolumeUp
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.hypexui.compose.preferences.ClickablePreference
import com.hypexui.compose.preferences.PreferenceGroup
import com.hypexui.compose.preferences.SecureSettingSwitch
import com.hypexui.compose.scaffold.HypexScaffold
import com.hypexui.lab.ui.screens.hypex.HypexFooter
import com.hypexui.lab.ui.screens.hypex.HypexHeader

@Composable
fun UICustomizeScreen(
    onBackClick: (() -> Unit)? = null,
) {
    val context = LocalContext.current

    HypexScaffold(
        title = "Customize",
        onBackClick = { onBackClick?.invoke() },
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .verticalScroll(rememberScrollState())
                .padding(horizontal = 24.dp),
        ) {
            HypexHeader(subtitle = "Customize Status Bar, Control Centre, and Icons")

            Spacer(modifier = Modifier.height(12.dp))

            PreferenceGroup(title = "Status Bar") {
                item {
                    SecureSettingSwitch(
                        settingKey = "hide_privacy_chip",
                        title = "Hide Privacy Chip",
                        summary = "Hide the privacy indicators (camera/mic) from status bar",
                        icon = Icons.Default.PrivacyTip,
                    )
                }
                item {
                    SecureSettingSwitch(
                        settingKey = "notification_expand",
                        title = "Expand All Notifications",
                        summary = "Show expanded notifications by default",
                        icon = Icons.Default.Notifications,
                    )
                }
                item {
                    SecureSettingSwitch(
                        settingKey = "statusbar_clock_seconds",
                        title = "Show Clock Seconds",
                        summary = "Show seconds in the status bar clock",
                        icon = Icons.Default.Schedule,
                    )
                }
                item {
                    ClickablePreference(
                        title = "Status Bar Tuner",
                        summary = "Show or hide status bar icons",
                        icon = Icons.Default.Settings,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent(Settings.ACTION_APPLICATION_DEVELOPMENT_SETTINGS).apply {
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
            }

            PreferenceGroup(title = "Control Centre") {
                item {
                    ClickablePreference(
                        title = "Power Menu",
                        summary = "Configure power menu settings",
                        icon = Icons.Default.PowerSettingsNew,
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
                        title = "Device Name",
                        summary = "Change your device name",
                        icon = Icons.Default.Info,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("com.android.settings", "com.android.settings.DeviceInfoSettings")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Volume & Sound",
                        summary = "Adjust volume levels and sound settings",
                        icon = Icons.Default.VolumeUp,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent(Settings.ACTION_SOUND_SETTINGS).apply {
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    SecureSettingSwitch(
                        settingKey = "qs_quick_pulldown",
                        title = "Quick QS Pulldown",
                        summary = "Swipe from right side for quick settings",
                        icon = Icons.Default.Settings,
                    )
                }
            }

            PreferenceGroup(title = "Icons & Style") {
                item {
                    ClickablePreference(
                        title = "Icon Pack (Lawnchair)",
                        summary = "Apply icon packs via Lawnchair",
                        icon = Icons.Default.Palette,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent("android.intent.action.MAIN").apply {
                                        component = ComponentName("ch.deletescape.lawnchair.pl fold", "ch.deletescape.lawnchair.activities.IconPickerActivity")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Icon Pack (Nova)",
                        summary = "Apply icon packs via Nova Launcher",
                        icon = Icons.Default.Looks,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent("android.intent.action.MAIN").apply {
                                        component = ComponentName("com.teslacoilsw.launcher", "com.teslacoilsw.launcher.SettingsActivity")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Icon Pack (HyperOS)",
                        summary = "Apply icon packs via HyperOS launcher",
                        icon = Icons.Default.CameraAlt,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent("miui.intent.action.ICON_PICKER").apply {
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Theme Manager",
                        summary = "Open theme manager settings",
                        icon = Icons.Default.Star,
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

            HypexFooter()

            Spacer(modifier = Modifier.height(32.dp))
        }
    }
}
