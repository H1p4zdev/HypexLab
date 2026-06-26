# newclasses.dex

.class public Landroidx/preference/XMiuiCheckBoxPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "XMiuiCheckBoxPreference.java"


# instance fields
.field private Helper:Landroidx/preference/XMiuiPreferenceHelper;

.field private mDefaultValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "set"  # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v1, Landroidx/preference/XMiuiPreferenceHelper;

    invoke-direct {v1, p1, p2}, Landroidx/preference/XMiuiPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    .line 14
    invoke-virtual {p0, v3}, Landroidx/preference/XMiuiCheckBoxPreference;->setPersistent(Z)V

    .line 16
    iget-object v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "defaultValue"

    invoke-virtual {v1, v2}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeAndroidValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_20

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 17
    :cond_20
    iget-object v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "defaultValue"

    invoke-virtual {v1, v2, v3}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeAndroidBool(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiCheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 18
    :cond_2f
    iget-object v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v2, p0, Landroidx/preference/XMiuiCheckBoxPreference;->mDefaultValue:I

    invoke-virtual {v1, v2}, Landroidx/preference/XMiuiPreferenceHelper;->getBool(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiCheckBoxPreference;->setChecked(Z)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 5
    .param p1, "typedArray"  # Landroid/content/res/TypedArray;
    .param p2, "n"  # I

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    iput v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->mDefaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "defaultValue"  # Ljava/lang/Object;

    .prologue
    .line 32
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 33
    check-cast p1, Ljava/lang/Boolean;

    .end local p1  # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_d
    iput v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->mDefaultValue:I

    .line 34
    :cond_f
    iget-object v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->mDefaultValue:I

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->getBool(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiCheckBoxPreference;->setChecked(Z)V

    .line 35
    return-void

    .line 33
    :cond_1b
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setChecked(Z)V
    .registers 4
    .param p1, "checked"  # Z

    .prologue
    .line 54
    invoke-virtual {p0}, Landroidx/preference/XMiuiCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_9

    .line 55
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    :cond_9
    iget-object v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->mDefaultValue:I

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->getBool(I)Z

    move-result v0

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-nez v0, :cond_28

    .line 57
    :cond_1b
    iget-object v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {v1, v0}, Landroidx/preference/XMiuiPreferenceHelper;->setInt(I)V

    .line 58
    iget-object v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    .line 60
    :cond_28
    return-void

    .line 57
    :cond_29
    const/4 v0, 0x0

    goto :goto_20
.end method
