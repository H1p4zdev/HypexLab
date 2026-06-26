package com.hypexui.lab.ui.screens.hypex

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.CloudDownload
import androidx.compose.material.icons.filled.Code
import androidx.compose.material.icons.filled.Extension
import androidx.compose.material.icons.filled.Fingerprint
import androidx.compose.material.icons.filled.Link
import androidx.compose.material.icons.filled.Palette
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Star
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.hypexui.compose.preferences.ClickablePreference
import com.hypexui.compose.preferences.PreferenceGroup
import com.hypexui.compose.scaffold.HypexScaffold

@Composable
fun HypexModsScreen(
    onBackClick: (() -> Unit)? = null,
    onNavigateTo: (String) -> Unit = {},
) {
    HypexScaffold(
        title = "Hypex Mods",
        onBackClick = { onBackClick?.invoke() },
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .verticalScroll(rememberScrollState()),
        ) {
            HypexHeader(
                subtitle = "HypexUI Lab present all modification and customization",
            )

            PreferenceGroup {
                item {
                    ClickablePreference(
                        title = "Spoofs Toolbox",
                        summary = "Spoofings and Unlock Pixel Props",
                        icon = Icons.Default.Fingerprint,
                        onClick = { onNavigateTo("hypex_spoofs") },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Status Bar",
                        summary = "Status Bar Modifications and Customization",
                        icon = Icons.Default.Star,
                        onClick = { onNavigateTo("hypex_statusbar") },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Control Centre",
                        summary = "Control Center Customization",
                        icon = Icons.Default.Settings,
                        onClick = { onNavigateTo("hypex_cc") },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Icons & Style",
                        summary = "Change Icons Styles",
                        icon = Icons.Default.Palette,
                        onClick = { onNavigateTo("hypex_icons") },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Settings Mods",
                        summary = "Customize Settings UI and Styles",
                        icon = Icons.Default.Code,
                        onClick = { onNavigateTo("hypex_settings") },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Extra Mods",
                        summary = "Some Extra Customizations",
                        icon = Icons.Default.Extension,
                        onClick = { onNavigateTo("hypex_extra") },
                    )
                }
                item {
                    ClickablePreference(
                        title = "System Shortcuts",
                        summary = "System Settings and Shortcuts",
                        icon = Icons.Default.Link,
                        onClick = { onNavigateTo("hypex_hidden") },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Credits",
                        summary = "Know About HypexUI",
                        icon = Icons.Default.CloudDownload,
                        onClick = { onNavigateTo("hypex_credit") },
                    )
                }
            }

            Spacer(modifier = Modifier.height(32.dp))
        }
    }
}
