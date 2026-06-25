package com.hypexui.compose.preferences

import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.compositionLocalOf
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.unit.dp

enum class PreferencePosition { First, Middle, Last, Single }

val LocalPreferencePosition = compositionLocalOf { PreferencePosition.Middle }

private val CardRadius = 16.dp
private val ItemRadius = 12.dp

fun preferenceShape(position: PreferencePosition): Shape {
    return when (position) {
        PreferencePosition.First -> RoundedCornerShape(topStart = ItemRadius, topEnd = ItemRadius)
        PreferencePosition.Middle -> RoundedCornerShape(0.dp)
        PreferencePosition.Last -> RoundedCornerShape(bottomStart = ItemRadius, bottomEnd = ItemRadius)
        PreferencePosition.Single -> RoundedCornerShape(ItemRadius)
    }
}
