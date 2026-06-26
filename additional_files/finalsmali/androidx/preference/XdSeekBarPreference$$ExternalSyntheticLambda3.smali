# xdclasses.dex

.class public final synthetic Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/preference/XdSeekBarPreference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/XdSeekBarPreference;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda3;->f$0:Landroidx/preference/XdSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference$$ExternalSyntheticLambda3;->f$0:Landroidx/preference/XdSeekBarPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/XdSeekBarPreference;->lambda$onClickLogics$3$androidx-preference-XdSeekBarPreference(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
