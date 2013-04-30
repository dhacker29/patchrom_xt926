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
    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiRegDomService;->isInService:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mThread:Landroid/net/wifi/WifiRegDomService$MonitorThread;

    .line 61
    const-string v0, "XX"

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->clearCountryCode:Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/net/wifi/WifiRegDomService$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiRegDomService$1;-><init>(Landroid/net/wifi/WifiRegDomService;)V

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mThread:Landroid/net/wifi/WifiRegDomService$MonitorThread;

    .line 61
    const-string v0, "XX"

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->clearCountryCode:Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/net/wifi/WifiRegDomService$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiRegDomService$1;-><init>(Landroid/net/wifi/WifiRegDomService;)V

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    const-string v0, "WifiRegDomService"

    const-string v1, "WifiRegDomService Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object p1, p0, Landroid/net/wifi/WifiRegDomService;->mContext:Landroid/content/Context;

    .line 217
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Landroid/net/wifi/WifiRegDomService;->isInService:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiRegDomService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiRegDomService;->updateCountryCode(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiRegDomService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/net/wifi/WifiRegDomService;->updateSoftApDefaultFreq()V

    return-void
.end method

.method public static startThisService(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 292
    const-string v1, "WifiRegDomService"

    const-string/jumbo v2, "startThisService "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/net/wifi/WifiRegDomService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 295
    return-void
.end method

.method private updateCountryCode(Ljava/lang/String;Z)V
    .locals 2
    .parameter "isoCountryCode"
    .parameter "persist"

    .prologue
    .line 263
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiRegDomService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 264
    .local v0, wM:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    .line 265
    return-void
.end method

.method private updateSoftApDefaultFreq()V
    .locals 2

    .prologue
    .line 269
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiRegDomService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 270
    .local v0, wM:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->updateSoftApDefaultFreq()V

    .line 271
    return-void
.end method


# virtual methods
.method public getNetworkOperator()Ljava/lang/String;
    .locals 5

    .prologue
    .line 245
    const-string v3, "WifiRegDomService"

    const-string v4, "getNetworkOperator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v0, "000"

    .line 250
    .local v0, netMcc:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 251
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, networkMccMnc:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 255
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_0
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "WifiRegDomService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mFilter:Landroid/content/IntentFilter;

    .line 226
    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_ADVANCED_POLLING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Landroid/net/wifi/WifiRegDomService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiRegDomService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    new-instance v0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiRegDomService$RoamStateListener;-><init>(Landroid/net/wifi/WifiRegDomService;)V

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService;->roamingListener:Landroid/net/wifi/WifiRegDomService$RoamStateListener;

    .line 230
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 235
    const-string v0, "WifiRegDomService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->roamingListener:Landroid/net/wifi/WifiRegDomService$RoamStateListener;

    invoke-virtual {v0}, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->stopListen()V

    .line 238
    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiRegDomService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 241
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 71
    const-string v0, "WifiRegDomService"

    const-string/jumbo v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->roamingListener:Landroid/net/wifi/WifiRegDomService$RoamStateListener;

    invoke-virtual {v0}, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->startListen()V

    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public stopMonitoring()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mThread:Landroid/net/wifi/WifiRegDomService$MonitorThread;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService;->mThread:Landroid/net/wifi/WifiRegDomService$MonitorThread;

    invoke-virtual {v0}, Landroid/net/wifi/WifiRegDomService$MonitorThread;->stopThread()V

    .line 283
    :cond_0
    return-void
.end method
