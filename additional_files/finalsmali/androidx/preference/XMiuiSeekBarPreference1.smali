# newclasses.dex

.class public Landroidx/preference/XMiuiSeekBarPreference1;
.super Landroidx/preference/Preference;
.source "XMiuiSeekBarPreference1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/XMiuiSeekBarPreference1$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private Helper:Landroidx/preference/XMiuiPreferenceHelper;

.field private isOne:Z

.field private mAdjustable:Z

.field private mDefValue:I

.field private mMax:I

.field private mMin:I

.field private mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mSeekBarValue:I

.field private mSeekBarValueTextView:Landroid/widget/TextView;

.field private mShowSeekBarValue:Z

.field private mTrackingTouch:Z

.field private mUpdatesContinuously:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    sput-object v0, Landroidx/preference/XMiuiSeekBarPreference1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/XMiuiSeekBarPreference1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/XMiuiSeekBarPreference1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/XMiuiSeekBarPreference1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->isOne:Z

    new-instance v1, Landroidx/preference/XMiuiSeekBarPreference1$1;

    invoke-direct {v1, p0}, Landroidx/preference/XMiuiSeekBarPreference1$1;-><init>(Landroidx/preference/XMiuiSeekBarPreference1;)V

    iput-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v1, Landroidx/preference/XMiuiSeekBarPreference1$2;

    invoke-direct {v1, p0}, Landroidx/preference/XMiuiSeekBarPreference1$2;-><init>(Landroidx/preference/XMiuiSeekBarPreference1;)V

    iput-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "miuix_preference_widget_seekbar1"

    const-string v4, "layout"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference1;->setLayoutResource(I)V

    new-instance v1, Landroidx/preference/XMiuiPreferenceHelper;

    invoke-direct {v1, p1, p2}, Landroidx/preference/XMiuiPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "max"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const/4 v2, 0x0

    const-string v3, "min"

    invoke-virtual {v1, v3, v2}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference1;->setMax(I)V

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference1;->setMin(I)V

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string/jumbo v3, "step"

    invoke-virtual {v1, v3, v2}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference1;->setSeekBarIncrement(I)V

    iput-boolean v2, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mAdjustable:Z

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "enableSummary"

    invoke-virtual {v1, v2, v0}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeBool(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mShowSeekBarValue:Z

    iput-boolean v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mUpdatesContinuously:Z

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v1, "defaultValue"

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeAndroidValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_ac

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    goto :goto_ac

    :cond_85
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v3, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    invoke-virtual {v0, v1, v3}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeAndroidInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mDefValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiSeekBarPreference1;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-nez v0, :cond_a3

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mDefValue:I

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    goto :goto_ca

    :cond_a3
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->getInt()I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    goto :goto_ca

    :cond_ac
    :goto_ac
    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiSeekBarPreference1;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-nez v0, :cond_c2

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    goto :goto_ca

    :cond_c2
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->getInt()I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    :goto_ca
    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    invoke-direct {p0, v0}, Landroidx/preference/XMiuiSeekBarPreference1;->setValue(I)V

    return-void
.end method

.method private IdToId(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$000(Landroidx/preference/XMiuiSeekBarPreference1;Landroid/widget/SeekBar;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/preference/XMiuiSeekBarPreference1;->syncValueInternal(Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic access$102(Landroidx/preference/XMiuiSeekBarPreference1;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mTrackingTouch:Z

    return p1
.end method

.method static synthetic access$200(Landroidx/preference/XMiuiSeekBarPreference1;)I
    .registers 2

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    return v0
.end method

.method static synthetic access$300(Landroidx/preference/XMiuiSeekBarPreference1;)I
    .registers 2

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    return v0
.end method

.method static synthetic access$400(Landroidx/preference/XMiuiSeekBarPreference1;)I
    .registers 2

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    return v0
.end method

.method static synthetic access$500(Landroidx/preference/XMiuiSeekBarPreference1;)Z
    .registers 2

    iget-boolean v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mAdjustable:Z

    return v0
.end method

.method static synthetic access$600(Landroidx/preference/XMiuiSeekBarPreference1;)Lmiuix/androidbasewidget/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroidx/preference/XMiuiSeekBarPreference1;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private idToId(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setMax(I)V
    .registers 3

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    if-ge p1, v0, :cond_6

    iget p1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    :cond_6
    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    if-eq p1, v0, :cond_f

    iput p1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->notifyChanged()V

    :cond_f
    return-void
.end method

.method private setMin(I)V
    .registers 3

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    if-le p1, v0, :cond_6

    iget p1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    :cond_6
    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    if-eq p1, v0, :cond_f

    iput p1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->notifyChanged()V

    :cond_f
    return-void
.end method

.method private setSeekBarIncrement(I)V
    .registers 4

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_16

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarIncrement:I

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->notifyChanged()V

    :cond_16
    return-void
.end method

.method private setValue(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/preference/XMiuiSeekBarPreference1;->setValueInternal(IZ)V

    return-void
.end method

.method private setValueInternal(IZ)V
    .registers 5

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    if-ge p1, v0, :cond_6

    iget p1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    :cond_6
    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    if-le p1, v0, :cond_c

    iget p1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    :cond_c
    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    if-eq p1, v0, :cond_2d

    iput p1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiSeekBarPreference1;->updateLabelValue(I)V

    invoke-virtual {p0, p1}, Landroidx/preference/XMiuiSeekBarPreference1;->persistInt(I)Z

    if-eqz p2, :cond_21

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->notifyChanged()V

    :cond_21
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->putInt(I)V

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    :cond_2d
    return-void
.end method

.method private syncValueInternal(Landroid/widget/SeekBar;)V
    .registers 4

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    if-eq v0, v1, :cond_f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/preference/XMiuiSeekBarPreference1;->setValueInternal(IZ)V

    :cond_f
    return-void
.end method


# virtual methods
.method public getMax()I
    .registers 2

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    return v0
.end method

.method public getMin()I
    .registers 2

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    return v0
.end method

.method public final getSeekBarIncrement()I
    .registers 2

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarIncrement:I

    return v0
.end method

.method public getUpdatesContinuously()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mUpdatesContinuously:Z

    return v0
.end method

.method public getValue()I
    .registers 2

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    return v0
.end method

.method public isAdjustable()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mAdjustable:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const-string/jumbo v0, "seekbar"

    invoke-direct {p0, v0}, Landroidx/preference/XMiuiSeekBarPreference1;->idToId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    const-string/jumbo v0, "seekbar_value"

    invoke-direct {p0, v0}, Landroidx/preference/XMiuiSeekBarPreference1;->idToId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_46

    iget-boolean v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mShowSeekBarValue:Z

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3d

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3d
    goto :goto_46

    :cond_3e
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValueTextView:Landroid/widget/TextView;

    :cond_46
    :goto_46
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    if-nez v0, :cond_52

    sget-object v0, Landroidx/preference/XMiuiSeekBarPreference1;->TAG:Ljava/lang/String;

    const-string v1, "SeekBar view is null in onBindViewHolder."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_52
    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->setMax(I)V

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarIncrement:I

    if-eqz v0, :cond_6b

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v1, v0}, Lmiuix/androidbasewidget/widget/SeekBar;->setKeyProgressIncrement(I)V

    goto :goto_73

    :cond_6b
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->getKeyProgressIncrement()I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarIncrement:I

    :goto_73
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V

    iget v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiSeekBarPreference1;->updateLabelValue(I)V

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/XMiuiSeekBarPreference1$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_10
    move-object v0, p1

    check-cast v0, Landroidx/preference/XMiuiSeekBarPreference1$SavedState;

    invoke-virtual {v0}, Landroidx/preference/XMiuiSeekBarPreference1$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Landroidx/preference/XMiuiSeekBarPreference1$SavedState;->mSeekBarValue:I

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    iget v1, v0, Landroidx/preference/XMiuiSeekBarPreference1$SavedState;->mMin:I

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    iget v1, v0, Landroidx/preference/XMiuiSeekBarPreference1$SavedState;->mMax:I

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/XMiuiSeekBarPreference1;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    new-instance v1, Landroidx/preference/XMiuiSeekBarPreference1$SavedState;

    invoke-direct {v1, v0}, Landroidx/preference/XMiuiSeekBarPreference1$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    iput v2, v1, Landroidx/preference/XMiuiSeekBarPreference1$SavedState;->mSeekBarValue:I

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    iput v2, v1, Landroidx/preference/XMiuiSeekBarPreference1$SavedState;->mMin:I

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMax:I

    iput v2, v1, Landroidx/preference/XMiuiSeekBarPreference1$SavedState;->mMax:I

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_f

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "min"

    invoke-virtual {v1, v2, v0}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_f
    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/XMiuiPreferenceHelper;->getInt(I)I

    move-result v1

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mDefValue:I

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/XMiuiPreferenceHelper;->putInt(I)V

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mDefValue:I

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    :cond_44
    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    iput v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValue:I

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiSeekBarPreference1;->setValue(I)V

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mValue:I

    iget v2, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    if-ne v1, v2, :cond_52

    const/4 v0, 0x1

    :cond_52
    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiSeekBarPreference1;->notifyDependencyChange(Z)V

    return-void
.end method

.method public setAdjustable(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mAdjustable:Z

    return-void
.end method

.method public setShowSeekBarValue(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mShowSeekBarValue:Z

    return-void
.end method

.method public setUpdatesContinuously(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mUpdatesContinuously:Z

    return-void
.end method

.method public shouldDisableDependents()Z
    .registers 3

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mDefValue:I

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->getInt(I)I

    move-result v0

    iget v1, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mMin:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public updateLabelValue(I)V
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference1;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method
