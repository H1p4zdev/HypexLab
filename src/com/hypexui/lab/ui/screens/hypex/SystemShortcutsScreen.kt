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
import androidx.compose.material.icons.filled.BrightnessLow
import androidx.compose.material.icons.filled.Dashboard
import androidx.compose.material.icons.filled.DeveloperMode
import androidx.compose.material.icons.filled.History
import androidx.compose.material.icons.filled.NotificationsActive
import androidx.compose.material.icons.filled.PrivacyTip
import androidx.compose.material.icons.filled.Save
import androidx.compose.material.icons.filled.Widgets
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.hypexui.compose.preferences.ClickablePreference
import com.hypexui.compose.preferences.PreferenceGroup
import com.hypexui.compose.scaffold.HypexScaffold

@Composable
fun SystemShortcutsScreen(
    onBackClick: (() -> Unit)? = null,
) {
    val context = LocalContext.current

    HypexScaffold(
        title = "System Shortcuts",
        onBackClick = { onBackClick?.invoke() },
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .verticalScroll(rememberScrollState())
                .padding(horizontal = 16.dp),
        ) {
            HypexHeader(subtitle = "Enable Some Useful System Settings and Shortcuts")

            PreferenceGroup {
                item {
                    ClickablePreference(
                        title = "Developer Options",
                        summary = "Enable Advanced System Options",
                        icon = Icons.Default.DeveloperMode,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent(android.provider.Settings.ACTION_APPLICATION_DEVELOPMENT_SETTINGS).apply {
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Data Saver",
                        summary = "Prevents some apps from sending or receiving data in background",
                        icon = Icons.Default.Save,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("com.android.settings", "com.android.settings.Settings\$DataSaverSummaryActivity")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Extra Dim",
                        summary = "Reduce bright colors",
                        icon = Icons.Default.BrightnessLow,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent("android.settings.REDUCE_BRIGHT_COLORS_SETTINGS").apply {
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "DPI",
                        summary = "Change display density",
                        icon = Icons.Default.Dashboard,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent(android.provider.Settings.ACTION_DISPLAY_SETTINGS).apply {
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Notification History",
                        summary = "View notification history",
                        icon = Icons.Default.History,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("com.android.settings", "com.android.settings.notification.history.NotificationHistoryActivity")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Notification Access",
                        summary = "Control which apps and devices can read notifications",
                        icon = Icons.Default.NotificationsActive,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent(android.provider.Settings.ACTION_NOTIFICATION_LISTENER_SETTINGS).apply {
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Privacy Option",
                        summary = "Permissions, Account Activity, Personal data",
                        icon = Icons.Default.PrivacyTip,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent(android.provider.Settings.ACTION_PRIVACY_SETTINGS).apply {
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "All Apps",
                        summary = "Complete settings, all application settings are here",
                        icon = Icons.Default.Widgets,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent(android.provider.Settings.ACTION_APPLICATION_SETTINGS).apply {
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
            }

            Spacer(modifier = Modifier.height(32.dp))
        }
    }
}
