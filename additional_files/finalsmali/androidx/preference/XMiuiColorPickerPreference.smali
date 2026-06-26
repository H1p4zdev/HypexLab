# newclasses.dex

.class public Landroidx/preference/XMiuiColorPickerPreference;
.super Landroidx/preference/Preference;
.source "XMiuiColorPickerPreference.java"

# interfaces
.implements Landroidx/preference/MiuiColorPicker/ColorPickerDialog$OnColorChangedListener;


# static fields
.field private static mDefValue:I


# instance fields
.field private Helper:Landroidx/preference/XMiuiPreferenceHelper;

.field private mAlphaEnabled:Z

.field private mDensity:F

.field private mHexEnabled:Z

.field private mPresetEnabled:Z

.field private mValue:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, -0x1000000

    sput v0, Landroidx/preference/XMiuiColorPickerPreference;->mDefValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/preference/XMiuiColorPickerPreference;->mDensity:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiColorPickerPreference;->setPersistent(Z)V

    invoke-direct {p0, p1, p2}, Landroidx/preference/XMiuiColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private convertToARGB(I)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_53

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_6c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_85

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private convertToColorInt(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1b
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private convertToRGB(I)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_4b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .registers 15

    const/4 v9, 0x0

    const/high16 v13, 0x41c80000  # 25.0f

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroidx/preference/XMiuiColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v10, 0x30

    const/16 v11, 0x20

    if-ne v10, v11, :cond_7b

    move v4, v8

    :goto_19
    iget v10, p0, Landroidx/preference/XMiuiColorPickerPreference;->mDensity:F

    const/high16 v11, 0x41f80000  # 31.0f

    mul-float/2addr v10, v11

    float-to-int v3, v10

    new-instance v2, Landroidx/preference/MiuiColorPicker/ColorPickerAlphaPatternDrawable;

    const/high16 v10, 0x40a00000  # 5.0f

    iget v11, p0, Landroidx/preference/XMiuiColorPickerPreference;->mDensity:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v2, v10}, Landroidx/preference/MiuiColorPicker/ColorPickerAlphaPatternDrawable;-><init>(I)V

    add-int/lit8 v10, v3, 0x2

    add-int/lit8 v11, v3, 0x2

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-nez v4, :cond_7d

    const v10, -0x919192

    :goto_46
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v10, v3, 0x2

    add-int/lit8 v11, v3, 0x2

    invoke-direct {v6, v9, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v7, v13, v13, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v2, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v9, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v3, 0x1

    invoke-direct {v6, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v7, v13, v13, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v1

    :cond_7b
    move v4, v9

    goto :goto_19

    :cond_7d
    const/4 v10, -0x1

    goto :goto_46
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v0, 0x1

    new-instance v1, Landroidx/preference/XMiuiPreferenceHelper;

    invoke-direct {v1, p1, p2}, Landroidx/preference/XMiuiPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "hexValue"

    invoke-virtual {v1, v2, v0}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeBool(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mHexEnabled:Z

    iget-object v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "alphaSlider"

    invoke-virtual {v1, v2, v0}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeBool(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mAlphaEnabled:Z

    iget-object v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string/jumbo v2, "presetView"

    invoke-virtual {v1, v2, v0}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeBool(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mPresetEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mDensity:F

    iget-object v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    sget v2, Landroidx/preference/XMiuiColorPickerPreference;->mDefValue:I

    invoke-virtual {v1, v2}, Landroidx/preference/XMiuiPreferenceHelper;->getInt(I)I

    move-result v1

    iput v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    iget v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    iget-object v2, p0, Landroidx/preference/XMiuiColorPickerPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v2}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v2

    if-nez v2, :cond_4b

    :goto_47
    invoke-direct {p0, v1, v0}, Landroidx/preference/XMiuiColorPickerPreference;->onColorChanged(IZ)V

    return-void

    :cond_4b
    const/4 v0, 0x0

    goto :goto_47
.end method

.method private onColorChanged(IZ)V
    .registers 5

    if-nez p2, :cond_6

    iget v0, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    if-eq v0, p1, :cond_20

    :cond_6
    iput p1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    iget-object v0, p0, Landroidx/preference/XMiuiColorPickerPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->setInt(I)V

    iget-object v0, p0, Landroidx/preference/XMiuiColorPickerPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    invoke-direct {p0}, Landroidx/preference/XMiuiColorPickerPreference;->setPreviewColor()V

    iget v0, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    invoke-direct {p0, v0}, Landroidx/preference/XMiuiColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_20
    return-void
.end method

.method private setPreviewColor()V
    .registers 9

    const/4 v7, 0x0

    iget-object v3, p0, Landroidx/preference/XMiuiColorPickerPreference;->mView:Landroid/view/View;

    if-eqz v3, :cond_49

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/XMiuiColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Landroidx/preference/XMiuiColorPickerPreference;->mView:Landroid/view/View;

    const v4, 0x1020018

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_49

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget v5, p0, Landroidx/preference/XMiuiColorPickerPreference;->mDensity:F

    const/high16 v6, 0x41000000  # 8.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3c

    invoke-virtual {v2, v7, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_3c
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    invoke-direct {p0}, Landroidx/preference/XMiuiColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_49
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidx/preference/XMiuiColorPickerPreference;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {p0, p1}, Landroidx/preference/XMiuiColorPickerPreference;->onMyBindViewHolder(Ljava/lang/Object;)V

    return-void
.end method

.method protected onClick()V
    .registers 4

    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    new-instance v0, Landroidx/preference/MiuiColorPicker/ColorPickerDialog;

    invoke-virtual {p0}, Landroidx/preference/XMiuiColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    invoke-direct {v0, v1, v2}, Landroidx/preference/MiuiColorPicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    iget-boolean v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mAlphaEnabled:Z

    invoke-virtual {v0, v1}, Landroidx/preference/MiuiColorPicker/ColorPickerDialog;->setAlphaSliderVisible(Z)Landroidx/preference/MiuiColorPicker/ColorPickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mHexEnabled:Z

    invoke-virtual {v0, v1}, Landroidx/preference/MiuiColorPicker/ColorPickerDialog;->setHexValueEnabled(Z)Landroidx/preference/MiuiColorPicker/ColorPickerDialog;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mPresetEnabled:Z

    invoke-virtual {v0, v1}, Landroidx/preference/MiuiColorPicker/ColorPickerDialog;->setPresetColorEnable(Z)Landroidx/preference/MiuiColorPicker/ColorPickerDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/MiuiColorPicker/ColorPickerDialog;->setOnColorChangedListener(Landroidx/preference/MiuiColorPicker/ColorPickerDialog$OnColorChangedListener;)Landroidx/preference/MiuiColorPicker/ColorPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/MiuiColorPicker/ColorPickerDialog;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onColorChanged(I)V
    .registers 4

    iget v0, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    if-eq v0, p1, :cond_1e

    iput p1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    iget-object v0, p0, Landroidx/preference/XMiuiColorPickerPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v1, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->setInt(I)V

    iget-object v0, p0, Landroidx/preference/XMiuiColorPickerPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    invoke-direct {p0}, Landroidx/preference/XMiuiColorPickerPreference;->setPreviewColor()V

    iget v0, p0, Landroidx/preference/XMiuiColorPickerPreference;->mValue:I

    invoke-direct {p0, v0}, Landroidx/preference/XMiuiColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1e
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/preference/XMiuiColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/preference/XMiuiColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Landroidx/preference/XMiuiColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroidx/preference/XMiuiColorPickerPreference;->mDefValue:I

    :goto_2a
    sget v2, Landroidx/preference/XMiuiColorPickerPreference;->mDefValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_30
    return-object v2

    :cond_31
    sput v0, Landroidx/preference/XMiuiColorPickerPreference;->mDefValue:I

    goto :goto_2a

    :cond_34
    const/high16 v2, -0x1000000

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_30
.end method

.method public onMyBindViewHolder(Ljava/lang/Object;)V
    .registers 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    const-string v4, "itemView"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_11} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_11} :catch_3f

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Landroidx/preference/XMiuiColorPickerPreference;->mView:Landroid/view/View;

    invoke-direct {p0}, Landroidx/preference/XMiuiColorPickerPreference;->setPreviewColor()V

    :goto_19
    return-void

    :catch_1a
    move-exception v1

    :goto_1b
    sget-object v4, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMyBindViewHolder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catch_3f
    move-exception v1

    goto :goto_1b
.end method
