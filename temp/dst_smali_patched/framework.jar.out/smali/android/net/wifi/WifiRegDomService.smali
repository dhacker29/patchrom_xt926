.class public Landroid/net/wifi/WifiRegDomService;
.super Landroid/app/Service;
.source "WifiRegDomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiRegDomService$MonitorThread;,
        Landroid/net/wifi/WifiRegDomService$RoamStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiRegDomService"

.field public static final WIFI_ADVANCED_POLLING_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_ADVANCED_POLLING"

.field private static isInService:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final clearCountryCode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mFilter:Landroid/content/IntentFilter;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Landroid/net/wifi/WifiRegDomService$MonitorThread;

.field private roamingListener:Landroid/net/wifi/WifiRegDomService$RoamStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiRegDomService;->isInService:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mThread:Landroid/net/wifi/WifiRegDomService$MonitorThread;

    const-string v0, "XX"

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->clearCountryCode:Ljava/lang/String;

    new-instance v0, Landroid/net/wifi/WifiRegDomService$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiRegDomService$1;-><init>(Landroid/net/wifi/WifiRegDomService;)V

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mThread:Landroid/net/wifi/WifiRegDomService$MonitorThread;

    const-string v0, "XX"

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->clearCountryCode:Ljava/lang/String;

    new-instance v0, Landroid/net/wifi/WifiRegDomService$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiRegDomService$1;-><init>(Landroid/net/wifi/WifiRegDomService;)V

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "WifiRegDomService"

    const-string v1, "WifiRegDomService Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/net/wifi/WifiRegDomService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/WifiRegDomService;->isInService:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiRegDomService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiRegDomService;->updateCountryCode(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiRegDomService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiRegDomService;->updateSoftApDefaultFreq()V

    return-void
.end method

.method public static startThisService(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    const-string v1, "WifiRegDomService"

    const-string v2, "startThisService "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/net/wifi/WifiRegDomService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private updateCountryCode(Ljava/lang/String;Z)V
    .locals 2
    .parameter "isoCountryCode"
    .parameter "persist"

    .prologue
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiRegDomService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .local v0, wM:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateSoftApDefaultFreq()V
    .locals 2

    .prologue
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiRegDomService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .local v0, wM:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->updateSoftApDefaultFreq()V

    return-void
.end method


# virtual methods
.method public getNetworkOperator()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v3, "WifiRegDomService"

    const-string v4, "getNetworkOperator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "000"

    .local v0, netMcc:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .local v1, networkMccMnc:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const-string v0, "WifiRegDomService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_ADVANCED_POLLING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Landroid/net/wifi/WifiRegDomService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiRegDomService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiRegDomService$RoamStateListener;-><init>(Landroid/net/wifi/WifiRegDomService;)V

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->roamingListener:Landroid/net/wifi/WifiRegDomService$RoamStateListener;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const-string v0, "WifiRegDomService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->roamingListener:Landroid/net/wifi/WifiRegDomService$RoamStateListener;

    invoke-virtual {v0}, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->stopListen()V

    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiRegDomService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const-string v0, "WifiRegDomService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->roamingListener:Landroid/net/wifi/WifiRegDomService$RoamStateListener;

    invoke-virtual {v0}, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->startListen()V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public stopMonitoring()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mThread:Landroid/net/wifi/WifiRegDomService$MonitorThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mThread:Landroid/net/wifi/WifiRegDomService$MonitorThread;

    invoke-virtual {v0}, Landroid/net/wifi/WifiRegDomService$MonitorThread;->stopThread()V

    :cond_0
    return-void
.end method
