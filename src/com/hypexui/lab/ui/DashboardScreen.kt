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

package com.hypexui.lab.ui

import android.app.Activity
import android.app.WallpaperManager
import android.content.ComponentName
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.drawable.BitmapDrawable
import android.provider.Settings
import androidx.activity.compose.BackHandler
import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.Image
import androidx.compose.foundation.ScrollState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.*
import androidx.compose.ui.draw.*
import androidx.compose.ui.graphics.*
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hypexui.lab.R
import java.util.Calendar
import com.hypexui.lab.ui.components.*
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.hypexui.lab.ui.screens.*
import com.hypexui.lab.ui.screens.hypex.*
import com.hypexui.lab.ui.screens.routines.RoutinesScreen
import com.hypexui.lab.ui.theme.MaxContentWidth
import com.hypexui.compose.preferences.*
import com.hypexui.compose.scaffold.HypexScaffold

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DashboardScreen() {
    val windowSizeClass = rememberWindowSizeClass()
    val isExpandedLayout =
        windowSizeClass == WindowSizeClass.EXPANDED || windowSizeClass == WindowSizeClass.MEDIUM

    var appPickerTitleRes by rememberSaveable { mutableStateOf(R.string.select_apps) }
    var appPickerSelectedApps by rememberSaveable { mutableStateOf<Set<String>>(emptySet()) }
    var appPickerSettingKey by rememberSaveable { mutableStateOf(ESSENTIAL_APP_LIST_KEY) }
    var appPickerMaxSelection by rememberSaveable { mutableStateOf<Int?>(null) }
    var appPickerMaxSelectionMessageRes by rememberSaveable { mutableStateOf<Int?>(null) }
    var appPickerFilterTypeName by rememberSaveable {
        mutableStateOf(AppFilterType.LAUNCHABLE_USER_ONLY.name)
    }
    var appPickerExcludedPackages by rememberSaveable { mutableStateOf<Set<String>>(emptySet()) }
    var currentDetailScreen by rememberSaveable { mutableStateOf<String?>(null) }
    var detailBackStack by rememberSaveable { mutableStateOf<List<String>>(emptyList()) }
    var detailTransitionForward by rememberSaveable { mutableStateOf(true) }
    val dashboardScrollState = rememberScrollState()

    fun navigateToDetail(screen: String) {
        detailBackStack = emptyList()
        detailTransitionForward = true
        currentDetailScreen = screen
    }

    fun navigateToNestedDetail(screen: String) {
        currentDetailScreen?.let { detailBackStack = detailBackStack + it }
        detailTransitionForward = true
        currentDetailScreen = screen
    }

    fun navigateToAppPicker(
        titleRes: Int,
        selectedApps: Set<String>,
        settingKey: String,
        maxSelection: Int? = null,
        maxSelectionMessageRes: Int? = null,
        filterType: AppFilterType = AppFilterType.LAUNCHABLE_USER_ONLY,
        excludedPackages: Set<String> = emptySet(),
    ) {
        appPickerTitleRes = titleRes
        appPickerSelectedApps = selectedApps
        appPickerSettingKey = settingKey
        appPickerMaxSelection = maxSelection
        appPickerMaxSelectionMessageRes = maxSelectionMessageRes
        appPickerFilterTypeName = filterType.name
        appPickerExcludedPackages = excludedPackages
        navigateToNestedDetail("app_picker")
    }

    fun closeDetail() {
        detailTransitionForward = false
        if (detailBackStack.isNotEmpty()) {
            currentDetailScreen = detailBackStack.last()
            detailBackStack = detailBackStack.dropLast(1)
        } else {
            currentDetailScreen = null
        }
    }

    val appPickerCallback: (Set<String>) -> Unit = { selectedApps ->
        navigateToAppPicker(
            titleRes = R.string.select_essential_apps,
            selectedApps = selectedApps,
            settingKey = ESSENTIAL_APP_LIST_KEY,
        )
    }

    if (currentDetailScreen != null) {
        BackHandler { closeDetail() }
    }

    if (isExpandedLayout) {
        TwoPaneLayout(
            windowSizeClass = windowSizeClass,
            listPane = {
                DashboardContent(
                    scrollState = dashboardScrollState,
                    onNavigateToDetail = { navigateToDetail(it) },
                )
            },
            detailPane = {
                Box(
                    modifier =
                        Modifier.fillMaxSize()
                            .background(MaterialTheme.colorScheme.surfaceContainer)
                ) {
                    if (currentDetailScreen != null) {
                        DetailPaneContent(
                            screen = currentDetailScreen!!,
                            onClose = { closeDetail() },
                            onNavigateToDetail = { navigateToNestedDetail(it) },
                            onNavigateToAppPicker = appPickerCallback,
                            onNavigateToManagedAppPicker = ::navigateToAppPicker,
                            appPickerTitleRes = appPickerTitleRes,
                            appPickerSelectedApps = appPickerSelectedApps,
                            appPickerSettingKey = appPickerSettingKey,
                            appPickerMaxSelection = appPickerMaxSelection,
                            appPickerMaxSelectionMessageRes = appPickerMaxSelectionMessageRes,
                            appPickerFilterTypeName = appPickerFilterTypeName,
                            appPickerExcludedPackages = appPickerExcludedPackages,
                        )
                    } else {
                        EmptyDetailPane()
                    }
                }
            },
            showDetailPane = currentDetailScreen != null,
            modifier = Modifier.fillMaxSize(),
        )
    } else {
        AnimatedContent(
            targetState = currentDetailScreen,
            transitionSpec = {
                if (detailTransitionForward) {
                    (slideInHorizontally { it } + fadeIn()).togetherWith(
                        slideOutHorizontally { -it / 3 } + fadeOut()
                    )
                } else {
                    (slideInHorizontally { -it / 3 } + fadeIn()).togetherWith(
                        slideOutHorizontally { it } + fadeOut()
                    )
                }
            },
            label = "detailTransition",
        ) { detailScreen ->
            if (detailScreen != null) {
                DetailScreen(
                    screen = detailScreen,
                    onBackClick = { closeDetail() },
                    onNavigateToDetail = { navigateToNestedDetail(it) },
                    onNavigateToAppPicker = appPickerCallback,
                    onNavigateToManagedAppPicker = ::navigateToAppPicker,
                    appPickerTitleRes = appPickerTitleRes,
                    appPickerSelectedApps = appPickerSelectedApps,
                    appPickerSettingKey = appPickerSettingKey,
                    appPickerMaxSelection = appPickerMaxSelection,
                    appPickerMaxSelectionMessageRes = appPickerMaxSelectionMessageRes,
                    appPickerFilterTypeName = appPickerFilterTypeName,
                    appPickerExcludedPackages = appPickerExcludedPackages,
                )
            } else {
                DashboardContent(
                    scrollState = dashboardScrollState,
                    onNavigateToDetail = { navigateToDetail(it) },
                )
            }
        }
    }
}

@Composable
private fun DashboardContent(
    scrollState: ScrollState,
    onNavigateToDetail: (String) -> Unit,
) {
    val context = LocalContext.current
    val activity = context as? Activity

    HypexScaffold(
        title = stringResource(R.string.personalizations),
        onBackClick = { activity?.finish() },
    ) { innerPadding ->
        Box(
            modifier = Modifier.fillMaxSize().padding(innerPadding),
            contentAlignment = Alignment.TopCenter,
        ) {
            Column(
                modifier =
                    Modifier.widthIn(max = MaxContentWidth)
                        .fillMaxWidth()
                        .verticalScroll(scrollState)
                        .padding(horizontal = 24.dp),
            ) {
                val scaleIn = remember { Animatable(0.9f) }
                val alphaIn = remember { Animatable(0f) }
                val rowOffsets = remember { List(8) { Animatable(24f) } }
                LaunchedEffect(Unit) {
                    launch { scaleIn.animateTo(1f, tween(400, easing = FastOutSlowInEasing)) }
                    launch { alphaIn.animateTo(1f, tween(300, easing = FastOutSlowInEasing)) }
                    rowOffsets.forEachIndexed { i, anim ->
                        launch {
                            delay(i * 60L)
                            anim.animateTo(0f, spring(dampingRatio = 0.7f, stiffness = 300f))
                        }
                    }
                }
                val revealModifier = Modifier.graphicsLayer {
                    scaleX = scaleIn.value
                    scaleY = scaleIn.value
                    alpha = alphaIn.value
                }
                fun rowAnim(index: Int) = Modifier.graphicsLayer {
                    translationY = rowOffsets.getOrNull(index)?.value ?: 0f
                    alpha = if (alphaIn.value > 0.5f) 1f else alphaIn.value * 2f
                }

                HypexHeader(
                    subtitle = "Personalize your device",
                    modifier = Modifier.then(rowAnim(0)),
                )

                Spacer(modifier = Modifier.height(12.dp))

                GreetingCard(modifier = Modifier.fillMaxWidth().then(rowAnim(1)))

                Spacer(modifier = Modifier.height(16.dp))

                VisualCard(
                    title = stringResource(R.string.themes),
                    onClick = {
                        val intent =
                            Intent().apply {
                                component =
                                    ComponentName(
                                        "com.android.thememanager",
                                        "com.android.thememanager.activity.ThemeTabActivity",
                                    )
                                flags = Intent.FLAG_ACTIVITY_NEW_TASK
                            }
                        runCatching { context.startActivity(intent) }
                    },
                    modifier = Modifier.fillMaxWidth().height(140.dp).then(rowAnim(2)),
                ) {
                    ThemesIllustration()
                }

                Spacer(modifier = Modifier.height(12.dp))

                DashboardCard(
                    title = stringResource(R.string.essentials),
                    summary = "Apps, notifications, gaming and spoofing",
                    icon = Icons.Filled.Workspaces,
                    accentColor = Color(0xFF1678FF),
                    onClick = { onNavigateToDetail("essentials") },
                    modifier = Modifier.fillMaxWidth().height(172.dp).then(rowAnim(3)),
                    shapeIndex = 0,
                )

                Spacer(modifier = Modifier.height(12.dp))

                Row(
                    modifier = Modifier.fillMaxWidth().then(rowAnim(4)),
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    DashboardCard(
                        title = stringResource(R.string.routines),
                        summary = "Automate tasks",
                        icon = Icons.Filled.AutoMode,
                        accentColor = Color(0xFF7C4DFF),
                        onClick = { onNavigateToDetail("routines") },
                        modifier = Modifier.weight(1f).aspectRatio(1f),
                        shapeIndex = 1,
                    )
                    DashboardCard(
                        title = stringResource(R.string.performance),
                        summary = "CPU and battery",
                        icon = Icons.Filled.Bolt,
                        accentColor = Color(0xFFFF3D00),
                        onClick = { onNavigateToDetail("performance") },
                        modifier = Modifier.weight(1f).aspectRatio(1f),
                        shapeIndex = 2,
                    )
                }

                Spacer(modifier = Modifier.height(12.dp))

                DashboardCard(
                    title = "Customize",
                    summary = "Status bar, control centre, icons and style",
                    icon = Icons.Filled.Palette,
                    accentColor = Color(0xFF00BCD4),
                    onClick = { onNavigateToDetail("customize") },
                    modifier = Modifier.fillMaxWidth().height(172.dp).then(rowAnim(5)),
                    shapeIndex = 3,
                )

                Spacer(modifier = Modifier.height(12.dp))

                Row(
                    modifier = Modifier.fillMaxWidth().then(rowAnim(6)),
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    DashboardCard(
                        title = stringResource(R.string.multitasking),
                        summary = "Sidebar and PC mode",
                        icon = Icons.Filled.Splitscreen,
                        accentColor = Color(0xFF9C27B0),
                        onClick = { onNavigateToDetail("multitasking") },
                        modifier = Modifier.weight(1f).aspectRatio(1f),
                        shapeIndex = 4,
                    )
                    DashboardCard(
                        title = "Extra Mods",
                        summary = "Useful tweaks",
                        icon = Icons.Filled.Extension,
                        accentColor = Color(0xFFFF9800),
                        onClick = { onNavigateToDetail("hypex_extra") },
                        modifier = Modifier.weight(1f).aspectRatio(1f),
                        shapeIndex = 5,
                    )
                }

                Spacer(modifier = Modifier.height(12.dp))

                Row(
                    modifier = Modifier.fillMaxWidth().then(rowAnim(7)),
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    DashboardCard(
                        title = "Shortcuts",
                        summary = "Quick system settings",
                        icon = Icons.Filled.Link,
                        accentColor = Color(0xFF4CAF50),
                        onClick = { onNavigateToDetail("hypex_hidden") },
                        modifier = Modifier.weight(1f).aspectRatio(1f),
                        shapeIndex = 6,
                    )
                    DashboardCard(
                        title = "Credits",
                        summary = "About and support",
                        icon = Icons.Filled.Info,
                        accentColor = Color(0xFF607D8B),
                        onClick = { onNavigateToDetail("hypex_credit") },
                        modifier = Modifier.weight(1f).aspectRatio(1f),
                        shapeIndex = 7,
                    )
                }

                Spacer(modifier = Modifier.height(32.dp))

                HypexFooter()

                Spacer(modifier = Modifier.windowInsetsPadding(WindowInsets.navigationBars))
            }
        }
    }
}

@Composable
private fun DetailScreen(
    screen: String,
    onBackClick: () -> Unit,
    onNavigateToDetail: (String) -> Unit = {},
    onNavigateToAppPicker: (Set<String>) -> Unit = {},
    onNavigateToManagedAppPicker: BackgroundAppPickerNavigator = { _, _, _, _, _, _, _ -> },
    appPickerTitleRes: Int = R.string.select_apps,
    appPickerSelectedApps: Set<String> = emptySet(),
    appPickerSettingKey: String = ESSENTIAL_APP_LIST_KEY,
    appPickerMaxSelection: Int? = null,
    appPickerMaxSelectionMessageRes: Int? = null,
    appPickerFilterTypeName: String = AppFilterType.LAUNCHABLE_USER_ONLY.name,
    appPickerExcludedPackages: Set<String> = emptySet(),
) {
    when (screen) {
        "lockscreen" -> ComingSoonScreen(onBackClick = onBackClick)
        "sound" -> ComingSoonScreen(onBackClick = onBackClick)
        "gestures" -> ComingSoonScreen(onBackClick = onBackClick)
        "customize" -> UICustomizeScreen(onBackClick = onBackClick)
        "trickystore" -> TrickyStoreScreen(onBackClick = onBackClick)
        "playintegrityfix" -> PlayIntegrityFixScreen(onBackClick = onBackClick)
        "gamespoofing" -> GameSpoofingScreen(onBackClick = onBackClick)
        "pcmode" -> ComingSoonScreen(onBackClick = onBackClick)
        "routines" -> RoutinesScreen(onBackClick = onBackClick)
        "performance" ->
            PerformanceScreen(
                onBackClick = onBackClick,
                onNavigateToDetail = onNavigateToDetail,
            )
        "background_manager" ->
            BackgroundManagerScreen(
                onBackClick = onBackClick,
                onNavigateToAppPicker = onNavigateToManagedAppPicker,
            )
        "app_picker" ->
            ManagedAppPickerScreen(
                titleRes = appPickerTitleRes,
                selectedApps = appPickerSelectedApps,
                settingKey = appPickerSettingKey,
                maxSelection = appPickerMaxSelection,
                maxSelectionMessageRes = appPickerMaxSelectionMessageRes,
                filterTypeName = appPickerFilterTypeName,
                excludedPackages = appPickerExcludedPackages,
                onBackClick = onBackClick,
            )
        "essentials" ->
            EssentialsScreen(
                onBackClick = onBackClick,
                onNavigateToAppPicker = onNavigateToAppPicker,
            )
        "multitasking" -> MultitaskingScreen(onBackClick = onBackClick)
        "hypex_extra" -> ExtraModsScreen(onBackClick = onBackClick)
        "hypex_hidden" -> SystemShortcutsScreen(onBackClick = onBackClick)
        "hypex_credit" -> CreditsScreen(onBackClick = onBackClick)
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun DetailPaneContent(
    screen: String,
    onClose: () -> Unit,
    onNavigateToDetail: (String) -> Unit = {},
    onNavigateToAppPicker: (Set<String>) -> Unit = {},
    onNavigateToManagedAppPicker: BackgroundAppPickerNavigator = { _, _, _, _, _, _, _ -> },
    appPickerTitleRes: Int = R.string.select_apps,
    appPickerSelectedApps: Set<String> = emptySet(),
    appPickerSettingKey: String = ESSENTIAL_APP_LIST_KEY,
    appPickerMaxSelection: Int? = null,
    appPickerMaxSelectionMessageRes: Int? = null,
    appPickerFilterTypeName: String = AppFilterType.LAUNCHABLE_USER_ONLY.name,
    appPickerExcludedPackages: Set<String> = emptySet(),
) {
    when (screen) {
        "lockscreen" -> ComingSoonScreen(onBackClick = onClose)
        "sound" -> ComingSoonScreen(onBackClick = onClose)
        "gestures" -> ComingSoonScreen(onBackClick = onClose)
        "customize" -> UICustomizeScreen(onBackClick = onClose)
        "trickystore" -> TrickyStoreScreen(onBackClick = onClose)
        "playintegrityfix" -> PlayIntegrityFixScreen(onBackClick = onClose)
        "gamespoofing" -> GameSpoofingScreen(onBackClick = onClose)
        "pcmode" -> ComingSoonScreen(onBackClick = onClose)
        "routines" -> RoutinesScreen(onBackClick = onClose)
        "performance" ->
            PerformanceScreen(
                onBackClick = onClose,
                onNavigateToDetail = onNavigateToDetail,
            )
        "background_manager" ->
            BackgroundManagerScreen(
                onBackClick = onClose,
                onNavigateToAppPicker = onNavigateToManagedAppPicker,
            )
        "app_picker" ->
            ManagedAppPickerScreen(
                titleRes = appPickerTitleRes,
                selectedApps = appPickerSelectedApps,
                settingKey = appPickerSettingKey,
                maxSelection = appPickerMaxSelection,
                maxSelectionMessageRes = appPickerMaxSelectionMessageRes,
                filterTypeName = appPickerFilterTypeName,
                excludedPackages = appPickerExcludedPackages,
                onBackClick = onClose,
            )
        "essentials" ->
            EssentialsScreen(
                onBackClick = onClose,
                onNavigateToAppPicker = onNavigateToAppPicker,
            )
        "multitasking" -> MultitaskingScreen(onBackClick = onClose)
        "hypex_extra" -> ExtraModsScreen(onBackClick = onClose)
        "hypex_hidden" -> SystemShortcutsScreen(onBackClick = onClose)
        "hypex_credit" -> CreditsScreen(onBackClick = onClose)
    }
}

@Composable
private fun ManagedAppPickerScreen(
    titleRes: Int,
    selectedApps: Set<String>,
    settingKey: String,
    maxSelection: Int?,
    maxSelectionMessageRes: Int?,
    filterTypeName: String,
    excludedPackages: Set<String>,
    onBackClick: () -> Unit,
) {
    val context = LocalContext.current
    val maxSelectionMessage =
        maxSelectionMessageRes?.let { resId ->
            maxSelection?.let { stringResource(resId, it) } ?: stringResource(resId)
        }

    val filterType = runCatching { AppFilterType.valueOf(filterTypeName) }
        .getOrDefault(AppFilterType.LAUNCHABLE_USER_ONLY)

    AppPickerScreen(
        title = stringResource(titleRes),
        selectedApps = selectedApps,
        onBackClick = onBackClick,
        onAppsSelected = { apps ->
            Settings.Secure.putString(context.contentResolver, settingKey, apps.joinToString(","))
            onBackClick()
        },
        maxSelection = maxSelection,
        maxSelectionMessage = maxSelectionMessage,
        filterType = filterType,
        excludedPackages = excludedPackages,
    )
}

@Composable
private fun WallpaperCard(
    title: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    val density = LocalDensity.current
    val interactionSource = remember { MutableInteractionSource() }
    val isPressed by interactionSource.collectIsPressedAsState()
    val scale by
        animateFloatAsState(
            targetValue = if (isPressed) 0.97f else 1f,
            animationSpec = spring(dampingRatio = 0.8f, stiffness = 400f),
            label = "scale",
        )

    var wallpaperImage by remember { mutableStateOf<ImageBitmap?>(null) }
    LaunchedEffect(Unit) {
        val wallpaperManager = WallpaperManager.getInstance(context)
        val drawable = wallpaperManager.drawable
        val bitmap = (drawable as? BitmapDrawable)?.bitmap
        if (bitmap != null) {
            val maxW = with(density) { (400.dp.toPx()).toInt() }
            val maxH = with(density) { (600.dp.toPx()).toInt() }
            wallpaperImage =
                withContext(Dispatchers.Default) {
                    val s =
                        minOf(
                            maxW.toFloat() / bitmap.width,
                            maxH.toFloat() / bitmap.height,
                            1f,
                        )
                    val sw = (bitmap.width * s).toInt().coerceAtLeast(1)
                    val sh = (bitmap.height * s).toInt().coerceAtLeast(1)
                    Bitmap.createScaledBitmap(bitmap, sw, sh, true).asImageBitmap()
                }
        }
    }

    val fallbackColors =
        listOf(
            MaterialTheme.colorScheme.primaryContainer,
            MaterialTheme.colorScheme.tertiaryContainer,
        )

    Box(
        modifier =
            modifier
                .graphicsLayer {
                    scaleX = scale
                    scaleY = scale
                }
                .clip(RoundedCornerShape(28.dp))
                .clickable(
                    interactionSource = interactionSource,
                    indication = null,
                    onClick = onClick,
                )
    ) {
        val img = wallpaperImage
        if (img != null) {
            Image(
                bitmap = img,
                contentDescription = null,
                modifier = Modifier.fillMaxSize(),
                contentScale = ContentScale.Crop,
            )
        } else {
            Box(
                modifier =
                    Modifier.fillMaxSize()
                        .background(Brush.linearGradient(fallbackColors))
            )
        }

        Box(
            modifier =
                Modifier.fillMaxWidth()
                    .height(72.dp)
                    .align(Alignment.BottomCenter)
                    .background(
                        Brush.verticalGradient(
                            listOf(Color.Transparent, Color.Black.copy(alpha = 0.6f))
                        )
                    )
        )

        Text(
            text = title,
            style = MaterialTheme.typography.titleSmall,
            fontWeight = FontWeight.SemiBold,
            color = Color.White,
            modifier = Modifier.align(Alignment.BottomStart).padding(18.dp),
        )
    }
}

@Composable
private fun ThemesIllustration() {
    val colors = MaterialTheme.colorScheme
    val infiniteTransition = rememberInfiniteTransition(label = "themeGlow")
    val glowAlpha by infiniteTransition.animateFloat(
        initialValue = 0.6f, targetValue = 1f,
        animationSpec = infiniteRepeatable(tween(2000, easing = FastOutSlowInEasing), RepeatMode.Reverse),
        label = "glowAlpha",
    )
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Box(
            modifier = Modifier
                .size(64.dp)
                .clip(CircleShape)
                .background(colors.primary.copy(alpha = glowAlpha * 0.3f)),
        )
        Box(
            modifier = Modifier
                .size(48.dp)
                .offset(x = (-16).dp, y = (-8).dp)
                .clip(CircleShape)
                .background(colors.primary.copy(alpha = 0.85f)),
            contentAlignment = Alignment.Center,
        ) {
            Icon(Icons.Filled.Palette, contentDescription = null, tint = Color.White, modifier = Modifier.size(24.dp))
        }
        Box(
            modifier = Modifier
                .size(40.dp)
                .offset(x = 16.dp, y = 4.dp)
                .clip(CircleShape)
                .background(colors.tertiary.copy(alpha = 0.8f)),
            contentAlignment = Alignment.Center,
        ) {
            Icon(Icons.Filled.Star, contentDescription = null, tint = Color.White, modifier = Modifier.size(20.dp))
        }
        Box(
            modifier = Modifier
                .size(36.dp)
                .offset(y = 20.dp)
                .clip(CircleShape)
                .background(colors.secondary.copy(alpha = 0.75f)),
            contentAlignment = Alignment.Center,
        ) {
            Icon(Icons.Filled.Brush, contentDescription = null, tint = Color.White, modifier = Modifier.size(18.dp))
        }
    }
}

@Composable
private fun UIFeaturesIllustration() {
    val colors = MaterialTheme.colorScheme
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(
            verticalArrangement = Arrangement.spacedBy(4.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                Box(
                    modifier = Modifier
                        .size(28.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(colors.primary),
                )
                Box(
                    modifier = Modifier
                        .size(28.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(colors.primaryContainer),
                )
            }
            Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                Box(
                    modifier = Modifier
                        .size(28.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(colors.tertiaryContainer),
                )
                Box(
                    modifier = Modifier
                        .size(28.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(colors.secondaryContainer),
                )
            }
        }
    }
}

@Composable
private fun SoundIllustration() {
    val colors = MaterialTheme.colorScheme
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Row(
            horizontalArrangement = Arrangement.spacedBy(4.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            val heights = listOf(20f, 32f, 44f, 56f, 44f, 32f, 20f)
            heights.forEach { h ->
                Box(
                    modifier = Modifier
                        .width(8.dp)
                        .height(h.dp)
                        .clip(RoundedCornerShape(4.dp))
                        .background(colors.tertiary),
                )
            }
        }
    }
}

@Composable
private fun GesturesIllustration() {
    val colors = MaterialTheme.colorScheme
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Box(
            modifier = Modifier
                .size(60.dp)
                .clip(CircleShape)
                .background(colors.primaryContainer),
            contentAlignment = Alignment.Center,
        ) {
            Icon(
                imageVector = Icons.Filled.Gesture,
                contentDescription = null,
                tint = colors.onPrimaryContainer,
                modifier = Modifier.size(32.dp),
            )
        }
    }
}

@Composable
fun ComingSoonScreen(onBackClick: () -> Unit) {
    HypexScaffold(
        title = stringResource(R.string.coming_soon),
        onBackClick = { onBackClick() },
    ) { innerPadding ->
        Box(
            modifier = Modifier.fillMaxSize().padding(innerPadding),
            contentAlignment = Alignment.Center,
        ) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Icon(
                    imageVector = Icons.Filled.Construction,
                    contentDescription = null,
                    modifier = Modifier.size(72.dp),
                    tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.4f),
                )
                Spacer(modifier = Modifier.height(16.dp))
                Text(
                    text = stringResource(R.string.coming_soon),
                    style = MaterialTheme.typography.headlineSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = stringResource(R.string.coming_soon_description),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f),
                    textAlign = TextAlign.Center,
                    modifier = Modifier.padding(horizontal = 32.dp),
                )
            }
        }
    }
}

@Composable
private fun GreetingCard(modifier: Modifier = Modifier) {
    val colors = MaterialTheme.colorScheme
    val calendar = remember { Calendar.getInstance() }
    val hour = calendar.get(Calendar.HOUR_OF_DAY)
    val greeting = when {
        hour < 12 -> "Good Morning"
        hour < 17 -> "Good Afternoon"
        else -> "Good Evening"
    }
    val icon = when {
        hour < 12 -> Icons.Filled.WbSunny
        hour < 17 -> Icons.Filled.LightMode
        else -> Icons.Filled.DarkMode
    }

    Surface(
        modifier = modifier,
        shape = RoundedCornerShape(16.dp),
        color = colors.primaryContainer,
        tonalElevation = 0.dp,
        shadowElevation = 0.dp,
    ) {
        Row(
            modifier = Modifier.fillMaxWidth().padding(horizontal = 20.dp, vertical = 18.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = greeting,
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold,
                    color = colors.onPrimaryContainer,
                )
                Spacer(modifier = Modifier.height(2.dp))
                Text(
                    text = "Welcome to HypexLab",
                    style = MaterialTheme.typography.bodyMedium,
                    color = colors.onPrimaryContainer.copy(alpha = 0.7f),
                )
            }
            Box(
                modifier = Modifier
                    .size(48.dp)
                    .clip(CircleShape)
                    .background(colors.primary),
                contentAlignment = Alignment.Center,
            ) {
                Icon(
                    imageVector = icon,
                    contentDescription = null,
                    tint = colors.onPrimary,
                    modifier = Modifier.size(28.dp),
                )
            }
        }
    }
}

@Composable
private fun EmptyDetailPane() {
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
        ) {
            Icon(
                imageVector = Icons.Default.TouchApp,
                contentDescription = null,
                modifier = Modifier.size(64.dp),
                tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.4f),
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = "Select an item",
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f),
            )
        }
    }
}
