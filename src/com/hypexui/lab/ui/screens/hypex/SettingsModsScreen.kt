package com.hypexui.lab.ui.screens.hypex

import android.content.Intent
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.BlurOn
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Flag
import androidx.compose.material.icons.filled.Style
import androidx.compose.material.icons.filled.TextFields
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.hypexui.compose.preferences.PreferenceGroup
import com.hypexui.compose.preferences.SecureSettingSwitch
import com.hypexui.compose.scaffold.HypexScaffold

@Composable
fun SettingsModsScreen(
    onBackClick: (() -> Unit)? = null,
) {
    HypexScaffold(
        title = "Settings Mods",
        onBackClick = { onBackClick?.invoke() },
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .verticalScroll(rememberScrollState()),
        ) {
            HypexHeader(subtitle = "Customize About and Settings UI")

            PreferenceGroup(title = "Display") {
                item {
                    SecureSettingSwitch(
                        settingKey = "horizontal_specs",
                        title = "Enable Horizontal Specs",
                        summary = "Enable Horizontal Specs in about page",
                        icon = Icons.Default.Style,
                    )
                }
                item {
                    SecureSettingSwitch(
                        settingKey = "google_shits",
                        title = "Enable Google",
                        summary = "Enable Google Option in Headers",
                        icon = Icons.Default.Flag,
                        defaultValue = true,
                    )
                }
            }

            PreferenceGroup(title = "About") {
                item {
                    SecureSettingSwitch(
                        settingKey = "mms_gaussian_blur_background",
                        title = "Blur Effect",
                        summary = "Dark mode only",
                        icon = Icons.Default.BlurOn,
                    )
                }
            }

            Spacer(modifier = Modifier.height(32.dp))
        }
    }
}
