# fixclasses.dex

.class public Landroidx/preference/MyEditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source "MyEditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDefValue:Ljava/lang/String;

.field private final mIntent:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object p1, p0, Landroidx/preference/MyEditTextPreference;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/MyEditTextPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 28
    invoke-virtual {p0}, Landroidx/preference/MyEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/MyEditTextPreference;->mKey:Ljava/lang/String;

    .line 29
    const-string v0, ""

    if-eqz p2, :cond_1d

    const/4 v1, 0x0

    const-string v2, "intent"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    move-object v1, v0

    :goto_1e
    iput-object v1, p0, Landroidx/preference/MyEditTextPreference;->mIntent:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Landroidx/preference/MyEditTextPreference;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_2f

    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroidx/preference/MyEditTextPreference;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/MyEditTextPreference;->mValue:Ljava/lang/String;

    goto :goto_31

    .line 31
    :cond_2f
    iput-object v0, p0, Landroidx/preference/MyEditTextPreference;->mValue:Ljava/lang/String;

    .line 32
    :goto_31
    return-void
.end method

.method private sendIntent()V
    .registers 3

    .line 71
    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mIntent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroidx/preference/MyEditTextPreference;->mIntent:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroidx/preference/MyEditTextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_14
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3
    .param p1, "holder"  # Landroidx/preference/PreferenceViewHolder;

    .line 36
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 37
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 38
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 4
    .param p1, "positiveResult"  # Z

    .line 61
    if-eqz p1, :cond_f

    .line 62
    invoke-virtual {p0}, Landroidx/preference/MyEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroidx/preference/MyEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 64
    invoke-virtual {p0, v0}, Landroidx/preference/MyEditTextPreference;->setText(Ljava/lang/String;)V

    .line 68
    .end local v0  # "val":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"  # Landroid/view/View;

    .line 79
    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mDefValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 80
    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mDefValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/MyEditTextPreference;->setText(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mContext:Landroid/content/Context;

    const-string v2, "Default value restored"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_25

    .line 84
    :cond_1a
    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mContext:Landroid/content/Context;

    const-string v2, "No default value to restore"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    :goto_25
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 3
    .param p1, "defaultValue"  # Ljava/lang/Object;

    .line 42
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    iput-object v0, p0, Landroidx/preference/MyEditTextPreference;->mDefValue:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 44
    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mDefValue:Ljava/lang/String;

    iput-object v0, p0, Landroidx/preference/MyEditTextPreference;->mValue:Ljava/lang/String;

    .line 46
    :cond_17
    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/MyEditTextPreference;->setText(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/MyEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"  # Ljava/lang/String;

    .line 52
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 54
    iget-object v0, p0, Landroidx/preference/MyEditTextPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroidx/preference/MyEditTextPreference;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    invoke-virtual {p0, p1}, Landroidx/preference/MyEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroidx/preference/MyEditTextPreference;->sendIntent()V

    .line 56
    invoke-virtual {p0}, Landroidx/preference/MyEditTextPreference;->notifyChanged()V

    .line 58
    :cond_1d
    return-void
.end method
