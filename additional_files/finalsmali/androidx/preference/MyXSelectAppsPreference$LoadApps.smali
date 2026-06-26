# fixclasses.dex

.class Landroidx/preference/MyXSelectAppsPreference$LoadApps;
.super Landroid/os/AsyncTask;
.source "MyXSelectAppsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/MyXSelectAppsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadApps"
.end annotation


# instance fields
.field connectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Landroidx/preference/MyXSelectAppsPreference;

.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method synthetic constructor <init>(Landroidx/preference/MyXSelectAppsPreference;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$1(Landroidx/preference/MyXSelectAppsPreference$LoadApps;Ljava/util/ArrayList;)V
    .registers 6

    invoke-direct {p0, p1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->sortWifi(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    invoke-static {v0}, Landroidx/preference/MyXSelectAppsPreference;->access$1(Landroidx/preference/MyXSelectAppsPreference;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_32

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    invoke-static {v0}, Landroidx/preference/MyXSelectAppsPreference;->access$2(Landroidx/preference/MyXSelectAppsPreference;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    invoke-static {v0}, Landroidx/preference/MyXSelectAppsPreference;->access$1(Landroidx/preference/MyXSelectAppsPreference;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, -0x1

    new-instance v1, Landroidx/preference/MyXSelectAppsPreference$Adapter;

    invoke-direct {v1, v0, v3, p1}, Landroidx/preference/MyXSelectAppsPreference$Adapter;-><init>(Landroidx/preference/MyXSelectAppsPreference;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast v1, Landroid/widget/ArrayAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    return-void

    :cond_32
    check-cast v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getActivitiesForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9

    const/4 p0, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "\u0003"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u0001"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    array-length v2, v3

    :goto_25
    if-ge v1, v2, :cond_44

    aget-object v4, v3, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    const-string v5, "\u0003"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_44

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_44
    :goto_44
    return-object v0
.end method

.method private getAllActivities(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    .registers 10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v4, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v7, Landroidx/preference/MyXSelectAppsPreference$AppDataActivityInfoComparator;

    invoke-direct {v7}, Landroidx/preference/MyXSelectAppsPreference$AppDataActivityInfoComparator;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v6, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1f

    array-length v4, v2

    if-eqz v4, :cond_1f

    invoke-static {v2, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v4, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v4}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v5, -0x3

    iput v5, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->act:[Landroid/content/pm/ActivityInfo;

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->actChecked:[Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_67
    return-object v1
.end method

.method private getAllApps(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v4, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v4, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v4}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_45
    return-object v1
.end method

.method private getAllInstalledApps(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x280

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    new-instance v4, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v4}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_38
    return-object v1
.end method

.method private getAllOpenWithApps(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    .registers 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "content://*/*"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "*/*"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "UserXP"

    const/4 v0, 0x1

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x20200

    invoke-virtual {p1, v4, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v4}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_6d
    return-object v1
.end method

.method private getAllShareApps(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "*/*"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "UserXP"

    const/4 v0, 0x1

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x20200

    invoke-virtual {p1, v4, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v4, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v4}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_50
    return-object v1
.end method

.method private getAllWifi()Ljava/util/ArrayList;
    .registers 6

    iget-object v1, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    invoke-virtual {v1}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v2, "wifi"

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->wifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Landroidx/preference/MyXSelectAppsPreference$LoadApps$Receiver;

    invoke-direct {v3, p0}, Landroidx/preference/MyXSelectAppsPreference$LoadApps$Receiver;-><init>(Landroidx/preference/MyXSelectAppsPreference$LoadApps;)V

    iput-object v3, v1, Landroidx/preference/MyXSelectAppsPreference;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private getPackagesWithActivities(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "\u0001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    array-length v2, v3

    :goto_14
    if-ge v1, v2, :cond_2a

    aget-object v4, v3, v1

    const-string v5, "\u0003"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_27

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2a
    return-object v0
.end method

.method private getSignalNullIcon()Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "stat_sys_wifi_signal_null"

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1d

    const-string/jumbo v1, "stat_notify_wifi_in_range"

    const-string v3, "android"

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_29

    :cond_1d
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, -0xde690d

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_29
    return-object v0
.end method

.method private join(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 6

    const-string v1, ""

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_31
    return-object v1
.end method

.method private removeActivityFromKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8d

    const-string v5, "\u0003"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "\u0001"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2e
    if-ge v1, v2, :cond_8d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    const-string v5, "\u0003"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    :goto_4f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_8a

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_77

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_80

    const-string v0, ""

    goto :goto_86

    :cond_77
    const-string v3, "\u0003"

    invoke-direct {p0, v3, v4}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->join(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_80
    const-string v3, "\u0001"

    invoke-direct {p0, v3, v0}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->join(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    :goto_86
    return-object v0

    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_8d
    return-object p3
.end method

.method private removePackageWithActivitiesFromKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v0, ""

    if-nez v1, :cond_4c

    const-string v2, "\u0003"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\u0001"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_30
    if-ge v1, v2, :cond_4b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v3, "\u0001"

    invoke-direct {p0, v3, v0}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->join(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_4b
    move-object v0, p2

    :cond_4c
    :goto_4c
    return-object v0
.end method

.method private sortActivities(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 24

    move-object/from16 v5, p0

    iget-object v0, v5, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    new-instance v6, Landroidx/preference/MyXSelectAppsPreference$AppDataComparator;

    invoke-direct {v6}, Landroidx/preference/MyXSelectAppsPreference$AppDataComparator;-><init>()V

    move-object/from16 v11, p1

    invoke-static {v11, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v9, Landroidx/preference/MyXSelectAppsPreference$AppDataActivityInfoComparator;

    invoke-direct {v9}, Landroidx/preference/MyXSelectAppsPreference$AppDataActivityInfoComparator;-><init>()V

    invoke-static {v0}, Landroidx/preference/MyXSelectAppsPreference;->access$3(Landroidx/preference/MyXSelectAppsPreference;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->getPackagesWithActivities(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move/from16 v19, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ltz v0, :cond_12d

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_120

    new-instance v5, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v5}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-static {v1, v5, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-ltz v1, :cond_124

    move/from16 v21, v1

    const/4 v11, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/MyXSelectAppsPreference$AppData;

    move-object/from16 v13, p0

    invoke-direct {v13, v4, v8}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->getActivitiesForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    iget-object v5, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->act:[Landroid/content/pm/ActivityInfo;

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    new-instance v6, Landroid/content/pm/ActivityInfo;

    invoke-direct {v6}, Landroid/content/pm/ActivityInfo;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_73
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v15, v12, :cond_c5

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v12

    if-ltz v12, :cond_bc

    move/from16 v20, v12

    if-nez v11, :cond_ab

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v12, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v12}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    const/4 v1, -0x4

    iput v1, v12, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    iget-object v14, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iput-object v14, v12, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iget-object v14, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    iput-object v14, v12, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    iget-object v14, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v14, v12, Landroidx/preference/MyXSelectAppsPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    :cond_ab
    move/from16 v12, v20

    aget-object v1, v5, v12

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v12, v20

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    :goto_b9
    add-int/lit8 v15, v15, 0x1

    goto :goto_73

    :cond_bc
    move-object/from16 v12, p0

    invoke-direct {v12, v4, v1, v8}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->removeActivityFromKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v19, 0x1

    goto :goto_b9

    :cond_c5
    if-eqz v11, :cond_11a

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-static {v3, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v14

    array-length v3, v14

    const-class v0, [Landroid/content/pm/ActivityInfo;

    invoke-static {v14, v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/pm/ActivityInfo;

    iput-object v14, v1, Landroidx/preference/MyXSelectAppsPreference$AppData;->act:[Landroid/content/pm/ActivityInfo;

    array-length v14, v14

    new-array v14, v14, [Z

    const/4 v3, 0x1

    invoke-static {v14, v3}, Ljava/util/Arrays;->fill([ZZ)V

    iput-object v14, v1, Landroidx/preference/MyXSelectAppsPreference$AppData;->actChecked:[Z

    invoke-virtual {v10, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_ff

    move/from16 v6, v21

    move-object/from16 v1, p1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_11a

    :cond_ff
    invoke-virtual {v7}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v14

    array-length v3, v14

    const-class v0, [Landroid/content/pm/ActivityInfo;

    invoke-static {v14, v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/pm/ActivityInfo;

    iput-object v14, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->act:[Landroid/content/pm/ActivityInfo;

    array-length v14, v14

    new-array v14, v14, [Z

    iput-object v14, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->actChecked:[Z

    move/from16 v1, v21

    move-object/from16 v14, p1

    invoke-virtual {v14, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_11a
    :goto_11a
    move/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    :cond_120
    :goto_120
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_29

    :cond_124
    move-object/from16 v2, p0

    invoke-direct {v2, v4, v8}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->removePackageWithActivitiesFromKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v19, 0x1

    goto :goto_120

    :cond_12d
    if-eqz v19, :cond_136

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/MyXSelectAppsPreference;->setString(Ljava/lang/String;)V

    :cond_136
    move-object/from16 v11, p1

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x1

    :goto_145
    if-ltz v7, :cond_171

    move/from16 v9, v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/MyXSelectAppsPreference$AppData;

    iget-object v2, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->act:[Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x0

    array-length v6, v2

    :goto_153
    if-ge v0, v6, :cond_16e

    aget-object v1, v2, v0

    new-instance v4, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v4}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v3, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    iput v8, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v10, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_153

    :cond_16e
    add-int/lit8 v7, v7, -0x1

    goto :goto_145

    :cond_171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    iget-object v4, v0, Landroidx/preference/MyXSelectAppsPreference;->mUncheckedTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v5, :cond_183

    if-eqz v3, :cond_1ac

    :cond_183
    const/4 v2, -0x1

    new-instance v5, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v5}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iput v2, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1ac

    iget-object v4, v0, Landroidx/preference/MyXSelectAppsPreference;->mCheckedTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1ac

    const/4 v2, -0x1

    new-instance v5, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v5}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iput v2, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1ac
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v10
.end method

.method private sortApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 10

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    new-instance v6, Landroidx/preference/MyXSelectAppsPreference$AppDataComparator;

    invoke-direct {v6}, Landroidx/preference/MyXSelectAppsPreference$AppDataComparator;-><init>()V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Landroidx/preference/MyXSelectAppsPreference;->access$3(Landroidx/preference/MyXSelectAppsPreference;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "\u0001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    new-instance v5, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v5}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    const/4 v7, 0x0

    :goto_28
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_56

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-ltz v1, :cond_51

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/MyXSelectAppsPreference$AppData;

    const/4 v4, 0x1

    iput v4, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_51
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v7, 0x1

    goto :goto_28

    :cond_56
    if-eqz v7, :cond_7e

    const/4 v0, 0x0

    const-string v5, "\u0001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_60
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_75

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v0, :cond_6f

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :cond_75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/MyXSelectAppsPreference;->setString(Ljava/lang/String;)V

    :cond_7e
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_9e

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/MyXSelectAppsPreference$AppData;

    iget v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    if-eqz v2, :cond_9b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    :cond_9e
    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    iget-object v4, v0, Landroidx/preference/MyXSelectAppsPreference;->mUncheckedTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_aa

    if-eqz v3, :cond_d3

    :cond_aa
    const/4 v2, -0x1

    new-instance v5, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v5}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iput v2, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    invoke-virtual {p1, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v3, :cond_d3

    iget-object v4, v0, Landroidx/preference/MyXSelectAppsPreference;->mCheckedTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d3

    const/4 v2, -0x1

    new-instance v5, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v5}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iput v2, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_d3
    return-object p1
.end method

.method private sortWifi(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 11

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    new-instance v6, Landroidx/preference/MyXSelectAppsPreference$AppDataComparator;

    invoke-direct {v6}, Landroidx/preference/MyXSelectAppsPreference$AppDataComparator;-><init>()V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroidx/preference/MyXSelectAppsPreference;->access$3(Landroidx/preference/MyXSelectAppsPreference;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "\u0001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    new-instance v5, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v5}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    :goto_2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_78

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string/jumbo v8, "\u0003"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aget-object v8, v4, v8

    iput-object v8, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-ltz v1, :cond_5f

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/MyXSelectAppsPreference$AppData;

    const/4 v4, 0x1

    iput v4, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_5f
    array-length v1, v4

    const/4 v2, 0x1

    iput v2, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    if-le v1, v2, :cond_67

    aget-object v8, v4, v2

    :cond_67
    iput-object v8, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->getSignalNullIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v5}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    goto :goto_5c

    :cond_78
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_81
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_9c

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/MyXSelectAppsPreference$AppData;

    iget v2, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    if-eqz v2, :cond_99

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    :cond_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    :cond_9c
    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    iget-object v4, v0, Landroidx/preference/MyXSelectAppsPreference;->mUncheckedTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a8

    if-eqz v3, :cond_d1

    :cond_a8
    const/4 v2, -0x1

    new-instance v5, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v5}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iput v2, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    invoke-virtual {p1, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v3, :cond_d1

    iget-object v4, v0, Landroidx/preference/MyXSelectAppsPreference;->mCheckedTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d1

    const/4 v2, -0x1

    new-instance v5, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v5}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    iput-object v4, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iput v2, v5, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_d1
    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 5

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    invoke-virtual {v0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v0, v0, Landroidx/preference/MyXSelectAppsPreference;->mExtra:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_25

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x5

    if-eq v0, v2, :cond_34

    invoke-direct {p0, v1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->getAllApps(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_39

    :cond_20
    invoke-direct {p0, v1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->getAllActivities(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_39

    :cond_25
    invoke-direct {p0, v1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->getAllShareApps(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_39

    :cond_2a
    invoke-direct {p0, v1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->getAllOpenWithApps(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_39

    :cond_2f
    invoke-direct {p0}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->getAllWifi()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_39

    :cond_34
    invoke-direct {p0, v1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->getAllInstalledApps(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_39

    :goto_39
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    iget v3, v0, Landroidx/preference/MyXSelectAppsPreference;->mExtra:I

    const/4 v2, 0x1

    if-eq v3, v2, :cond_20

    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    const/4 v2, 0x3

    if-eq v3, v2, :cond_25

    const/4 v2, 0x4

    if-eq v3, v2, :cond_2a

    const/4 v2, 0x5

    if-eq v3, v2, :cond_2c

    invoke-direct {p0, p1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->sortApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_31

    :cond_1b
    invoke-direct {p0, p1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->sortActivities(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_31

    :cond_20
    invoke-direct {p0, p1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->sortApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_31

    :cond_25
    invoke-direct {p0, p1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->sortApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_31

    :cond_2a
    return-void

    goto :goto_31

    :cond_2c
    invoke-direct {p0, p1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->sortApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_31

    :goto_31
    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    invoke-static {v0}, Landroidx/preference/MyXSelectAppsPreference;->access$2(Landroidx/preference/MyXSelectAppsPreference;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->this$0:Landroidx/preference/MyXSelectAppsPreference;

    invoke-static {v0}, Landroidx/preference/MyXSelectAppsPreference;->access$1(Landroidx/preference/MyXSelectAppsPreference;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, -0x1

    new-instance v1, Landroidx/preference/MyXSelectAppsPreference$Adapter;

    invoke-direct {v1, v0, v3, p1}, Landroidx/preference/MyXSelectAppsPreference$Adapter;-><init>(Landroidx/preference/MyXSelectAppsPreference;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast v1, Landroid/widget/ArrayAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    return-void
.end method
