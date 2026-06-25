package com.hypexui.compose.preferences

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.expandVertically
import androidx.compose.animation.shrinkVertically
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ExpandLess
import androidx.compose.material.icons.filled.ExpandMore
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

private val CardRadius = 16.dp

@Composable
fun PreferenceGroup(
    title: String? = null,
    collapsible: Boolean = false,
    initiallyExpanded: Boolean = true,
    modifier: Modifier = Modifier,
    content: @Composable PreferenceGroupScope.() -> Unit,
) {
    var expanded by remember(initiallyExpanded) { mutableStateOf(initiallyExpanded) }
    val scope = remember { PreferenceGroupScope() }
    val items = scope.capture(content)

    Column(modifier = modifier.fillMaxWidth()) {
        if (title != null) {
            Text(
                text = title,
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.padding(start = 16.dp, bottom = 8.dp),
            )
        }

        Surface(
            shape = RoundedCornerShape(CardRadius),
            color = MaterialTheme.colorScheme.surface,
            tonalElevation = 0.dp,
            shadowElevation = 1.dp,
            modifier = Modifier.fillMaxWidth(),
        ) {
            Column {
                if (collapsible) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable { expanded = !expanded }
                            .padding(horizontal = 16.dp, vertical = 14.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Text(
                            text = title ?: "",
                            style = MaterialTheme.typography.titleMedium,
                            color = MaterialTheme.colorScheme.onSurface,
                            modifier = Modifier.weight(1f),
                        )
                        Icon(
                            imageVector = if (expanded) Icons.Filled.ExpandLess else Icons.Filled.ExpandMore,
                            contentDescription = if (expanded) "Collapse" else "Expand",
                            tint = MaterialTheme.colorScheme.onSurfaceVariant,
                            modifier = Modifier.size(24.dp),
                        )
                    }
                }

                AnimatedVisibility(
                    visible = if (collapsible) expanded else true,
                    enter = expandVertically(),
                    exit = shrinkVertically(),
                ) {
                    Column {
                        items.forEachIndexed { index, item ->
                            val position = when {
                                items.size == 1 -> PreferencePosition.Single
                                index == 0 -> PreferencePosition.First
                                index == items.size - 1 -> PreferencePosition.Last
                                else -> PreferencePosition.Middle
                            }
                            CompositionLocalProvider(LocalPreferencePosition provides position) {
                                item()
                            }
                            if (index < items.size - 1) {
                                Box(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(start = if (position == PreferencePosition.First) 16.dp else 0.dp)
                                        .height(0.5.dp)
                                        .background(Color.Black.copy(alpha = 0.08f)),
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

class PreferenceGroupScope {
    private val _items = mutableListOf<@Composable () -> Unit>()

    @Composable
    fun capture(content: @Composable PreferenceGroupScope.() -> Unit): List<@Composable () -> Unit> {
        _items.clear()
        content()
        return _items.toList()
    }

    fun item(content: @Composable () -> Unit) {
        _items.add(content)
    }
}
