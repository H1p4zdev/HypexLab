# classes12.dex

.class Lcom/android/mmscustombg/WallpaperBlur$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WallpaperBlurView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mmscustombg/WallpaperBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mmscustombg/WallpaperBlur;


# direct methods
.method constructor <init>(Lcom/android/mmscustombg/WallpaperBlur;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/mmscustombg/WallpaperBlur$SettingsObserver;->this$0:Lcom/android/mmscustombg/WallpaperBlur;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observe()V
    .registers 4

    iget-object v0, p0, Lcom/android/mmscustombg/WallpaperBlur$SettingsObserver;->this$0:Lcom/android/mmscustombg/WallpaperBlur;

    invoke-static {v0}, Lcom/android/mmscustombg/WallpaperBlur;->access$000(Lcom/android/mmscustombg/WallpaperBlur;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blur_background"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/mmscustombg/WallpaperBlur$SettingsObserver;->this$0:Lcom/android/mmscustombg/WallpaperBlur;

    invoke-static {p0}, Lcom/android/mmscustombg/WallpaperBlur;->-$$Nest$mupdateBlurView(Lcom/android/mmscustombg/WallpaperBlur;)V

    return-void
.end method
