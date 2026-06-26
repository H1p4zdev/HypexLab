package com.hypexui.compose.preferences

import android.provider.Settings
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp

@Composable
fun SecureSettingSwitch(
    settingKey: String,
    title: String,
    summary: String? = null,
    icon: ImageVector? = null,
    iconTint: Color? = null,
    defaultValue: Boolean = false,
    enabled: Boolean = true,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    val cr = context.contentResolver
    var checked by remember(settingKey) {
        mutableStateOf(
            try {
                Settings.Secure.getInt(cr, settingKey, if (defaultValue) 1 else 0) == 1
            } catch (_: SecurityException) { defaultValue }
        )
    }

    val pos = LocalPreferencePosition.current
    Surface(
        onClick = {
            if (enabled) {
                val newVal = !checked
                try {
                    Settings.Secure.putInt(cr, settingKey, if (newVal) 1 else 0)
                    checked = newVal
                } catch (_: SecurityException) { }
            }
        },
        shape = preferenceShape(pos),
        color = MaterialTheme.colorScheme.surface,
        enabled = enabled,
        modifier = modifier.fillMaxWidth(),
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 10.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            if (icon != null) {
                androidx.compose.material3.Icon(
                    imageVector = icon,
                    contentDescription = null,
                    tint = iconTint ?: MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.size(24.dp),
                )
                Spacer(modifier = Modifier.width(16.dp))
            }
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.bodyLarge,
                    fontWeight = FontWeight.Normal,
                    color = if (enabled) MaterialTheme.colorScheme.onSurface else MaterialTheme.colorScheme.onSurface.copy(alpha = 0.38f),
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
                if (summary != null) {
                    Text(
                        text = summary,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
            }
            Spacer(modifier = Modifier.width(8.dp))
            ExpressiveSwitch(
                checked = checked,
                onCheckedChange = {
                    if (enabled) {
                        try {
                            Settings.Secure.putInt(cr, settingKey, if (it) 1 else 0)
                            checked = it
                        } catch (_: SecurityException) { }
                    }
                },
            )
        }
    }
}
