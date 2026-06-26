# newclasses.dex

.class Landroidx/preference/XMiuiSeekBarPreference2$2;
.super Ljava/lang/Object;
.source "XMiuiSeekBarPreference2.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Landroidx/preference/XMiuiSeekBarPreference2$2;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference2$2;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    invoke-static {v0}, Landroidx/preference/XMiuiSeekBarPreference2;->access$500(Landroidx/preference/XMiuiSeekBarPreference2;)Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x15

    if-eq p2, v0, :cond_18

    const/16 v0, 0x16

    if-ne p2, v0, :cond_19

    :cond_18
    return v1

    :cond_19
    const/16 v0, 0x17

    if-eq p2, v0, :cond_3f

    const/16 v0, 0x42

    if-ne p2, v0, :cond_22

    goto :goto_3f

    :cond_22
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference2$2;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    invoke-static {v0}, Landroidx/preference/XMiuiSeekBarPreference2;->access$600(Landroidx/preference/XMiuiSeekBarPreference2;)Lmiuix/androidbasewidget/widget/SeekBar;

    move-result-object v0

    if-nez v0, :cond_34

    invoke-static {}, Landroidx/preference/XMiuiSeekBarPreference2;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SeekBar view is null and hence cannot be adjusted."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_34
    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference2$2;->this$0:Landroidx/preference/XMiuiSeekBarPreference2;

    invoke-static {v0}, Landroidx/preference/XMiuiSeekBarPreference2;->access$600(Landroidx/preference/XMiuiSeekBarPreference2;)Lmiuix/androidbasewidget/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lmiuix/androidbasewidget/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_3f
    :goto_3f
    return v1
.end method
