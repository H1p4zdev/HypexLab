.class public Lcom/android/mmscustombg/WallpaperBlur;
.super Landroid/widget/ImageView;
.source "WallpaperBlurView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mmscustombg/WallpaperBlur$SettingsObserver;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$mupdateBlurView(Lcom/android/mmscustombg/WallpaperBlur;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/mmscustombg/WallpaperBlur;->updateBlurView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/mmscustombg/WallpaperBlur$SettingsObserver;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/mmscustombg/WallpaperBlur$SettingsObserver;-><init>(Lcom/android/mmscustombg/WallpaperBlur;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/android/mmscustombg/WallpaperBlur$SettingsObserver;->observe()V

    invoke-direct {p0}, Lcom/android/mmscustombg/WallpaperBlur;->updateBlurView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mmscustombg/WallpaperBlur;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private updateBlurView()V
    .registers 4

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blur_background"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    if-eqz v0, :cond_20

    int-to-float v0, v0

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {v0, v0, v2}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_20
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
