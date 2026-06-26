# newclasses.dex

.class Landroidx/preference/XMiuiSelectAppsPreference$AppDataComparator;
.super Ljava/lang/Object;
.source "XMiuiSelectAppsPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/XMiuiSelectAppsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppDataComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/preference/XMiuiSelectAppsPreference$AppData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/preference/XMiuiSelectAppsPreference$AppData;Landroidx/preference/XMiuiSelectAppsPreference$AppData;)I
    .registers 5

    iget-object v1, p1, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iget-object v0, p2, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroidx/preference/XMiuiSelectAppsPreference$AppData;

    check-cast p2, Landroidx/preference/XMiuiSelectAppsPreference$AppData;

    invoke-virtual {p0, p1, p2}, Landroidx/preference/XMiuiSelectAppsPreference$AppDataComparator;->compare(Landroidx/preference/XMiuiSelectAppsPreference$AppData;Landroidx/preference/XMiuiSelectAppsPreference$AppData;)I

    move-result v0

    return v0
.end method
