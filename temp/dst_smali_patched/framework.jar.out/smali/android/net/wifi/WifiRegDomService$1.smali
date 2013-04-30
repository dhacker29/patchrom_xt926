.class Landroid/net/wifi/WifiRegDomService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiRegDomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiRegDomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiRegDomService;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiRegDomService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiRegDomService$1;->this$0:Landroid/net/wifi/WifiRegDomService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v0, "WifiRegDomService"

    const-string v1, "BR onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_ADVANCED_POLLING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiRegDomService;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiRegDomService"

    const-string v1, "Clearing COuntry Code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService$1;->this$0:Landroid/net/wifi/WifiRegDomService;

    const-string v1, "XX"

    const/4 v2, 0x1

    #calls: Landroid/net/wifi/WifiRegDomService;->updateCountryCode(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiRegDomService;->access$100(Landroid/net/wifi/WifiRegDomService;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
