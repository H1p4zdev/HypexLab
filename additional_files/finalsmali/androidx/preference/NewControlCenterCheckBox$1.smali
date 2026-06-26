# fixclasses.dex

.class Landroidx/preference/NewControlCenterCheckBox$1;
.super Ljava/lang/Object;
.source "NewControlCenterCheckBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/NewControlCenterCheckBox;->updateCenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/NewControlCenterCheckBox;


# direct methods
.method constructor <init>(Landroidx/preference/NewControlCenterCheckBox;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/NewControlCenterCheckBox$1;->this$0:Landroidx/preference/NewControlCenterCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string/jumbo v0, "use_control_panel"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/preference/SettingsHelper;->putBoolinSettings(Ljava/lang/String;Z)V

    return-void
.end method
