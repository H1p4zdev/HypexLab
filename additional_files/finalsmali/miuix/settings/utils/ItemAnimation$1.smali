# listviewclasses.dex

.class final Lmiuix/settings/utils/ItemAnimation$1;
.super Ljava/lang/Object;
.source "ItemAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/settings/utils/ItemAnimation;->playAnim(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiuix/settings/utils/ItemAnimation$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lmiuix/settings/utils/ItemAnimation;->getInstance()Lmiuix/settings/utils/ItemAnimation;

    move-result-object v0

    iget-object v1, p0, Lmiuix/settings/utils/ItemAnimation$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/settings/utils/ItemAnimation;->goAnim(Landroid/view/View;)V

    return-void
.end method
