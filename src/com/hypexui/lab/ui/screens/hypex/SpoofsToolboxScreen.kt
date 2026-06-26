package com.hypexui.lab.ui.screens.hypex

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Fingerprint
import androidx.compose.material.icons.filled.PhotoLibrary
import androidx.compose.material.icons.filled.Phone
import androidx.compose.material.icons.filled.SportsEsports
import androidx.compose.material.icons.filled.Store
import androidx.compose.material.icons.filled.Videocam
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.unit.dp
import com.hypexui.compose.preferences.PreferenceGroup
import com.hypexui.compose.preferences.PreferenceGroupScope
import com.hypexui.compose.preferences.SecureSettingSwitch
import com.hypexui.compose.scaffold.HypexScaffold

@Composable
fun SpoofsToolboxScreen(
    onBackClick: (() -> Unit)? = null,
) {
    HypexScaffold(
        title = "Spoofs Toolbox",
        onBackClick = { onBackClick?.invoke() },
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .verticalScroll(rememberScrollState()),
        ) {
            HypexHeader(subtitle = "Spoofings and Unlock Pixel Props")

            PreferenceGroup {
                spoofSwitch(
                    key = "persist.sys.nexiun.integrity",
                    title = "Play Integrity Fix",
                    summary = "This is the spoof method of ZenDroid. Disable to use your own spoof method",
                    icon = Icons.Default.Fingerprint,
                )
                spoofSwitch(
                    key = "persist.sys.nexiun.playstore",
                    title = "Enable Play Store Spoof",
                    summary = "Spoof your device as a Pixel 9 Pro XL for Play Store only",
                    icon = Icons.Default.Store,
                )
                spoofSwitch(
                    key = "persist.sys.nexiun.messenger",
                    title = "Messenger Spoof",
                    summary = "Spoof your device as a Samsung Galaxy S24 Ultra for Messenger only",
                    icon = Icons.Default.Phone,
                )
                spoofSwitch(
                    key = "persist.sys.nexiun.games",
                    title = "Unlock Higher FPS in Games",
                    summary = "Spoof your device as a different model for specific games to unlock higher FPS",
                    icon = Icons.Default.SportsEsports,
                )
                spoofSwitch(
                    key = "persist.sys.nexiun.photos",
                    title = "Unlimited Photos Storage",
                    summary = "Spoof your device as Pixel device for Google Photos unlimited storage",
                    icon = Icons.Default.PhotoLibrary,
                )
                spoofSwitch(
                    key = "persist.sys.nexiun.netflix",
                    title = "Netflix Spoof",
                    summary = "Spoof your device as different model for Netflix",
                    icon = Icons.Default.Videocam,
                )
                spoofSwitch(
                    key = "persist.sys.nexiun.snapchat",
                    title = "Snapchat Spoof",
                    summary = "Spoof device as a Pixel for features",
                    icon = Icons.Default.Fingerprint,
                )
            }

            Spacer(modifier = Modifier.height(32.dp))
        }
    }
}

private fun PreferenceGroupScope.spoofSwitch(
    key: String,
    title: String,
    summary: String,
    icon: ImageVector,
) {
    item {
        SecureSettingSwitch(
            settingKey = key,
            title = title,
            summary = summary,
            icon = icon,
        )
    }
}
