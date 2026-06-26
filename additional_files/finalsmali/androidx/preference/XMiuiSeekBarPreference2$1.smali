# newclasses.dex

.class Landroidx/preference/XMiuiSeekBarPreference2$1;
.super Ljava/lang/Object;
.source "XMiuiSeekBarPreference2.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/XMiuiSeekBarPreference2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/XMiuiSeekBarPreference2;


# direct methods
.method constructor <init>(Landroidx/preference/XMiuiSeekBarPreference2;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/XMiuiSeekBarPreference2$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    if-eqz p3, :cond_7

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference2$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    invoke-static {v0, p1}, Landroidx/preference/XMiuiSeekBarPreference2;->access$000(Landroidx/preference/XMiuiSeekBarPreference2;Landroid/widget/SeekBar;)V

    :cond_7
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference2$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/preference/XMiuiSeekBarPreference2;->access$102(Landroidx/preference/XMiuiSeekBarPreference2;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference2$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/preference/XMiuiSeekBarPreference2;->access$102(Landroidx/preference/XMiuiSeekBarPreference2;Z)Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v2, p0, Landroidx/preference/XMiuiSeekBarPreference2$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    invoke-static {v2}, Landroidx/preference/XMiuiSeekBarPreference2;->access$200(Landroidx/preference/XMiuiSeekBarPreference2;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Landroidx/preference/XMiuiSeekBarPreference2$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    invoke-static {v2}, Landroidx/preference/XMiuiSeekBarPreference2;->access$300(Landroidx/preference/XMiuiSeekBarPreference2;)I

    move-result v2

    if-eq v0, v2, :cond_1e

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference2$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    invoke-static {v0, p1}, Landroidx/preference/XMiuiSeekBarPreference2;->access$000(Landroidx/preference/XMiuiSeekBarPreference2;Landroid/widget/SeekBar;)V

    :cond_1e
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference2$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    invoke-static {v0}, Landroidx/preference/XMiuiSeekBarPreference2;->access$400(Landroidx/preference/XMiuiSeekBarPreference2;)I

    move-result v2

    iget-object v3, p0, Landroidx/preference/XMiuiSeekBarPreference2$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    invoke-static {v3}, Landroidx/preference/XMiuiSeekBarPreference2;->access$200(Landroidx/preference/XMiuiSeekBarPreference2;)I

    move-result v3

    if-ne v2, v3, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiSeekBarPreference2;->notifyDependencyChange(Z)V

    return-void
.end method
