# fixclasses.dex

.class public Landroidx/preference/NewControlCenterCheckBox;
.super Landroidx/preference/XMiuiCheckBoxPreference;
.source "NewControlCenterCheckBox.java"


# instance fields
.field private isValueSet:Z

.field private mLoadingIcon:Lmiuix/appcompat/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidx/preference/XMiuiCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/NewControlCenterCheckBox;->isValueSet:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/preference/NewControlCenterCheckBox;)V
    .registers 1

    invoke-direct {p0}, Landroidx/preference/NewControlCenterCheckBox;->hideLoadingIcon()V

    return-void
.end method

.method private hideLoadingIcon()V
    .registers 3

    iget-object v0, p0, Landroidx/preference/NewControlCenterCheckBox;->mLoadingIcon:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiuix/appcompat/app/ProgressDialog;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/preference/NewControlCenterCheckBox;->mLoadingIcon:Lmiuix/appcompat/app/ProgressDialog;

    :cond_a
    return-void
.end method

.method private showLoadingIcon()V
    .registers 4

    iget-object v0, p0, Landroidx/preference/NewControlCenterCheckBox;->mLoadingIcon:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroidx/preference/NewControlCenterCheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v2, "Подождите…"

    invoke-static {v1, v0, v2}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/NewControlCenterCheckBox;->mLoadingIcon:Lmiuix/appcompat/app/ProgressDialog;

    :cond_14
    return-void
.end method

.method private updateCenter()V
    .registers 5

    invoke-direct {p0}, Landroidx/preference/NewControlCenterCheckBox;->showLoadingIcon()V

    const-string/jumbo v0, "use_control_panel"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/preference/SettingsHelper;->putBoolinSettings(Ljava/lang/String;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroidx/preference/NewControlCenterCheckBox$1;

    invoke-direct {v1, p0}, Landroidx/preference/NewControlCenterCheckBox$1;-><init>(Landroidx/preference/NewControlCenterCheckBox;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroidx/preference/NewControlCenterCheckBox$2;

    invoke-direct {v1, p0}, Landroidx/preference/NewControlCenterCheckBox$2;-><init>(Landroidx/preference/NewControlCenterCheckBox;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .registers 4

    invoke-virtual {p0}, Landroidx/preference/NewControlCenterCheckBox;->isChecked()Z

    move-result v0

    invoke-super {p0, p1}, Landroidx/preference/XMiuiCheckBoxPreference;->setChecked(Z)V

    if-eq p1, v0, :cond_10

    iget-boolean v1, p0, Landroidx/preference/NewControlCenterCheckBox;->isValueSet:Z

    if-eqz v1, :cond_10

    invoke-direct {p0}, Landroidx/preference/NewControlCenterCheckBox;->updateCenter()V

    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/preference/NewControlCenterCheckBox;->isValueSet:Z

    return-void
.end method
