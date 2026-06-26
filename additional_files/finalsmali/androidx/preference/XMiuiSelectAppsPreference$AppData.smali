# newclasses.dex

.class public Landroidx/preference/XMiuiSelectAppsPreference$AppData;
.super Ljava/lang/Object;
.source "XMiuiSelectAppsPreference.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field act:[Landroid/content/pm/ActivityInfo;

.field actChecked:[Z

.field checked:I

.field icon:Landroid/graphics/drawable/Drawable;

.field name:Ljava/lang/String;

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->checked:I

    iput-object v0, p0, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->act:[Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->actChecked:[Z

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/XMiuiSelectAppsPreference$AppData;)I
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->name:Ljava/lang/String;

    iget-object v1, p1, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->name:Ljava/lang/String;

    if-nez v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroidx/preference/XMiuiSelectAppsPreference$AppData;

    invoke-virtual {p0, p1}, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->compareTo(Landroidx/preference/XMiuiSelectAppsPreference$AppData;)I

    move-result v0

    return v0
.end method
