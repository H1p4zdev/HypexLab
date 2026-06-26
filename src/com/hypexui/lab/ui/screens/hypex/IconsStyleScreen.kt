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
import androidx.compose.material.icons.filled.BatteryFull
import androidx.compose.material.icons.filled.Fingerprint
import androidx.compose.material.icons.filled.Palette
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.SignalCellularAlt
import androidx.compose.material.icons.filled.SwapHoriz
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.hypexui.compose.preferences.ClickablePreference
import com.hypexui.compose.preferences.PreferenceGroup
import com.hypexui.compose.scaffold.HypexScaffold

@Composable
fun IconsStyleScreen(
    onBackClick: (() -> Unit)? = null,
) {
    val context = LocalContext.current

    HypexScaffold(
        title = "Icons & Style",
        onBackClick = { onBackClick?.invoke() },
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .verticalScroll(rememberScrollState()),
        ) {
            HypexHeader(subtitle = "Icon and Style")

            PreferenceGroup {
                item {
                    ClickablePreference(
                        title = "Battery Icons",
                        summary = "Change Your Battery Icon Styles",
                        icon = Icons.Default.BatteryFull,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("mobx.settings.overlay.icon.battery", "mobx.settings.overlay.icon.battery.BatteryIcons")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Mobile Data Icons",
                        summary = "Change Your Signal Icon Style",
                        icon = Icons.Default.SignalCellularAlt,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("mobx.settings.overlay.icon.signal", "mobx.settings.overlay.icon.signal.SignalIcons")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Fingerprint Animation Type",
                        summary = "Change Your Fingerprint Animation Style",
                        icon = Icons.Default.Fingerprint,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("mobx.settings.overlay.icon.fod", "mobx.settings.overlay.icon.fod.fodIcons")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Navigation Button",
                        summary = "Change Your Navigation Bar Icon Styles",
                        icon = Icons.Default.SwapHoriz,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("mobx.settings.overlay.icon.navigation", "mobx.settings.overlay.icon.navigation.NavigationIcons")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Settings Monet",
                        summary = "Change Your Settings Monet Style",
                        icon = Icons.Default.Palette,
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent().apply {
                                        component = ComponentName("mobx.settings.overlay.icon.settings", "mobx.settings.overlay.icon.settings.SettingsIcons")
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
