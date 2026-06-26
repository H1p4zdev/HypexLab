# fixclasses.dex

.class Landroidx/preference/MyXSelectAppsPreference$AppDataComparator;
.super Ljava/lang/Object;
.source "MyXSelectAppsPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/MyXSelectAppsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppDataComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/preference/MyXSelectAppsPreference$AppData;",
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
.method public compare(Landroidx/preference/MyXSelectAppsPreference$AppData;Landroidx/preference/MyXSelectAppsPreference$AppData;)I
    .registers 5

    iget-object v1, p1, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iget-object v0, p2, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroidx/preference/MyXSelectAppsPreference$AppData;

    check-cast p2, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-virtual {p0, p1, p2}, Landroidx/preference/MyXSelectAppsPreference$AppDataComparator;->compare(Landroidx/preference/MyXSelectAppsPreference$AppData;Landroidx/preference/MyXSelectAppsPreference$AppData;)I

    move-result v0

    return v0
.end method
