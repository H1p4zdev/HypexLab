/*
 * Copyright (C) 2025 HypexUI Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.hypexui.lab.ui.screens

import android.content.ComponentName
import android.content.Intent
import androidx.activity.compose.BackHandler
import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.material3.MaterialTheme
import androidx.compose.animation.togetherWith
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.DesktopWindows
import androidx.compose.material.icons.filled.ViewSidebar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.hypexui.lab.R
import com.hypexui.lab.ui.components.FeatureCard
import com.hypexui.compose.scaffold.HypexScaffold

@Composable
fun MultitaskingScreen(onBackClick: (() -> Unit)? = null) {
    var currentSubScreen by rememberSaveable { mutableStateOf<String?>(null) }

    if (currentSubScreen != null) {
        BackHandler { currentSubScreen = null }
    }

    AnimatedContent(
        targetState = currentSubScreen,
        transitionSpec = {
            if (targetState != null) {
                (slideInHorizontally { it } + fadeIn()).togetherWith(
                    slideOutHorizontally { -it / 3 } + fadeOut()
                )
            } else {
                (slideInHorizontally { -it / 3 } + fadeIn()).togetherWith(
                    slideOutHorizontally { it } + fadeOut()
                )
            }
        },
        label = "multitaskingSubScreen",
    ) { subScreen ->
        when (subScreen) {
            null -> {
                HypexScaffold(
                    title = stringResource(R.string.multitasking),
                    onBackClick = { onBackClick?.invoke() },
                ) { innerPadding ->
                    MultitaskingContent(
                        modifier = Modifier.padding(innerPadding),
                        onNavigateToPcMode = { currentSubScreen = "pcmode" },
                    )
                }
            }
            "pcmode" -> {
                PcModeScreen(onBackClick = { currentSubScreen = null })
            }
        }
    }
}

@Composable
private fun MultitaskingContent(
    modifier: Modifier = Modifier,
    onNavigateToPcMode: () -> Unit = {},
) {
    val context = LocalContext.current

    Column(
        modifier =
            modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(horizontal = 16.dp)
    ) {
        Spacer(modifier = Modifier.height(8.dp))

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            FeatureCard(
                title = stringResource(R.string.sidebar),
                subtitle = stringResource(R.string.sidebar_summary),
                icon = Icons.Default.ViewSidebar,
                onClick = {
                    val intent =
                        Intent().apply {
                            component =
                                ComponentName(
                                    "com.android.edge.bar",
                                    "com.android.edge.bar.settings.SettingsActivity",
                                )
                            flags = Intent.FLAG_ACTIVITY_NEW_TASK
                        }
                    context.startActivity(intent)
                },
                illustrationColor = MaterialTheme.colorScheme.primaryContainer,
                iconTint = MaterialTheme.colorScheme.onSurface,
                modifier = Modifier.weight(1f),
            )
            FeatureCard(
                title = stringResource(R.string.pc_mode_settings),
                subtitle = stringResource(R.string.pc_mode_summary),
                icon = Icons.Filled.DesktopWindows,
                onClick = onNavigateToPcMode,
                illustrationColor = MaterialTheme.colorScheme.tertiaryContainer,
                iconTint = MaterialTheme.colorScheme.onSurface,
                modifier = Modifier.weight(1f),
            )
        }

        Spacer(modifier = Modifier.height(32.dp))
    }
}
