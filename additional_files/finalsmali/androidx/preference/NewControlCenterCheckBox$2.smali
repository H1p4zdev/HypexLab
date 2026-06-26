# fixclasses.dex

.class Landroidx/preference/NewControlCenterCheckBox$2;
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

    iput-object p1, p0, Landroidx/preference/NewControlCenterCheckBox$2;->this$0:Landroidx/preference/NewControlCenterCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidx/preference/NewControlCenterCheckBox$2;->this$0:Landroidx/preference/NewControlCenterCheckBox;

    invoke-static {v0}, Landroidx/preference/NewControlCenterCheckBox;->access$000(Landroidx/preference/NewControlCenterCheckBox;)V

    return-void
.end method
