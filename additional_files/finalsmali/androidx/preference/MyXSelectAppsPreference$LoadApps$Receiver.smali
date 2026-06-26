# fixclasses.dex

.class Landroidx/preference/MyXSelectAppsPreference$LoadApps$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "MyXSelectAppsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/MyXSelectAppsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/MyXSelectAppsPreference$LoadApps;


# direct methods
.method synthetic constructor <init>(Landroidx/preference/MyXSelectAppsPreference$LoadApps;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps$Receiver;->this$0:Landroidx/preference/MyXSelectAppsPreference$LoadApps;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getSignalIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stat_sys_wifi_signal_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_38

    const-string/jumbo v2, "stat_sys_wifi_signal_"

    const-string v3, "ic_wifi_signal_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_44

    :cond_38
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, -0xde690d

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_44
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps$Receiver;->this$0:Landroidx/preference/MyXSelectAppsPreference$LoadApps;

    iget-object v0, v0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v3, 0x1

    const-string v2, "Turn on Wi-Fi ☺"

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_20
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_83

    check-cast v3, Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_37

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v3, :cond_83

    :cond_37
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void

    :cond_3b
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps$Receiver;->this$0:Landroidx/preference/MyXSelectAppsPreference$LoadApps;

    iget-object v0, v0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v2, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v2}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v3, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v3, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    const/4 v0, 0x5

    invoke-static {v3, v0}, Landroid/net/wifi/MiuiWifiManager;->calculateSignalLevel(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/preference/MyXSelectAppsPreference$LoadApps$Receiver;->getSignalIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Landroidx/preference/MyXSelectAppsPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_7e
    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference$LoadApps$Receiver;->this$0:Landroidx/preference/MyXSelectAppsPreference$LoadApps;

    invoke-static {v0, v4}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->access$1(Landroidx/preference/MyXSelectAppsPreference$LoadApps;Ljava/util/ArrayList;)V

    :cond_83
    return-void
.end method
