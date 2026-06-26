package com.hypexui.lab.ui.screens.hypex

import android.app.WallpaperManager
import android.graphics.Bitmap
import android.graphics.drawable.BitmapDrawable
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.blur
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.ColorFilter
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hypexui.lab.R
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

@Composable
fun HypexHeader(
    subtitle: String? = null,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    var wallpaperBitmap by remember { mutableStateOf<Bitmap?>(null) }

    LaunchedEffect(Unit) {
        wallpaperBitmap = withContext(Dispatchers.IO) {
            try {
                val wm = context.getSystemService(WallpaperManager::class.java)
                val drawable = wm.drawable
                if (drawable is BitmapDrawable) drawable.bitmap else null
            } catch (_: Exception) { null }
        }
    }

    Column(modifier = modifier.fillMaxWidth()) {
        Card(
            shape = RoundedCornerShape(topStart = 20.dp, topEnd = 20.dp),
            modifier = Modifier
                .fillMaxWidth()
                .height(160.dp),
            colors = CardDefaults.cardColors(containerColor = Color.Transparent),
            elevation = CardDefaults.cardElevation(0.dp),
        ) {
            Box(modifier = Modifier.fillMaxSize()) {
                if (wallpaperBitmap != null) {
                    Image(
                        bitmap = wallpaperBitmap!!.asImageBitmap(),
                        contentDescription = null,
                        contentScale = ContentScale.Crop,
                        modifier = Modifier.fillMaxSize().blur(12.dp),
                    )
                } else {
                    Box(modifier = Modifier.fillMaxSize().background(Color(0xFF1678FF)))
                }

                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(Color.Black.copy(alpha = 0.44f))
                )

                Row(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(horizontal = 20.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Column(modifier = Modifier.weight(1f)) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Box(
                                modifier = Modifier
                                    .size(56.dp)
                                    .clip(CircleShape)
                                    .background(Color.White.copy(alpha = 0.15f)),
                                contentAlignment = Alignment.Center,
                            ) {
                                Image(
                                    painter = painterResource(R.drawable.provision_os_logo),
                                    contentDescription = null,
                                    modifier = Modifier.size(44.dp),
                                    colorFilter = ColorFilter.tint(Color.White),
                                )
                            }
                            Spacer(modifier = Modifier.width(12.dp))
                            Text(
                                text = "HypexUI",
                                style = MaterialTheme.typography.displayLarge.copy(fontSize = 42.sp),
                                fontWeight = FontWeight.Bold,
                                color = Color.White,
                            )
                        }
                        Text(
                            text = android.os.Build.VERSION.INCREMENTAL,
                            fontFamily = FontFamily.Default,
                            fontSize = 12.sp,
                            fontWeight = FontWeight.Medium,
                            color = Color.White,
                            modifier = Modifier
                                .background(
                                    Color(0x711F1F1F),
                                    RoundedCornerShape(8.dp),
                                )
                                .padding(horizontal = 10.dp, vertical = 3.dp),
                        )
                    }

                    Spacer(modifier = Modifier.width(12.dp))

                    Card(
                        shape = RoundedCornerShape(14.dp),
                        modifier = Modifier.size(80.dp),
                        border = BorderStroke(3.dp, MaterialTheme.colorScheme.primary),
                        colors = CardDefaults.cardColors(containerColor = Color.Transparent),
                        elevation = CardDefaults.cardElevation(0.dp),
                    ) {
                        Box(modifier = Modifier.fillMaxSize()) {
                            if (wallpaperBitmap != null) {
                                Image(
                                    bitmap = wallpaperBitmap!!.asImageBitmap(),
                                    contentDescription = null,
                                    contentScale = ContentScale.Crop,
                                    modifier = Modifier.fillMaxSize(),
                                )
                            } else {
                                Box(
                                    modifier = Modifier
                                        .fillMaxSize()
                                        .background(
                                            MaterialTheme.colorScheme.primary.copy(alpha = 0.3f)
                                        )
                                )
                            }
                        }
                    }
                }
            }
        }

        if (subtitle != null) {
            Surface(
                modifier = Modifier
                    .fillMaxWidth(),
                shape = RoundedCornerShape(
                    topStart = 0.dp,
                    topEnd = 0.dp,
                    bottomStart = 20.dp,
                    bottomEnd = 20.dp,
                ),
                color = Color.White,
                tonalElevation = 0.dp,
                shadowElevation = 0.dp,
            ) {
                Text(
                    text = subtitle,
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(
                            start = 24.dp,
                            end = 24.dp,
                            top = 8.dp,
                            bottom = 14.dp,
                        ),
                    textAlign = TextAlign.Center,
                    style = MaterialTheme.typography.bodyMedium,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }
    }
}
