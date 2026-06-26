# xdclasses.dex

.class public Landroidx/preference/XdSeekBarPreference;
.super Landroidx/preference/Preference;
.source "XdSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final BUILD_VAR:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private final intentAction:Ljava/lang/String;

.field private final isHideNavigation:Z

.field private final isProperty:Z

.field public mContinuousUpdates:Z

.field public mDefaultValue:I

.field public mDefaultValueExists:Z

.field public mDefaultValueText:Ljava/lang/String;

.field public mDefaultValueTextExists:Z

.field public mInterval:I

.field private final mKey:Ljava/lang/String;

.field public mMaxValue:I

.field public mMinValue:I

.field public mMinusImageView:Landroid/widget/ImageView;

.field public mPlusImageView:Landroid/widget/ImageView;

.field public mSeekBar:Landroid/widget/SeekBar;

.field public mShowSign:Z

.field public mTrackingTouch:Z

.field public mTrackingValue:I

.field public mUnits:Ljava/lang/String;

.field public mValue:I

.field public mValueTextView:Landroid/widget/TextView;

.field private final preferenceHelper:Landroidx/preference/XdPreferenceHelper;

.field private final resourcesHelper:Landroidx/preference/XdResourcesHelper;

.field private final storeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/XdSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;

    .line 92
    sget v0, Landroidx/preference/R$attr;->seekBarPreferenceStyle:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/XdSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"  # I

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/XdSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"  # I
    .param p4, "defStyleRes"  # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdSeekBarPreference;->TAG:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "xd3.0"

    iput-object v0, p0, Landroidx/preference/XdSeekBarPreference;->BUILD_VAR:Ljava/lang/String;

    .line 38
    const/4 v1, 0x1

    iput v1, p0, Landroidx/preference/XdSeekBarPreference;->mInterval:I

    .line 39
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/preference/XdSeekBarPreference;->mShowSign:Z

    .line 40
    const-string v3, ""

    iput-object v3, p0, Landroidx/preference/XdSeekBarPreference;->mUnits:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Landroidx/preference/XdSeekBarPreference;->mContinuousUpdates:Z

    .line 42
    iput v2, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    .line 43
    const/16 v3, 0x64

    iput v3, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    .line 44
    iput-boolean v2, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueExists:Z

    .line 46
    iput-boolean v2, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueTextExists:Z

    .line 52
    iput-boolean v2, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingTouch:Z

    .line 58
    iput-object p1, p0, Landroidx/preference/XdSeekBarPreference;->context:Landroid/content/Context;

    .line 59
    new-instance v3, Landroidx/preference/XdPreferenceHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4, v0}, Landroidx/preference/XdPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ContentResolver;Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/preference/XdSeekBarPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    .line 60
    new-instance v0, Landroidx/preference/XdResourcesHelper;

    invoke-direct {v0, p1}, Landroidx/preference/XdResourcesHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/preference/XdSeekBarPreference;->resourcesHelper:Landroidx/preference/XdResourcesHelper;

    .line 61
    invoke-virtual {p0}, Landroidx/preference/XdSeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mKey:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "showSign"

    iget-boolean v3, p0, Landroidx/preference/XdSeekBarPreference;->mShowSign:Z

    const/4 v4, 0x0

    invoke-interface {p2, v4, v0, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mShowSign:Z

    .line 63
    const-string/jumbo v0, "units"

    invoke-interface {p2, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "units":Ljava/lang/String;
    if-eqz v0, :cond_6e

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/preference/XdSeekBarPreference;->mUnits:Ljava/lang/String;

    .line 66
    :cond_6e
    const-string v3, "continuousUpdates"

    iget-boolean v5, p0, Landroidx/preference/XdSeekBarPreference;->mContinuousUpdates:Z

    invoke-interface {p2, v4, v3, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/preference/XdSeekBarPreference;->mContinuousUpdates:Z

    .line 67
    const-string v3, "defaultValueText"

    invoke-interface {p2, v4, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "defaultValueText":Ljava/lang/String;
    if-eqz v3, :cond_88

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_88

    move v5, v1

    goto :goto_89

    :cond_88
    move v5, v2

    :goto_89
    iput-boolean v5, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueTextExists:Z

    .line 69
    iget-boolean v5, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueTextExists:Z

    if-eqz v5, :cond_91

    .line 70
    iput-object v3, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueText:Ljava/lang/String;

    .line 72
    :cond_91
    const-string v5, "interval"

    iget v6, p0, Landroidx/preference/XdSeekBarPreference;->mInterval:I

    invoke-interface {p2, v4, v5, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroidx/preference/XdSeekBarPreference;->mInterval:I

    .line 73
    const-string v5, "min"

    iget v6, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    invoke-interface {p2, v4, v5, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    .line 74
    const-string v5, "max"

    iget v6, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    invoke-interface {p2, v4, v5, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    .line 75
    iget v5, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    iget v6, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    if-ge v5, v6, :cond_b9

    .line 76
    iget v5, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    iput v5, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    .line 77
    :cond_b9
    const-string/jumbo v5, "storeType"

    invoke-interface {p2, v4, v5, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroidx/preference/XdSeekBarPreference;->storeType:I

    .line 78
    const-string v5, "isProp"

    invoke-interface {p2, v4, v5, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/preference/XdSeekBarPreference;->isProperty:Z

    .line 79
    const-string v5, "hideNav"

    invoke-interface {p2, v4, v5, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/preference/XdSeekBarPreference;->isHideNavigation:Z

    .line 80
    const-string v5, "intent"

    invoke-interface {p2, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/XdSeekBarPreference;->intentAction:Ljava/lang/String;

    .line 81
    iget v4, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValue:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e3

    goto :goto_e4

    :cond_e3
    move v1, v2

    :goto_e4
    iput-boolean v1, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueExists:Z

    .line 82
    new-instance v1, Landroid/widget/SeekBar;

    invoke-direct {v1, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 83
    return-void
.end method

.method private SeekBarLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 11
    .param p1, "context"  # Landroid/content/Context;

    .line 206
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Landroidx/preference/XdSeekBarPreference;->dpToPx(I)I

    move-result v4

    invoke-direct {p0, v3}, Landroidx/preference/XdSeekBarPreference;->dpToPx(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 217
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    .line 218
    iget-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Landroidx/preference/XdSeekBarPreference;->resourcesHelper:Landroidx/preference/XdResourcesHelper;

    invoke-virtual {v5, v6}, Landroidx/preference/XdResourcesHelper;->getSeekDrawableResources(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    iget-boolean v5, p0, Landroidx/preference/XdSeekBarPreference;->isHideNavigation:Z

    const/16 v7, 0x8

    if-eqz v5, :cond_3f

    move v5, v7

    goto :goto_40

    :cond_3f
    move v5, v6

    :goto_40
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    new-instance v4, Landroid/widget/SeekBar;

    invoke-direct {v4, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 223
    iget-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    .line 229
    iget-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Landroidx/preference/XdSeekBarPreference;->resourcesHelper:Landroidx/preference/XdResourcesHelper;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroidx/preference/XdResourcesHelper;->getSeekDrawableResources(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    iget-boolean v5, p0, Landroidx/preference/XdSeekBarPreference;->isHideNavigation:Z

    if-eqz v5, :cond_74

    goto :goto_75

    :cond_74
    move v7, v6

    :goto_75
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-boolean v4, p0, Landroidx/preference/XdSeekBarPreference;->isHideNavigation:Z

    if-nez v4, :cond_ab

    .line 235
    iget-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v3}, Landroidx/preference/XdSeekBarPreference;->dpToPx(I)I

    move-result v5

    invoke-direct {p0, v3}, Landroidx/preference/XdSeekBarPreference;->dpToPx(I)I

    move-result v3

    invoke-virtual {v4, v5, v6, v3, v6}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 236
    iget-object v3, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v3, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-direct {v4, v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v3, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ba

    .line 249
    :cond_ab
    iget-object v3, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 250
    iget-object v3, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    :goto_ba
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Landroidx/preference/XdSeekBarPreference$1;

    invoke-direct {v3, p0, v0, p1}, Landroidx/preference/XdSeekBarPreference$1;-><init>(Landroidx/preference/XdSeekBarPreference;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 268
    return-object v0
.end method

.method private dpToPx(I)I
    .registers 4
    .param p1, "dp"  # I

    .line 461
    invoke-virtual {p0}, Landroidx/preference/XdSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 462
    .local v0, "density":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private findUnPressableLinearLayout(Landroid/view/ViewGroup;)Landroidx/preference/UnPressableLinearLayout;
    .registers 5
    .param p1, "parent"  # Landroid/view/ViewGroup;

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroidx/preference/UnPressableLinearLayout;

    if-eqz v2, :cond_13

    .line 161
    move-object v2, v1

    check-cast v2, Landroidx/preference/UnPressableLinearLayout;

    return-object v2

    .line 165
    :cond_13
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_21

    .line 166
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Landroidx/preference/XdSeekBarPreference;->findUnPressableLinearLayout(Landroid/view/ViewGroup;)Landroidx/preference/UnPressableLinearLayout;

    move-result-object v2

    .line 167
    .local v2, "result":Landroidx/preference/UnPressableLinearLayout;
    if-eqz v2, :cond_21

    .line 168
    return-object v2

    .line 156
    .end local v1  # "child":Landroid/view/View;
    .end local v2  # "result":Landroidx/preference/UnPressableLinearLayout;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    .end local v0  # "i":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLimitedValue(I)I
    .registers 3
    .param p1, "v"  # I

    .line 299
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    if-ge p1, v0, :cond_7

    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    goto :goto_f

    :cond_7
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    if-le p1, v0, :cond_e

    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    goto :goto_f

    :cond_e
    move v0, p1

    :goto_f
    return v0
.end method

.method private getSeekValue(I)I
    .registers 4
    .param p1, "v"  # I

    .line 303
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    sub-int/2addr v0, p1

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mInterval:I

    invoke-static {v0, v1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    neg-int v0, v0

    .line 304
    .local v0, "value":I
    if-ltz v0, :cond_d

    .line 305
    return v0

    .line 307
    :cond_d
    const/4 v1, -0x1

    return v1
.end method

.method private getTextValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "v"  # I

    .line 312
    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueTextExists:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueExists:Z

    if-eqz v0, :cond_f

    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValue:I

    if-ne p1, v0, :cond_f

    .line 313
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueText:Ljava/lang/String;

    return-object v0

    .line 315
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroidx/preference/XdSeekBarPreference;->mShowSign:Z

    if-eqz v1, :cond_1d

    if-lez p1, :cond_1d

    const-string v1, "+"

    goto :goto_1f

    :cond_1d
    const-string v1, ""

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XdSeekBarPreference;->mUnits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onClickLogics()V
    .registers 3

    .line 273
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 274
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mValueTextView:Landroid/widget/TextView;

    new-instance v1, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/XdSeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mValueTextView:Landroid/widget/TextView;

    new-instance v1, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda1;-><init>(Landroidx/preference/XdSeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 282
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    new-instance v1, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda2;-><init>(Landroidx/preference/XdSeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    new-instance v1, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda3;-><init>(Landroidx/preference/XdSeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 289
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    new-instance v1, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda4;-><init>(Landroidx/preference/XdSeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    new-instance v1, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda5;-><init>(Landroidx/preference/XdSeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 296
    return-void
.end method

.method private setKeyValues(I)V
    .registers 5
    .param p1, "value"  # I

    .line 431
    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->isProperty:Z

    if-eqz v0, :cond_10

    .line 432
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdSeekBarPreference;->mKey:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/preference/XdPreferenceHelper;->putPropString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 434
    :cond_10
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdSeekBarPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XdSeekBarPreference;->storeType:I

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/XdPreferenceHelper;->putInt(Ljava/lang/String;II)V

    .line 437
    :goto_19
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->intentAction:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 438
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdSeekBarPreference;->intentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/XdPreferenceHelper;->sendIntent(Ljava/lang/String;)V

    .line 440
    :cond_24
    return-void
.end method

.method private setValue(I)V
    .registers 4
    .param p1, "newValue"  # I

    .line 443
    invoke-direct {p0, p1}, Landroidx/preference/XdSeekBarPreference;->getLimitedValue(I)I

    move-result v0

    iput v0, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    .line 444
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_15

    .line 445
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    invoke-direct {p0, v1}, Landroidx/preference/XdSeekBarPreference;->getSeekValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 449
    :cond_15
    return-void
.end method

.method private setValue(IZ)V
    .registers 5
    .param p1, "newValue"  # I
    .param p2, "update"  # Z

    .line 418
    invoke-direct {p0, p1}, Landroidx/preference/XdSeekBarPreference;->getLimitedValue(I)I

    move-result p1

    .line 419
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    if-eq v0, p1, :cond_16

    .line 420
    if-eqz p2, :cond_14

    .line 421
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, p1}, Landroidx/preference/XdSeekBarPreference;->getSeekValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_16

    .line 423
    :cond_14
    iput p1, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    .line 428
    :cond_16
    :goto_16
    return-void
.end method

.method private setValueSummary(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "charSequence"  # Ljava/lang/CharSequence;

    .line 452
    invoke-super {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 453
    .local v0, "summary":Ljava/lang/CharSequence;
    const-string v1, "%s"

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_d
    move-object v2, v1

    :goto_e
    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "replace":Ljava/lang/String;
    iget-object v2, p0, Landroidx/preference/XdSeekBarPreference;->mValueTextView:Landroid/widget/TextView;

    .line 455
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_19

    .line 456
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :cond_19
    return-void
.end method

.method private updateValueViews()V
    .registers 5

    .line 319
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_cf

    .line 320
    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingTouch:Z

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mContinuousUpdates:Z

    if-eqz v0, :cond_d

    goto :goto_5c

    .line 336
    :cond_d
    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueTextExists:Z

    const-string v1, "]"

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueExists:Z

    if-eqz v0, :cond_3b

    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingValue:I

    iget v2, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValue:I

    if-ne v0, v2, :cond_3b

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "trackingDefaultString":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroidx/preference/XdSeekBarPreference;->setValueSummary(Ljava/lang/CharSequence;)V

    .line 340
    .end local v0  # "trackingDefaultString":Ljava/lang/String;
    goto/16 :goto_cf

    .line 342
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingValue:I

    invoke-direct {p0, v2}, Landroidx/preference/XdSeekBarPreference;->getTextValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "trackingValueString":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroidx/preference/XdSeekBarPreference;->setValueSummary(Ljava/lang/CharSequence;)V

    goto :goto_cf

    .line 321
    .end local v0  # "trackingValueString":Ljava/lang/String;
    :cond_5c
    :goto_5c
    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueTextExists:Z

    const-string v1, " (default)"

    if-eqz v0, :cond_83

    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueExists:Z

    if-eqz v0, :cond_83

    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    iget v2, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValue:I

    if-ne v0, v2, :cond_83

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "defaultValueString":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroidx/preference/XdSeekBarPreference;->setValueSummary(Ljava/lang/CharSequence;)V

    .line 325
    .end local v0  # "defaultValueString":Ljava/lang/String;
    goto :goto_cf

    .line 327
    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    invoke-direct {p0, v2}, Landroidx/preference/XdSeekBarPreference;->getTextValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "valueString":Ljava/lang/String;
    iget-boolean v2, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValueExists:Z

    if-eqz v2, :cond_b8

    iget v2, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    iget v3, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValue:I

    if-ne v2, v3, :cond_b8

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_cb

    .line 331
    :cond_b8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ↺"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_cb
    invoke-direct {p0, v0}, Landroidx/preference/XdSeekBarPreference;->setValueSummary(Ljava/lang/CharSequence;)V

    .line 334
    .end local v0  # "valueString":Ljava/lang/String;
    nop

    .line 349
    :cond_cf
    :goto_cf
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f0

    .line 350
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    iget v3, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    if-eq v0, v3, :cond_eb

    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingTouch:Z

    if-eqz v0, :cond_e0

    goto :goto_eb

    .line 354
    :cond_e0
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 355
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_f0

    .line 351
    :cond_eb
    :goto_eb
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 359
    :cond_f0
    :goto_f0
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10f

    .line 360
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    iget v3, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    if-eq v0, v3, :cond_10a

    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingTouch:Z

    if-eqz v0, :cond_ff

    goto :goto_10a

    .line 363
    :cond_ff
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 364
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_10f

    .line 361
    :cond_10a
    :goto_10a
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 367
    :cond_10f
    :goto_10f
    return-void
.end method


# virtual methods
.method synthetic lambda$onClickLogics$0$androidx-preference-XdSeekBarPreference(Landroid/view/View;)V
    .registers 5
    .param p1, "view"  # Landroid/view/View;

    .line 275
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValue:I

    invoke-direct {p0, v0}, Landroidx/preference/XdSeekBarPreference;->getTextValue(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Default value: %s\nLong tap to set"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/preference/XdSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 277
    return-void
.end method

.method synthetic lambda$onClickLogics$1$androidx-preference-XdSeekBarPreference(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"  # Landroid/view/View;

    .line 279
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValue:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/preference/XdSeekBarPreference;->setValue(IZ)V

    .line 280
    return v1
.end method

.method synthetic lambda$onClickLogics$2$androidx-preference-XdSeekBarPreference(Landroid/view/View;)V
    .registers 4
    .param p1, "view"  # Landroid/view/View;

    .line 282
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mInterval:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/preference/XdSeekBarPreference;->setValue(IZ)V

    return-void
.end method

.method synthetic lambda$onClickLogics$3$androidx-preference-XdSeekBarPreference(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"  # Landroid/view/View;

    .line 284
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mInterval:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_1f

    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_1f

    .line 285
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    add-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    goto :goto_21

    .line 286
    :cond_1f
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    :goto_21
    nop

    .line 284
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/preference/XdSeekBarPreference;->setValue(IZ)V

    .line 287
    return v1
.end method

.method synthetic lambda$onClickLogics$4$androidx-preference-XdSeekBarPreference(Landroid/view/View;)V
    .registers 4
    .param p1, "view"  # Landroid/view/View;

    .line 289
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mInterval:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/preference/XdSeekBarPreference;->setValue(IZ)V

    return-void
.end method

.method synthetic lambda$onClickLogics$5$androidx-preference-XdSeekBarPreference(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"  # Landroid/view/View;

    .line 291
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mInterval:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_23

    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_23

    .line 292
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 293
    :cond_23
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    :goto_25
    nop

    .line 291
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/preference/XdSeekBarPreference;->setValue(IZ)V

    .line 294
    return v1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 8
    .param p1, "holder"  # Landroidx/preference/PreferenceViewHolder;

    .line 176
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 177
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    .local v0, "mTitle":Landroid/widget/TextView;
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/preference/XdSeekBarPreference;->mValueTextView:Landroid/widget/TextView;

    .line 179
    invoke-virtual {p0}, Landroidx/preference/XdSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/preference/XdSeekBarPreference;->SeekBarLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 180
    .local v1, "widgets":Landroid/widget/LinearLayout;
    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    .line 182
    .local v2, "rootLayout":Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Landroidx/preference/XdSeekBarPreference;->findUnPressableLinearLayout(Landroid/view/ViewGroup;)Landroidx/preference/UnPressableLinearLayout;

    move-result-object v3

    .line 183
    .local v3, "unPressableLayout":Landroidx/preference/UnPressableLinearLayout;
    if-eqz v3, :cond_2f

    .line 184
    invoke-virtual {v3}, Landroidx/preference/UnPressableLinearLayout;->removeAllViews()V

    .line 185
    invoke-virtual {v3, v1}, Landroidx/preference/UnPressableLinearLayout;->addView(Landroid/view/View;)V

    .line 188
    :cond_2f
    iget-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Landroidx/preference/XdSeekBarPreference;->mMaxValue:I

    invoke-direct {p0, v5}, Landroidx/preference/XdSeekBarPreference;->getSeekValue(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 189
    iget-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    invoke-direct {p0, v5}, Landroidx/preference/XdSeekBarPreference;->getSeekValue(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 190
    iget-object v4, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/XdSeekBarPreference;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 191
    if-eqz v0, :cond_54

    .line 192
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 196
    :cond_54
    invoke-direct {p0}, Landroidx/preference/XdSeekBarPreference;->updateValueViews()V

    .line 199
    invoke-direct {p0}, Landroidx/preference/XdSeekBarPreference;->onClickLogics()V

    .line 201
    return-void
.end method

.method public onDependencyChanged(Landroidx/preference/Preference;Z)V
    .registers 5
    .param p1, "dependency"  # Landroidx/preference/Preference;
    .param p2, "disableDependent"  # Z

    .line 144
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/XdSeekBarPreference;->setShouldDisableView(Z)V

    .line 146
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_12

    .line 147
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 148
    :cond_12
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    .line 149
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 150
    :cond_1d
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_28

    .line 151
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 152
    :cond_28
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 5
    .param p1, "a"  # Landroid/content/res/TypedArray;
    .param p2, "index"  # I

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 125
    .local v0, "defaultValue":I
    iput v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValue:I

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .param p1, "seekBar"  # Landroid/widget/SeekBar;
    .param p2, "progress"  # I
    .param p3, "fromUser"  # Z

    .line 371
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mMinValue:I

    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mInterval:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/preference/XdSeekBarPreference;->getLimitedValue(I)I

    move-result v0

    .line 373
    .local v0, "newValue":I
    iget-boolean v1, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingTouch:Z

    if-eqz v1, :cond_26

    .line 374
    iget-boolean v1, p0, Landroidx/preference/XdSeekBarPreference;->mContinuousUpdates:Z

    if-eqz v1, :cond_20

    .line 375
    iput v0, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingValue:I

    .line 376
    invoke-virtual {p0, v0}, Landroidx/preference/XdSeekBarPreference;->persistInt(I)Z

    .line 377
    invoke-direct {p0, v0}, Landroidx/preference/XdSeekBarPreference;->setKeyValues(I)V

    .line 378
    invoke-direct {p0}, Landroidx/preference/XdSeekBarPreference;->updateValueViews()V

    .line 379
    iput v0, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    goto :goto_4b

    .line 382
    :cond_20
    iput v0, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingValue:I

    .line 383
    invoke-direct {p0}, Landroidx/preference/XdSeekBarPreference;->updateValueViews()V

    goto :goto_4b

    .line 386
    :cond_26
    iget v1, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    if-eq v1, v0, :cond_4b

    .line 388
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/XdSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 390
    iget-object v1, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    invoke-direct {p0, v2}, Landroidx/preference/XdSeekBarPreference;->getSeekValue(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 391
    return-void

    .line 395
    :cond_40
    invoke-virtual {p0, v0}, Landroidx/preference/XdSeekBarPreference;->persistInt(I)Z

    .line 396
    iput v0, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    .line 397
    invoke-direct {p0}, Landroidx/preference/XdSeekBarPreference;->updateValueViews()V

    .line 398
    invoke-direct {p0, v0}, Landroidx/preference/XdSeekBarPreference;->setKeyValues(I)V

    .line 401
    :cond_4b
    :goto_4b
    return-void
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .registers 6
    .param p1, "defaultValue"  # Ljava/lang/Object;

    .line 133
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 134
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValue:I

    .line 137
    :cond_d
    iget-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->isProperty:Z

    if-eqz v0, :cond_24

    .line 138
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdSeekBarPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/preference/XdPreferenceHelper;->getPropString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_30

    .line 139
    :cond_24
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdSeekBarPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XdSeekBarPreference;->mDefaultValue:I

    iget v3, p0, Landroidx/preference/XdSeekBarPreference;->storeType:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/XdPreferenceHelper;->getInt(Ljava/lang/String;II)I

    move-result v0

    .line 137
    :goto_30
    invoke-direct {p0, v0}, Landroidx/preference/XdSeekBarPreference;->getLimitedValue(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/preference/XdSeekBarPreference;->setValue(I)V

    .line 140
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .param p1, "seekBar"  # Landroid/widget/SeekBar;

    .line 406
    iget v0, p0, Landroidx/preference/XdSeekBarPreference;->mValue:I

    iput v0, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingValue:I

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingTouch:Z

    .line 408
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5
    .param p1, "seekBar"  # Landroid/widget/SeekBar;

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingTouch:Z

    .line 413
    iget-object v1, p0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Landroidx/preference/XdSeekBarPreference;->mTrackingValue:I

    invoke-direct {p0, v2}, Landroidx/preference/XdSeekBarPreference;->getSeekValue(I)I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Landroidx/preference/XdSeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 414
    invoke-virtual {p0}, Landroidx/preference/XdSeekBarPreference;->notifyChanged()V

    .line 415
    return-void
.end method

.method public progressDrawable(Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;
    .registers 13
    .param p1, "context"  # Landroid/content/Context;

    .line 105
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference;->resourcesHelper:Landroidx/preference/XdResourcesHelper;

    invoke-virtual {v0}, Landroidx/preference/XdResourcesHelper;->getSeekDimenResources()I

    move-result v0

    .line 106
    .local v0, "radius":I
    int-to-float v1, v0

    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v0

    int-to-float v5, v0

    int-to-float v6, v0

    int-to-float v7, v0

    int-to-float v8, v0

    const/16 v9, 0x8

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v1, v9, v10

    const/4 v1, 0x1

    aput v2, v9, v1

    const/4 v2, 0x2

    aput v3, v9, v2

    const/4 v3, 0x3

    aput v4, v9, v3

    const/4 v4, 0x4

    aput v5, v9, v4

    const/4 v4, 0x5

    aput v6, v9, v4

    const/4 v4, 0x6

    aput v7, v9, v4

    const/4 v4, 0x7

    aput v8, v9, v4

    move-object v4, v9

    .line 107
    .local v4, "outerRadii":[F
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 108
    .local v5, "backgroundShape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget-object v8, p0, Landroidx/preference/XdSeekBarPreference;->resourcesHelper:Landroidx/preference/XdResourcesHelper;

    invoke-virtual {v8, v1}, Landroidx/preference/XdResourcesHelper;->getSeekColorResources(I)I

    move-result v8

    invoke-static {p1, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v8, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v8, v4, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v6, v8}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 110
    .local v6, "progressShape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    iget-object v8, p0, Landroidx/preference/XdSeekBarPreference;->resourcesHelper:Landroidx/preference/XdResourcesHelper;

    invoke-virtual {v8, v10}, Landroidx/preference/XdResourcesHelper;->getSeekColorResources(I)I

    move-result v8

    invoke-static {p1, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v7, v6, v3, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v3, v7

    .line 113
    .local v3, "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v2, v10

    aput-object v3, v2, v1

    invoke-direct {v7, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v2, v7

    .line 115
    .local v2, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/high16 v7, 0x1020000

    invoke-virtual {v2, v10, v7}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 116
    const v7, 0x102000d

    invoke-virtual {v2, v1, v7}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 117
    return-object v2
.end method
