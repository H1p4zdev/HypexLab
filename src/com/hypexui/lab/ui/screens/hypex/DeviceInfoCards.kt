package com.hypexui.lab.ui.screens.hypex

import android.os.Build
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Android
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Memory
import androidx.compose.material.icons.filled.Phone
import androidx.compose.material.icons.filled.Security
import androidx.compose.material.icons.filled.Storage
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

private data class DeviceInfo(
    val label: String,
    val value: String,
    val icon: ImageVector,
    val accentColor: Color,
)

@Composable
fun DeviceInfoCards(modifier: Modifier = Modifier) {
    val items = listOf(
        DeviceInfo(
            label = "Device",
            value = Build.DEVICE.ifEmpty { "Unknown" },
            icon = Icons.Filled.Phone,
            accentColor = Color(0xFF1678FF),
        ),
        DeviceInfo(
            label = "Android",
            value = Build.VERSION.RELEASE.ifEmpty { "Unknown" },
            icon = Icons.Filled.Android,
            accentColor = Color(0xFF7C4DFF),
        ),
        DeviceInfo(
            label = "OS Version",
            value = Build.DISPLAY.take(24).ifEmpty { "Unknown" },
            icon = Icons.Filled.Info,
            accentColor = Color(0xFF00BCD4),
        ),
        DeviceInfo(
            label = "Chipset",
            value = friendlyChipsetName(),
            icon = Icons.Filled.Memory,
            accentColor = Color(0xFFFF3D00),
        ),
        DeviceInfo(
            label = "ROM Info",
            value = Build.FINGERPRINT.take(28).ifEmpty { "Unknown" },
            icon = Icons.Filled.Storage,
            accentColor = Color(0xFF4CAF50),
        ),
        DeviceInfo(
            label = "Security Patch",
            value = Build.VERSION.SECURITY_PATCH.ifEmpty { "Unknown" },
            icon = Icons.Filled.Security,
            accentColor = Color(0xFFFF9800),
        ),
    )

    Column(modifier = modifier.fillMaxWidth()) {
        for (rowIndex in 0..1) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                for (colIndex in 0..2) {
                    val index = rowIndex * 3 + colIndex
                    if (index < items.size) {
                        DeviceInfoCard(
                            item = items[index],
                            modifier = Modifier.weight(1f),
                        )
        }
    }
}

private val snapdragonMap = mapOf(
    "SM4350" to "Snapdragon\u00AE 4 Gen 1",
    "SM4375" to "Snapdragon\u00AE 4 Gen 2",
    "SM4450" to "Snapdragon\u00AE 4 Gen 2",
    "SM4475" to "Snapdragon\u00AE 4 Gen 3",
    "SM6450" to "Snapdragon\u00AE 6 Gen 1",
    "SM6475" to "Snapdragon\u00AE 6 Gen 3",
    "SM7315" to "Snapdragon\u00AE 7 Gen 3",
    "SM7325" to "Snapdragon\u00AE 7+ Gen 2",
    "SM7350" to "Snapdragon\u00AE 7 Gen 1",
    "SM7370" to "Snapdragon\u00AE 7 Gen 1",
    "SM7435" to "Snapdragon\u00AE 7s Gen 2",
    "SM7450" to "Snapdragon\u00AE 7 Gen 1",
    "SM7475" to "Snapdragon\u00AE 7+ Gen 3",
    "SM7550" to "Snapdragon\u00AE 7s Gen 2",
    "SM7635" to "Snapdragon\u00AE 7s Gen 3",
    "SM7675" to "Snapdragon\u00AE 7+ Gen 3",
    "SM8350" to "Snapdragon\u00AE 888",
    "SM8350-AC" to "Snapdragon\u00AE 888+",
    "SM8375" to "Snapdragon\u00AE 888+",
    "SM8450" to "Snapdragon\u00AE 8 Gen 1",
    "SM8475" to "Snapdragon\u00AE 8+ Gen 1",
    "SM8525" to "Snapdragon\u00AE 8cx Gen 3",
    "SM8550" to "Snapdragon\u00AE 8 Gen 2",
    "SM8550-AB" to "Snapdragon\u00AE 8 Gen 2",
    "SM8560" to "Snapdragon\u00AE 8+ Gen 2",
    "SM8575" to "Snapdragon\u00AE 8 Gen 2",
    "SM8580" to "Snapdragon\u00AE 8 Gen 2",
    "SM8650" to "Snapdragon\u00AE 8 Gen 3",
    "SM8650-AB" to "Snapdragon\u00AE 8 Gen 3",
    "SM8650P" to "Snapdragon\u00AE 8 Gen 3 for Galaxy",
    "SM8750" to "Snapdragon\u00AE 8 Elite",
    "SM8750-AB" to "Snapdragon\u00AE 8 Elite",
    "SM8750P" to "Snapdragon\u00AE 8 Elite for Galaxy",
)

private fun friendlyChipsetName(): String {
    if (Build.VERSION.SDK_INT >= 31) {
        val manufacturer = Build.SOC_MANUFACTURER
        val model = Build.SOC_MODEL
        if (model.isNotBlank()) {
            val mapped = snapdragonMap[model]
            if (mapped != null) return mapped
            if (manufacturer.equals("Qualcomm", ignoreCase = true)) {
                return "Snapdragon\u00AE ${model.removePrefix("SM")}"
            }
            if (manufacturer.equals("MediaTek", ignoreCase = true)) {
                return when {
                    model.contains("Dimensity", ignoreCase = true) ||
                        model.startsWith("MT") -> "MediaTek $model"
                    else -> "$manufacturer $model"
                }
            }
            if (manufacturer.equals("Samsung", ignoreCase = true)) {
                return "Exynos ${model.removePrefix("Exynos")}"
            }
            if (manufacturer.equals("Google", ignoreCase = true)) {
                return "Google Tensor$model"
            }
            return "$manufacturer $model"
        }
        if (manufacturer.isNotBlank()) return manufacturer
    }
    val hw = Build.HARDWARE
    if (hw.isNotBlank()) return hw
    return "Unknown"
}
            if (rowIndex == 0) Spacer(modifier = Modifier.height(8.dp))
        }
    }
}

@Composable
private fun DeviceInfoCard(
    item: DeviceInfo,
    modifier: Modifier = Modifier,
) {
    Card(
        shape = RoundedCornerShape(16.dp),
        modifier = modifier,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        elevation = CardDefaults.cardElevation(0.dp),
    ) {
        Column(
            modifier = Modifier.fillMaxWidth().padding(8.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            Box(
                modifier = Modifier
                    .size(36.dp)
                    .clip(CircleShape)
                    .background(item.accentColor.copy(alpha = 0.15f)),
                contentAlignment = Alignment.Center,
            ) {
                Icon(
                    imageVector = item.icon,
                    contentDescription = null,
                    tint = item.accentColor,
                    modifier = Modifier.size(18.dp),
                )
            }
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = item.value,
                fontSize = 11.sp,
                fontWeight = FontWeight.SemiBold,
                color = MaterialTheme.colorScheme.onSurface,
                textAlign = TextAlign.Center,
                maxLines = 1,
            )
            Text(
                text = item.label,
                fontSize = 9.sp,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center,
            )
        }
    }
}
