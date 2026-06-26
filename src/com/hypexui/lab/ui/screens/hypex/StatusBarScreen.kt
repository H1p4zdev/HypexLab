package com.hypexui.lab.ui.screens.hypex

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AccessTime
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.Notifications
import androidx.compose.material.icons.filled.PrivacyTip
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.hypexui.compose.preferences.ClickablePreference
import com.hypexui.compose.preferences.PreferenceGroup
import com.hypexui.compose.preferences.SecureSettingSwitch
import com.hypexui.compose.scaffold.HypexScaffold

@Composable
fun StatusBarScreen(
    onBackClick: (() -> Unit)? = null,
) {
    val context = LocalContext.current

    HypexScaffold(
        title = "Status Bar",
        onBackClick = { onBackClick?.invoke() },
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .verticalScroll(rememberScrollState()),
        ) {
            HypexHeader(subtitle = "Status Bar Modification and Customization")

            PreferenceGroup {
                item {
                    SecureSettingSwitch(
                        settingKey = "status_bar_expand_top_notification",
                        title = "Expand Top Notification",
                        summary = "Expand top notification when status bar is tapped",
                        icon = Icons.Default.Notifications,
                    )
                }
                item {
                    SecureSettingSwitch(
                        settingKey = "disable_privacy_chip",
                        title = "Disable Privacy Chip",
                        summary = "Disable the Camera, Mic & Location privacy chip",
                        icon = Icons.Default.PrivacyTip,
                    )
                }
                item {
                    ClickablePreference(
                        title = "Status Bar Clock Style",
                        summary = "Restart SystemUI to apply",
                        icon = Icons.Default.AccessTime,
                        showExternalIcon = true,
                        onClick = {

                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Time Format",
                        summary = "Customize clock format (e.g. h:mm a)",
                        icon = Icons.Default.ArrowDropDown,
                        showExternalIcon = true,
                        onClick = {

                        },
                    )
                }
            }

            Spacer(modifier = Modifier.height(32.dp))
        }
    }
}
