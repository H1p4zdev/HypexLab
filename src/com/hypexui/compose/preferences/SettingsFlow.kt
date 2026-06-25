package com.hypexui.compose.preferences

import android.content.ContentResolver
import android.provider.Settings
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.State
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.platform.LocalContext

class SettingsFlow(private val contentResolver: ContentResolver, private val type: SettingsType) {
    fun getString(key: String, default: String = ""): String {
        return try {
            when (type) {
                SettingsType.SECURE -> Settings.Secure.getString(contentResolver, key) ?: default
                SettingsType.SYSTEM -> Settings.System.getString(contentResolver, key) ?: default
                SettingsType.GLOBAL -> Settings.Global.getString(contentResolver, key) ?: default
            }
        } catch (_: SecurityException) { default }
    }

    fun putString(key: String, value: String) {
        try {
            when (type) {
                SettingsType.SECURE -> Settings.Secure.putString(contentResolver, key, value)
                SettingsType.SYSTEM -> Settings.System.putString(contentResolver, key, value)
                SettingsType.GLOBAL -> Settings.Global.putString(contentResolver, key, value)
            }
        } catch (_: SecurityException) { }
    }

    fun getInt(key: String, default: Int = 0): Int {
        return try {
            when (type) {
                SettingsType.SECURE -> Settings.Secure.getInt(contentResolver, key, default)
                SettingsType.SYSTEM -> Settings.System.getInt(contentResolver, key, default)
                SettingsType.GLOBAL -> Settings.Global.getInt(contentResolver, key, default)
            }
        } catch (_: SecurityException) { default }
    }

    fun putInt(key: String, value: Int) {
        try {
            when (type) {
                SettingsType.SECURE -> Settings.Secure.putInt(contentResolver, key, value)
                SettingsType.SYSTEM -> Settings.System.putInt(contentResolver, key, value)
                SettingsType.GLOBAL -> Settings.Global.putInt(contentResolver, key, value)
            }
        } catch (_: SecurityException) { }
    }
}

@Composable
fun rememberSettingsFlow(type: SettingsType): SettingsFlow {
    val context = LocalContext.current
    return remember(type) { SettingsFlow(context.contentResolver, type) }
}

@Composable
fun rememberSettingBoolean(key: String, type: SettingsType, default: Boolean = false): State<Boolean> {
    val flow = rememberSettingsFlow(type)
    val state = remember { mutableStateOf(flow.getInt(key, if (default) 1 else 0) == 1) }
    DisposableEffect(key, type) {
        state.value = flow.getInt(key, if (default) 1 else 0) == 1
        onDispose { }
    }
    return state
}

@Composable
fun rememberSettingInt(key: String, type: SettingsType, default: Int = 0): State<Int> {
    val flow = rememberSettingsFlow(type)
    val state = remember { mutableStateOf(flow.getInt(key, default)) }
    DisposableEffect(key, type) {
        state.value = flow.getInt(key, default)
        onDispose { }
    }
    return state
}

@Composable
fun rememberSettingString(key: String, type: SettingsType, default: String = ""): State<String> {
    val flow = rememberSettingsFlow(type)
    val state = remember { mutableStateOf(flow.getString(key, default)) }
    DisposableEffect(key, type) {
        state.value = flow.getString(key, default)
        onDispose { }
    }
    return state
}

@Composable
fun rememberSecureSettingStringState(key: String, default: String = ""): State<String> {
    return rememberSettingString(key, SettingsType.SECURE, default)
}
