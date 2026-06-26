# newclasses.dex

.class public Landroidx/preference/XMiuiEditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source "XMiuiEditTextPreference.java"


# instance fields
.field public CoreSettings:Landroidx/preference/XMiuiCoreSettingsPreference;

.field private mLastState:Ljava/lang/String;

.field private mPrSfSummary:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroidx/preference/XMiuiCoreSettingsPreference;

    invoke-direct {v0}, Landroidx/preference/XMiuiCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroidx/preference/XMiuiEditTextPreference;->CoreSettings:Landroidx/preference/XMiuiCoreSettingsPreference;

    iget-object v0, p0, Landroidx/preference/XMiuiEditTextPreference;->CoreSettings:Landroidx/preference/XMiuiCoreSettingsPreference;

    invoke-virtual {p0}, Landroidx/preference/XMiuiEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/preference/XMiuiCoreSettingsPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/XMiuiEditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiCoreSettingsPreference;->initSummary(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiEditTextPreference;->mPrSfSummary:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDependents(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_9

    move-result v1

    if-gtz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    :goto_8
    return v0

    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method protected onDialogClosed(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Landroidx/preference/XMiuiEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiEditTextPreference;->mLastState:Ljava/lang/String;

    if-eq v1, v0, :cond_21

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiEditTextPreference;->getDependents(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiEditTextPreference;->notifyDependencyChange(Z)V

    iget-object v1, p0, Landroidx/preference/XMiuiEditTextPreference;->CoreSettings:Landroidx/preference/XMiuiCoreSettingsPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/XMiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/XMiuiCoreSettingsPreference;->sendIntent()V

    iput-object v0, p0, Landroidx/preference/XMiuiEditTextPreference;->mLastState:Ljava/lang/String;

    iget-object v1, p0, Landroidx/preference/XMiuiEditTextPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_21
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/preference/EditTextPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 6

    iget-object v2, p0, Landroidx/preference/XMiuiEditTextPreference;->CoreSettings:Landroidx/preference/XMiuiCoreSettingsPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/preference/XMiuiCoreSettingsPreference;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/XMiuiEditTextPreference;->mLastState:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_23

    if-nez p1, :cond_23

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiEditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroidx/preference/XMiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/preference/XMiuiCoreSettingsPreference;->sendIntent()V

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_22
    return-void

    :cond_23
    iget-object v1, p0, Landroidx/preference/XMiuiEditTextPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiEditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method

.method public setPersistent(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->setPersistent(Z)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/preference/XMiuiEditTextPreference;->mPrSfSummary:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiEditTextPreference;->mPrSfSummary:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldDisableDependents()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroidx/preference/XMiuiEditTextPreference;->CoreSettings:Landroidx/preference/XMiuiCoreSettingsPreference;

    invoke-virtual {v1}, Landroidx/preference/XMiuiCoreSettingsPreference;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_a} :catch_f

    move-result v1

    if-gtz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    :goto_e
    return v0

    :catch_f
    move-exception v1

    goto :goto_e
.end method
