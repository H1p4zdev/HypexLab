# fixclasses.dex

.class Landroidx/preference/MyXSelectAppsPreference$AppDataActivityInfoComparator;
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
    name = "AppDataActivityInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ActivityInfo;",
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
.method public compare(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)I
    .registers 5

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/content/pm/ActivityInfo;

    check-cast p2, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/preference/MyXSelectAppsPreference$AppDataActivityInfoComparator;->compare(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method
