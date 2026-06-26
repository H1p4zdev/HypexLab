# xdclasses.dex

.class public Landroidx/preference/XdEditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source "XdEditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private BUILD_VERSION:Ljava/lang/String;

.field contentResolver:Landroid/content/ContentResolver;

.field private defaultValue:Ljava/lang/String;

.field public intentAction:Ljava/lang/String;

.field private isProperty:Z

.field public key:Ljava/lang/String;

.field preferenceHelper:Landroidx/preference/XdPreferenceHelper;

.field public storeType:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/XdEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "xd2.0"

    iput-object v0, p0, Landroidx/preference/XdEditTextPreference;->BUILD_VERSION:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdEditTextPreference;->contentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdEditTextPreference;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroidx/preference/XdEditTextPreference;->BUILD_VERSION:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/preference/XdPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ContentResolver;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/preference/XdEditTextPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    invoke-virtual {p0}, Landroidx/preference/XdEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdEditTextPreference;->key:Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "storeType"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroidx/preference/XdEditTextPreference;->storeType:I

    const-string v1, "intent"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/XdEditTextPreference;->intentAction:Ljava/lang/String;

    const-string v1, "isProp"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/XdEditTextPreference;->isProperty:Z

    iget-boolean v0, p0, Landroidx/preference/XdEditTextPreference;->isProperty:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdEditTextPreference;->key:Ljava/lang/String;

    iget-object v2, p0, Landroidx/preference/XdEditTextPreference;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/preference/XdPreferenceHelper;->getPropString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    :cond_49
    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdEditTextPreference;->key:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XdEditTextPreference;->storeType:I

    invoke-virtual {v0, v1, v2}, Landroidx/preference/XdPreferenceHelper;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_53
    nop

    if-eqz v0, :cond_58

    move-object v1, v0

    goto :goto_5a

    :cond_58
    const-string v1, ""

    :goto_5a
    iput-object v1, p0, Landroidx/preference/XdEditTextPreference;->value:Ljava/lang/String;

    iget-object v1, p0, Landroidx/preference/XdEditTextPreference;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/XdEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 4

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroidx/preference/XdEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XdEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, v0}, Landroidx/preference/XdEditTextPreference;->setText(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->defaultValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->defaultValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XdEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    const-string v1, "Default Value Restored"

    invoke-virtual {v0, v1}, Landroidx/preference/XdPreferenceHelper;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public onLongClickUseDefaultHapticFeedback(Landroid/view/View;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View$OnLongClickListener;->onLongClickUseDefaultHapticFeedback(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdEditTextPreference;->defaultValue:Ljava/lang/String;

    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->defaultValue:Ljava/lang/String;

    iput-object v0, p0, Landroidx/preference/XdEditTextPreference;->value:Ljava/lang/String;

    :cond_14
    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XdEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XdEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Landroidx/preference/XdEditTextPreference;->isProperty:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdEditTextPreference;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/XdPreferenceHelper;->getPropString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e

    :cond_15
    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdEditTextPreference;->key:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XdEditTextPreference;->storeType:I

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/XdPreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1e
    invoke-virtual {p0, p1}, Landroidx/preference/XdEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->intentAction:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroidx/preference/XdEditTextPreference;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdEditTextPreference;->intentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/XdPreferenceHelper;->sendIntent(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method
