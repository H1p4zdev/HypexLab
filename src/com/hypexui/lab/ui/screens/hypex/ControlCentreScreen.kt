package com.hypexui.lab.ui.screens.hypex

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.BlurOn
import androidx.compose.material.icons.filled.PowerSettingsNew
import androidx.compose.material.icons.filled.VolumeUp
import androidx.compose.material.icons.filled.Devices
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.hypexui.compose.preferences.PreferenceGroup
import com.hypexui.compose.preferences.SecureSettingSwitch
import com.hypexui.compose.scaffold.HypexScaffold

@Composable
fun ControlCentreScreen(
    onBackClick: (() -> Unit)? = null,
) {
    HypexScaffold(
        title = "Control Centre",
        onBackClick = { onBackClick?.invoke() },
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .verticalScroll(rememberScrollState()),
        ) {
            HypexHeader(subtitle = "Control Center Customization")

            PreferenceGroup {
                item {
                    SecureSettingSwitch(
                        settingKey = "extended_power_menu",
                        title = "Extended Power Menu",
                        summary = "Enable Extended Power Menu options",
                        icon = Icons.Default.PowerSettingsNew,
                        defaultValue = true,
                    )
                }
                item {
                    SecureSettingSwitch(
                        settingKey = "device_name",
                        title = "Hide Device Name",
                        summary = "Disable Device Name in Media Player",
                        icon = Icons.Default.Devices,
                    )
                }
                item {
                    SecureSettingSwitch(
                        settingKey = "super_volume",
                        title = "Super Volume",
                        summary = "Enable Super Volume and Voice. Restart SystemUI to Apply",
                        icon = Icons.Default.VolumeUp,
                        defaultValue = true,
                    )
                }
            }

            Spacer(modifier = Modifier.height(32.dp))
        }
    }
}
