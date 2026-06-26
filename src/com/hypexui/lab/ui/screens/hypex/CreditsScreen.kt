package com.hypexui.lab.ui.screens.hypex

import android.content.Intent
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hypexui.compose.preferences.ClickablePreference
import com.hypexui.compose.preferences.PreferenceGroup
import com.hypexui.compose.scaffold.HypexScaffold
import com.hypexui.lab.ui.theme.MaxContentWidth

@Composable
fun CreditsScreen(
    onBackClick: (() -> Unit)? = null,
) {
    val context = LocalContext.current

    HypexScaffold(
        title = "Credits",
        onBackClick = { onBackClick?.invoke() },
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .verticalScroll(rememberScrollState()),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            HypexHeader(subtitle = "Credits and Update Info")

            Column(
                modifier = Modifier.widthIn(max = MaxContentWidth).padding(horizontal = 24.dp),
            ) {
                Spacer(modifier = Modifier.height(16.dp))

                Text(
                    text = "HypexUI",
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                )
                Text(
                    text = "Version 1.4",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )

                Spacer(modifier = Modifier.height(20.dp))

                infoRow("Device", android.os.Build.DEVICE)
                HorizontalDivider(modifier = Modifier.padding(vertical = 4.dp))
                infoRow("Android", android.os.Build.VERSION.RELEASE)
                HorizontalDivider(modifier = Modifier.padding(vertical = 4.dp))
                infoRow("Build", android.os.Build.VERSION.INCREMENTAL)
                HorizontalDivider(modifier = Modifier.padding(vertical = 4.dp))
                infoRow("Chipset", android.os.Build.HARDWARE)
                HorizontalDivider(modifier = Modifier.padding(vertical = 4.dp))

                Spacer(modifier = Modifier.height(24.dp))

                Text(
                    text = "Credits",
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                )

                Spacer(modifier = Modifier.height(8.dp))
            }

            PreferenceGroup {
                item {
                    ClickablePreference(
                        title = "Exx Hypex 👾",
                        summary = "Maintainer",
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent(Intent.ACTION_VIEW).apply {
                                        data = android.net.Uri.parse("https://t.me/himel_pvz")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "Exx Hypex 👾",
                        summary = "Owner Of Project",
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent(Intent.ACTION_VIEW).apply {
                                        data = android.net.Uri.parse("https://t.me/himel_pvz")
                                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                    }
                                )
                            } catch (_: Exception) { }
                        },
                    )
                }
                item {
                    ClickablePreference(
                        title = "HypexUI",
                        summary = "Join For Update",
                        showExternalIcon = true,
                        onClick = {
                            try {
                                context.startActivity(
                                    Intent(Intent.ACTION_VIEW).apply {
                                        data = android.net.Uri.parse("https://t.me/hypexui")
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

@Composable
private fun infoRow(label: String, value: String) {
    Column(
        modifier = Modifier.padding(horizontal = 24.dp, vertical = 8.dp),
    ) {
        Text(
            text = label,
            style = MaterialTheme.typography.titleSmall,
            fontWeight = FontWeight.Medium,
        )
        Text(
            text = value,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
    }
}
