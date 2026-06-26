# newclasses.dex

.class public Landroidx/preference/XMiuiSeekBarPreferenceWDOff;
.super Landroidx/preference/XMiuiSeekBarPreference;
.source "XMiuiSeekBarPreferenceWDOff.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/preference/XMiuiSeekBarPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/preference/XMiuiSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/XMiuiSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/XMiuiSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onDependencyChanged(Landroidx/preference/Preference;Z)V
    .registers 4

    if-nez p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-super {p0, p1, v0}, Landroidx/preference/XMiuiSeekBarPreference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method
