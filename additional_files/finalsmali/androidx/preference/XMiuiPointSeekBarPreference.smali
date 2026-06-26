# newclasses.dex

.class public Landroidx/preference/XMiuiPointSeekBarPreference;
.super Landroidx/preference/Preference;
.source "XMiuiPointSeekBarPreference.java"

# interfaces
.implements Landroidx/preference/FixedSize/PointSeekBarLayout$PointChangeListener;


# instance fields
.field private curValue:I

.field private enableCustSummary:Z

.field private enableLineSummary:Z

.field private helper:Landroidx/preference/XMiuiPreferenceHelper;

.field private main:Landroidx/preference/FixedSize/PointSeekBarLayout;

.field private max:I

.field private min:I

.field private step:I

.field private summary:Landroid/widget/TextView;

.field private summaryArrays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/XMiuiPointSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/XMiuiPointSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->enableCustSummary:Z

    invoke-direct {p0, p1, p2}, Landroidx/preference/XMiuiPointSeekBarPreference;->initial(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getSummaryForPoint(I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->summaryArrays:[Ljava/lang/String;

    iget-object v1, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->main:Landroidx/preference/FixedSize/PointSeekBarLayout;

    iget-object v1, v1, Landroidx/preference/FixedSize/PointSeekBarLayout;->labels:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private initial(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v3, "point_seekbar_layout"

    invoke-static {p1, v3}, Landroid/Utils/Utils;->LayoutToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/preference/XMiuiPointSeekBarPreference;->setLayoutResource(I)V

    new-instance v3, Landroidx/preference/XMiuiPreferenceHelper;

    invoke-direct {v3, p1, p2}, Landroidx/preference/XMiuiPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget-object v3, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v4, "max"

    const/16 v5, 0x1e

    invoke-virtual {v3, v4, v5}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->max:I

    iget-object v3, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v4, "min"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->min:I

    iget-object v3, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string/jumbo v4, "step"

    invoke-virtual {v3, v4, v2}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->step:I

    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "entries"

    invoke-interface {p2, v3, v4, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_40

    move v1, v2

    :cond_40
    iput-boolean v1, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->enableCustSummary:Z

    iget-object v1, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v3, "enableLineSummary"

    invoke-virtual {v1, v3, v2}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeBool(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->enableLineSummary:Z

    iget-boolean v1, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->enableCustSummary:Z

    if-eqz v1, :cond_5e

    invoke-virtual {p0}, Landroidx/preference/XMiuiPointSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->summaryArrays:[Ljava/lang/String;

    :cond_5e
    return-void
.end method


# virtual methods
.method public OnPointChange(I)V
    .registers 4

    iget v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->curValue:I

    if-eq v0, p1, :cond_21

    iget-object v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    iput p1, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->curValue:I

    invoke-virtual {v0, p1}, Landroidx/preference/XMiuiPreferenceHelper;->putInt(I)V

    iget-object v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    iget-boolean v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->enableCustSummary:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->summaryArrays:[Ljava/lang/String;

    if-eqz v0, :cond_21

    :try_start_18
    iget-object v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->summary:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroidx/preference/XMiuiPointSeekBarPreference;->getSummaryForPoint(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    goto :goto_21
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 9

    const/16 v6, 0x8

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroidx/preference/FixedSize/PointSeekBarLayout;

    iput-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->main:Landroidx/preference/FixedSize/PointSeekBarLayout;

    iget-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->main:Landroidx/preference/FixedSize/PointSeekBarLayout;

    invoke-virtual {v2, p0}, Landroidx/preference/FixedSize/PointSeekBarLayout;->setListener(Landroidx/preference/FixedSize/PointSeekBarLayout$PointChangeListener;)V

    iget-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->main:Landroidx/preference/FixedSize/PointSeekBarLayout;

    iget v3, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->min:I

    iget v4, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->max:I

    iget v5, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->step:I

    invoke-virtual {v2, v3, v4, v5}, Landroidx/preference/FixedSize/PointSeekBarLayout;->setValues(III)V

    iget-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->main:Landroidx/preference/FixedSize/PointSeekBarLayout;

    iget v3, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->curValue:I

    invoke-virtual {v2, v3}, Landroidx/preference/FixedSize/PointSeekBarLayout;->setValue(I)V

    iget-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->main:Landroidx/preference/FixedSize/PointSeekBarLayout;

    invoke-virtual {p0}, Landroidx/preference/XMiuiPointSeekBarPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/FixedSize/PointSeekBarLayout;->setTitle(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->enableLineSummary:Z

    if-nez v2, :cond_49

    iget-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->main:Landroidx/preference/FixedSize/PointSeekBarLayout;

    invoke-virtual {v2}, Landroidx/preference/FixedSize/PointSeekBarLayout;->getMinView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3e
    iget-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->main:Landroidx/preference/FixedSize/PointSeekBarLayout;

    invoke-virtual {v2}, Landroidx/preference/FixedSize/PointSeekBarLayout;->getMaxView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_49
    iget-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->main:Landroidx/preference/FixedSize/PointSeekBarLayout;

    invoke-virtual {v2}, Landroidx/preference/FixedSize/PointSeekBarLayout;->getSummary()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->summary:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->summary:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :try_start_57
    iget-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->summary:Landroid/widget/TextView;

    iget v3, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->curValue:I

    invoke-direct {p0, v3}, Landroidx/preference/XMiuiPointSeekBarPreference;->getSummaryForPoint(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_62} :catch_63

    :goto_62
    return-void

    :catch_63
    move-exception v2

    goto :goto_62
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->min:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_f

    iget-object v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "min"

    invoke-virtual {v0, v2, v1}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_f
    iget-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/preference/XMiuiPreferenceHelper;->getInt(I)I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->curValue:I

    iget-object v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/preference/XMiuiPreferenceHelper;->putInt(I)V

    iget-object v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->curValue:I

    :cond_3f
    iget v0, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->curValue:I

    iget v2, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->min:I

    if-ne v0, v2, :cond_4a

    const/4 v0, 0x1

    :goto_46
    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiPointSeekBarPreference;->notifyDependencyChange(Z)V

    return-void

    :cond_4a
    move v0, v1

    goto :goto_46
.end method

.method public setCurValue(I)V
    .registers 2

    iput p1, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->curValue:I

    return-void
.end method

.method public setMax(I)V
    .registers 2

    iput p1, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->max:I

    return-void
.end method

.method public setMin(I)V
    .registers 2

    iput p1, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->min:I

    return-void
.end method

.method public setStep(I)V
    .registers 2

    iput p1, p0, Landroidx/preference/XMiuiPointSeekBarPreference;->step:I

    return-void
.end method
