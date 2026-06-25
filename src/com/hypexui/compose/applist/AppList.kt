package com.hypexui.compose.applist

import android.content.Intent
import android.content.pm.PackageManager
import android.graphics.drawable.Drawable
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.platform.LocalContext

data class AppEntry(
    val packageName: String,
    val label: String,
    val icon: Drawable?,
)

enum class AppFilter { LAUNCHABLE_USER_ONLY, ALL, SYSTEM, USER }

@Composable
fun rememberAppList(filter: AppFilter = AppFilter.LAUNCHABLE_USER_ONLY): List<AppEntry> {
    val context = LocalContext.current
    return remember(filter) {
        val pm = context.packageManager
        val intent = Intent(Intent.ACTION_MAIN).apply {
            addCategory(Intent.CATEGORY_LAUNCHER)
        }
        val apps = when (filter) {
            AppFilter.ALL -> pm.getInstalledApplications(PackageManager.MATCH_ALL)
            else -> {
                val launchApps = pm.queryIntentActivities(intent, 0).map { it.activityInfo.packageName }.toSet()
                pm.getInstalledApplications(PackageManager.MATCH_ALL).filter { it.packageName in launchApps }
            }
        }.sortedBy { pm.getApplicationLabel(it).toString() }
        apps.map { app ->
            AppEntry(
                packageName = app.packageName,
                label = pm.getApplicationLabel(app).toString(),
                icon = app.loadIcon(pm),
            )
        }
    }
}

@Composable
fun rememberFilteredAppList(
    query: String,
    filter: AppFilter = AppFilter.LAUNCHABLE_USER_ONLY,
): List<AppEntry> {
    val apps = rememberAppList(filter)
    return remember(query, apps) {
        if (query.isBlank()) apps
        else apps.filter { it.label.contains(query, ignoreCase = true) || it.packageName.contains(query, ignoreCase = true) }
    }
}
