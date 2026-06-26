# xdclasses.dex

.class public Landroidx/preference/XdWidgetCheckBox;
.super Landroidx/preference/Preference;
.source "XdWidgetCheckBox.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XdWidgetCheckBox"


# instance fields
.field private BUILD_VERSION:Ljava/lang/String;

.field private EnabledColor:I

.field private LeftPhoto:Ljava/lang/String;

.field private MidPhoto:Ljava/lang/String;

.field private RightPhoto:Ljava/lang/String;

.field private contentResolver:Landroid/content/ContentResolver;

.field private defaultValue:I

.field private intentAction:Ljava/lang/String;

.field private isProperty:Z

.field private key:Ljava/lang/String;

.field private leftTitle:Ljava/lang/String;

.field private leftWidPhoto:Landroid/widget/ImageView;

.field private leftWidText:Landroid/widget/TextView;

.field private leftWidget:Landroid/widget/LinearLayout;

.field private midTitle:Ljava/lang/String;

.field private midWidPhoto:Landroid/widget/ImageView;

.field private midWidText:Landroid/widget/TextView;

.field private midWidget:Landroid/widget/LinearLayout;

.field private preferenceHelper:Landroidx/preference/XdPreferenceHelper;

.field private rightTitle:Ljava/lang/String;

.field private rightWidPhoto:Landroid/widget/ImageView;

.field private rightWidText:Landroid/widget/TextView;

.field private rightWidget:Landroid/widget/LinearLayout;

.field private selectedWidget:I

.field private storeType:I

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "xd3.0"

    iput-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->BUILD_VERSION:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->contentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroidx/preference/XdWidgetCheckBox;->BUILD_VERSION:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/preference/XdPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ContentResolver;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    invoke-virtual {p0}, Landroidx/preference/XdWidgetCheckBox;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->key:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/XdWidgetCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    const-string v2, "dark_color_mode_outer"

    invoke-virtual {v1, v2}, Landroidx/preference/XdPreferenceHelper;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/preference/XdWidgetCheckBox;->EnabledColor:I

    invoke-virtual {p0}, Landroidx/preference/XdWidgetCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1060031

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/preference/XdWidgetCheckBox;->textColor:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/XdWidgetCheckBox;->setPersistent(Z)V

    invoke-virtual {p0, v0}, Landroidx/preference/XdWidgetCheckBox;->setSelectable(Z)V

    if-eqz p2, :cond_93

    const-string/jumbo v1, "storeType"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroidx/preference/XdWidgetCheckBox;->storeType:I

    const-string v1, "isProp"

    invoke-interface {p2, v2, v1, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/XdWidgetCheckBox;->isProperty:Z

    const-string v0, "intent"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->intentAction:Ljava/lang/String;

    const-string v0, "leftPhoto"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->LeftPhoto:Ljava/lang/String;

    const-string/jumbo v0, "rightPhoto"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->MidPhoto:Ljava/lang/String;

    const-string v0, "extraPhoto"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->RightPhoto:Ljava/lang/String;

    const-string v0, "leftTitle"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->leftTitle:Ljava/lang/String;

    const-string/jumbo v0, "rightTitle"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->midTitle:Ljava/lang/String;

    const-string v0, "extraTitle"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->rightTitle:Ljava/lang/String;

    :cond_93
    iget-boolean v0, p0, Landroidx/preference/XdWidgetCheckBox;->isProperty:Z

    if-eqz v0, :cond_aa

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->key:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XdWidgetCheckBox;->defaultValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/preference/XdPreferenceHelper;->getPropString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_b6

    :cond_aa
    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->key:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XdWidgetCheckBox;->defaultValue:I

    iget v3, p0, Landroidx/preference/XdWidgetCheckBox;->storeType:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/XdPreferenceHelper;->getInt(Ljava/lang/String;II)I

    move-result v0

    :goto_b6
    iput v0, p0, Landroidx/preference/XdWidgetCheckBox;->selectedWidget:I

    return-void
.end method

.method private BackgroundStrokeDisabled()Landroid/graphics/drawable/Drawable;
    .registers 6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v1, 0x11

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v2

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v4

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setPadding(IIII)V

    return-object v0
.end method

.method private BackgroundStrokeEnabled()Landroid/graphics/drawable/Drawable;
    .registers 6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v1

    iget v2, p0, Landroidx/preference/XdWidgetCheckBox;->EnabledColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v1, 0x11

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v2

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v3

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v4

    invoke-direct {p0, v1}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setPadding(IIII)V

    return-object v0
.end method

.method private createItemLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .registers 15

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v6

    const/4 v7, 0x7

    invoke-direct {p0, v7}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v8

    invoke-direct {p0, v5}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v5

    invoke-direct {p0, v7}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v7

    invoke-virtual {v0, v6, v8, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroidx/cardview/widget/CardView;

    invoke-direct {v4, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    const/16 v6, 0xc

    invoke-direct {p0, v6}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    invoke-virtual {v4, v1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    invoke-virtual {v4, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v6, p0, Landroidx/preference/XdWidgetCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    invoke-virtual {v6, p2}, Landroidx/preference/XdPreferenceHelper;->getDrawable(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4, v2}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 v3, 0x11

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41700000  # 15.0f

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroidx/preference/XdWidgetCheckBox$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p4}, Landroidx/preference/XdWidgetCheckBox$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/XdWidgetCheckBox;I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p4, :cond_bc

    iput-object v2, p0, Landroidx/preference/XdWidgetCheckBox;->leftWidPhoto:Landroid/widget/ImageView;

    iput-object v7, p0, Landroidx/preference/XdWidgetCheckBox;->leftWidText:Landroid/widget/TextView;

    goto :goto_ca

    :cond_bc
    if-ne p4, v1, :cond_c3

    iput-object v2, p0, Landroidx/preference/XdWidgetCheckBox;->midWidPhoto:Landroid/widget/ImageView;

    iput-object v7, p0, Landroidx/preference/XdWidgetCheckBox;->midWidText:Landroid/widget/TextView;

    goto :goto_ca

    :cond_c3
    const/4 v1, 0x2

    if-ne p4, v1, :cond_ca

    iput-object v2, p0, Landroidx/preference/XdWidgetCheckBox;->rightWidPhoto:Landroid/widget/ImageView;

    iput-object v7, p0, Landroidx/preference/XdWidgetCheckBox;->rightWidText:Landroid/widget/TextView;

    :cond_ca
    :goto_ca
    return-object v0
.end method

.method private dpToPx(I)I
    .registers 4

    invoke-virtual {p0}, Landroidx/preference/XdWidgetCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private updateBackgrounds()V
    .registers 5

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->leftWidget:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->leftWidget:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Landroidx/preference/XdWidgetCheckBox;->selectedWidget:I

    if-nez v3, :cond_15

    invoke-direct {p0}, Landroidx/preference/XdWidgetCheckBox;->BackgroundStrokeEnabled()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_19

    :cond_15
    invoke-direct {p0}, Landroidx/preference/XdWidgetCheckBox;->BackgroundStrokeDisabled()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_19
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->leftWidget:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, p0, Landroidx/preference/XdWidgetCheckBox;->selectedWidget:I

    if-nez v3, :cond_2b

    iget v3, p0, Landroidx/preference/XdWidgetCheckBox;->EnabledColor:I

    goto :goto_2d

    :cond_2b
    iget v3, p0, Landroidx/preference/XdWidgetCheckBox;->textColor:I

    :goto_2d
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_30
    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->midWidget:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->midWidget:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Landroidx/preference/XdWidgetCheckBox;->selectedWidget:I

    if-ne v3, v2, :cond_43

    invoke-direct {p0}, Landroidx/preference/XdWidgetCheckBox;->BackgroundStrokeEnabled()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_47

    :cond_43
    invoke-direct {p0}, Landroidx/preference/XdWidgetCheckBox;->BackgroundStrokeDisabled()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_47
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->midWidget:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, p0, Landroidx/preference/XdWidgetCheckBox;->selectedWidget:I

    if-ne v3, v2, :cond_59

    iget v3, p0, Landroidx/preference/XdWidgetCheckBox;->EnabledColor:I

    goto :goto_5b

    :cond_59
    iget v3, p0, Landroidx/preference/XdWidgetCheckBox;->textColor:I

    :goto_5b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5e
    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->rightWidget:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->rightWidget:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroidx/preference/XdWidgetCheckBox;->selectedWidget:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_72

    invoke-direct {p0}, Landroidx/preference/XdWidgetCheckBox;->BackgroundStrokeEnabled()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_76

    :cond_72
    invoke-direct {p0}, Landroidx/preference/XdWidgetCheckBox;->BackgroundStrokeDisabled()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_76
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->rightWidget:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Landroidx/preference/XdWidgetCheckBox;->selectedWidget:I

    if-ne v1, v3, :cond_88

    iget v1, p0, Landroidx/preference/XdWidgetCheckBox;->EnabledColor:I

    goto :goto_8a

    :cond_88
    iget v1, p0, Landroidx/preference/XdWidgetCheckBox;->textColor:I

    :goto_8a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8d
    return-void
.end method


# virtual methods
.method synthetic lambda$createItemLayout$0$androidx-preference-XdWidgetCheckBox(ILandroid/view/View;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidx/preference/XdWidgetCheckBox;->setSelectedWidget(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 7

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/XdWidgetCheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xf0

    invoke-direct {p0, v3}, Landroidx/preference/XdWidgetCheckBox;->dpToPx(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xe

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Landroidx/preference/XdWidgetCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/XdWidgetCheckBox;->LeftPhoto:Ljava/lang/String;

    iget-object v4, p0, Landroidx/preference/XdWidgetCheckBox;->leftTitle:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v1}, Landroidx/preference/XdWidgetCheckBox;->createItemLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->leftWidget:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->leftWidget:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/preference/XdWidgetCheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/XdWidgetCheckBox;->MidPhoto:Ljava/lang/String;

    iget-object v3, p0, Landroidx/preference/XdWidgetCheckBox;->midTitle:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/preference/XdWidgetCheckBox;->createItemLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->midWidget:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->midWidget:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->RightPhoto:Ljava/lang/String;

    if-eqz v1, :cond_78

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->rightTitle:Ljava/lang/String;

    if-eqz v1, :cond_78

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->RightPhoto:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->rightTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_78

    invoke-virtual {p0}, Landroidx/preference/XdWidgetCheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/XdWidgetCheckBox;->RightPhoto:Ljava/lang/String;

    iget-object v3, p0, Landroidx/preference/XdWidgetCheckBox;->rightTitle:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/preference/XdWidgetCheckBox;->createItemLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->rightWidget:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->rightWidget:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_78
    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Landroidx/preference/XdWidgetCheckBox;->updateBackgrounds()V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/preference/XdWidgetCheckBox;->defaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/preference/XdWidgetCheckBox;->defaultValue:I

    :cond_d
    iget-boolean v0, p0, Landroidx/preference/XdWidgetCheckBox;->isProperty:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->key:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XdWidgetCheckBox;->defaultValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/preference/XdPreferenceHelper;->getPropString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_30

    :cond_24
    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->key:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XdWidgetCheckBox;->defaultValue:I

    iget v3, p0, Landroidx/preference/XdWidgetCheckBox;->storeType:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/XdPreferenceHelper;->getInt(Ljava/lang/String;II)I

    move-result v0

    :goto_30
    nop

    invoke-virtual {p0, v0}, Landroidx/preference/XdWidgetCheckBox;->setSelectedWidget(I)V

    return-void
.end method

.method public setSelectedWidget(I)V
    .registers 5

    iget v0, p0, Landroidx/preference/XdWidgetCheckBox;->selectedWidget:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Landroidx/preference/XdWidgetCheckBox;->isProperty:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->key:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/preference/XdPreferenceHelper;->putPropString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_15
    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->key:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XdWidgetCheckBox;->storeType:I

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/XdPreferenceHelper;->putInt(Ljava/lang/String;II)V

    :goto_1e
    iput p1, p0, Landroidx/preference/XdWidgetCheckBox;->selectedWidget:I

    invoke-direct {p0}, Landroidx/preference/XdWidgetCheckBox;->updateBackgrounds()V

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->intentAction:Ljava/lang/String;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroidx/preference/XdWidgetCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdWidgetCheckBox;->intentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/XdPreferenceHelper;->sendIntent(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method
