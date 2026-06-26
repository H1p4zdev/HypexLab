# classes12.dex

.class Lcom/android/mmscustombg/CustomBg$CustomViewObserver;
.super Landroid/database/ContentObserver;
.source "CustomBg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mmscustombg/CustomBg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomViewObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mmscustombg/CustomBg;


# direct methods
.method public constructor <init>(Lcom/android/mmscustombg/CustomBg;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/mmscustombg/CustomBg$CustomViewObserver;->this$0:Lcom/android/mmscustombg/CustomBg;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/mmscustombg/CustomBg$CustomViewObserver;->this$0:Lcom/android/mmscustombg/CustomBg;

    invoke-static {v0}, Lcom/android/mmscustombg/CustomBg;->access$000(Lcom/android/mmscustombg/CustomBg;)V

    iget-object v0, p0, Lcom/android/mmscustombg/CustomBg$CustomViewObserver;->this$0:Lcom/android/mmscustombg/CustomBg;

    invoke-static {v0}, Lcom/android/mmscustombg/CustomBg;->access$100(Lcom/android/mmscustombg/CustomBg;)V

    return-void
.end method
