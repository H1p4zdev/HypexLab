# classes12.dex

.class public Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader;
.super Landroid/widget/ImageView;
.source "WallpaperViewBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader$0;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader$0;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader$0;-><init>(Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader$0;->CharlieBlurKey()V

    .line 19
    invoke-direct {p0}, Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader;->updateBlur()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader;)V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader;->updateBlur()V

    return-void
.end method

.method private updateBlur()V
    .registers 4

    .line 23
    invoke-virtual {p0}, Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blur_radius_header"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 24
    invoke-virtual {p0}, Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    if-eqz v0, :cond_24

    int-to-float v0, v0

    .line 27
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {v0, v0, v2}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 29
    :cond_24
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/charlie/extra/about/WallpaperViewBlurheader;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
