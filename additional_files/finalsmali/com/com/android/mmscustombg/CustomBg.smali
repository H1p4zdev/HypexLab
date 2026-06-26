.class public Lcom/android/mmscustombg/CustomBg;
.super Landroid/widget/ImageView;
.source "CustomBg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mmscustombg/CustomBg$CustomViewObserver;
    }
.end annotation


# instance fields
.field private COLOR_PRIMARY_KEY:Ljava/lang/String;

.field private COLOR_SECONDARY_KEY:Ljava/lang/String;

.field private CROP_KEY:Ljava/lang/String;

.field private CUSTOM_BG_TYPE:Ljava/lang/String;

.field private GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

.field private MASTER_SWITCH_KEY:Ljava/lang/String;

.field private OPACITY_KEY:Ljava/lang/String;

.field private URI_KEY:Ljava/lang/String;

.field private mColorPrimary:I

.field private mColorSecondary:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCustomBgType:I

.field private mCustomViewObserver:Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

.field private mHandler:Landroid/os/Handler;

.field private mImageUri:Landroid/net/Uri;

.field private mIsEnabled:Z

.field private mOpacity:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "mms_bg"

    iput-object v0, p0, Lcom/android/mmscustombg/CustomBg;->URI_KEY:Ljava/lang/String;

    const-string/jumbo v0, "mms_opacity"

    iput-object v0, p0, Lcom/android/mmscustombg/CustomBg;->OPACITY_KEY:Ljava/lang/String;

    const-string/jumbo v0, "mms_crop_type"

    iput-object v0, p0, Lcom/android/mmscustombg/CustomBg;->CROP_KEY:Ljava/lang/String;

    const-string/jumbo v0, "mms_bg_primary_color"

    iput-object v0, p0, Lcom/android/mmscustombg/CustomBg;->COLOR_PRIMARY_KEY:Ljava/lang/String;

    const-string/jumbo v0, "mms_second_gradient_color"

    iput-object v0, p0, Lcom/android/mmscustombg/CustomBg;->COLOR_SECONDARY_KEY:Ljava/lang/String;

    const-string/jumbo v0, "mms_bg_gradient_orientation"

    iput-object v0, p0, Lcom/android/mmscustombg/CustomBg;->GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

    const-string v0, "enable_mms_custom_bg"

    iput-object v0, p0, Lcom/android/mmscustombg/CustomBg;->MASTER_SWITCH_KEY:Ljava/lang/String;

    const-string/jumbo v0, "mms_custom_bg_type"

    iput-object v0, p0, Lcom/android/mmscustombg/CustomBg;->CUSTOM_BG_TYPE:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/mmscustombg/CustomBg$CustomViewObserver;-><init>(Lcom/android/mmscustombg/CustomBg;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mCustomViewObserver:Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

    iput-object p1, p0, Lcom/android/mmscustombg/CustomBg;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/mmscustombg/CustomBg;->initValues()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mmscustombg/CustomBg;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/mmscustombg/CustomBg;->initValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mmscustombg/CustomBg;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/mmscustombg/CustomBg;->initView()V

    return-void
.end method

.method private getMyDrawable()Landroid/graphics/drawable/Drawable;
    .registers 10

    const/4 v8, 0x0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-boolean v5, p0, Lcom/android/mmscustombg/CustomBg;->mIsEnabled:Z

    if-eqz v5, :cond_f

    iget v5, p0, Lcom/android/mmscustombg/CustomBg;->mCustomBgType:I

    packed-switch v5, :pswitch_data_58

    :cond_f
    :goto_f
    return-object v1

    :pswitch_10  #0x0
    iget-object v5, p0, Lcom/android/mmscustombg/CustomBg;->mImageUri:Landroid/net/Uri;

    if-eqz v5, :cond_f

    :try_start_14
    iget-object v5, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/mmscustombg/CustomBg;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/mmscustombg/CustomBg;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_2b} :catch_2d

    move-object v1, v2

    goto :goto_f

    :catch_2d
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_f

    :pswitch_32  #0x1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/android/mmscustombg/CustomBg;->mColorPrimary:I

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_f

    :pswitch_3a  #0x2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/android/mmscustombg/CustomBg;->getGradientOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    iget v7, p0, Lcom/android/mmscustombg/CustomBg;->mColorPrimary:I

    aput v7, v6, v8

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/mmscustombg/CustomBg;->mColorSecondary:I

    aput v8, v6, v7

    invoke-direct {v1, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_f

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_32  #00000001
        :pswitch_3a  #00000002
    .end packed-switch
.end method

.method private getMyScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 5

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->CROP_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_18

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_e
    return-object v1

    :pswitch_f  #0x0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_e

    :pswitch_12  #0x1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_e

    :pswitch_15  #0x2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_e

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_12  #00000001
        :pswitch_15  #00000002
    .end packed-switch
.end method

.method private initValues()V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/mmscustombg/CustomBg;->URI_KEY:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_18
    iput-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mImageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/mmscustombg/CustomBg;->MASTER_SWITCH_KEY:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5e

    move v1, v2

    :goto_25
    iput-boolean v1, p0, Lcom/android/mmscustombg/CustomBg;->mIsEnabled:Z

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->OPACITY_KEY:Ljava/lang/String;

    const/16 v4, 0xff

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mmscustombg/CustomBg;->mOpacity:I

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->COLOR_PRIMARY_KEY:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mmscustombg/CustomBg;->mColorPrimary:I

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->COLOR_SECONDARY_KEY:Ljava/lang/String;

    const v4, -0xff0001

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mmscustombg/CustomBg;->mColorSecondary:I

    invoke-direct {p0}, Lcom/android/mmscustombg/CustomBg;->getMyScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mScaleType:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->CUSTOM_BG_TYPE:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mmscustombg/CustomBg;->mCustomBgType:I

    return-void

    :cond_5c
    const/4 v1, 0x0

    goto :goto_18

    :cond_5e
    move v1, v3

    goto :goto_25
.end method

.method private initView()V
    .registers 3

    invoke-direct {p0}, Lcom/android/mmscustombg/CustomBg;->getMyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/mmscustombg/CustomBg;->mOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v0}, Lcom/android/mmscustombg/CustomBg;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/android/mmscustombg/CustomBg;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public getGradientOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .registers 5

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_e
    return-object v1

    :pswitch_f  #0x0
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_e

    :pswitch_12  #0x1
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_e

    :pswitch_15  #0x2
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_e

    :pswitch_18  #0x3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_e

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_12  #00000001
        :pswitch_15  #00000002
        :pswitch_18  #00000003
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->MASTER_SWITCH_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->mCustomViewObserver:Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->CROP_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->mCustomViewObserver:Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->OPACITY_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->mCustomViewObserver:Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->COLOR_PRIMARY_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->mCustomViewObserver:Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->mCustomViewObserver:Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->COLOR_SECONDARY_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->mCustomViewObserver:Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->URI_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->mCustomViewObserver:Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->CUSTOM_BG_TYPE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mmscustombg/CustomBg;->mCustomViewObserver:Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/mmscustombg/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mmscustombg/CustomBg;->mCustomViewObserver:Lcom/android/mmscustombg/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/mmscustombg/CustomBg;->initView()V

    return-void
.end method
