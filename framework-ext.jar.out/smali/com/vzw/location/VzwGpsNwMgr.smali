.class public Lcom/vzw/location/VzwGpsNwMgr;
.super Ljava/lang/Object;
.source "VzwGpsNwMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;
    }
.end annotation


# static fields
.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.vzwlocation.nwmgr.ALARM_TIMEOUT"

.field private static final DEBUG:Z = false

.field private static final DELAY:J = 0x2710L

.field private static final KEEP_ALIVE_INTERVAL:J = 0x7530L

.field private static final MAX_KEEP_ALIVE:I = 0x8

.field private static final MAX_RETRY:I = 0x5

.field private static final NO_RESET_RETRY:Z = false

.field private static final ON_DEMAND_MODE:I = 0x0

.field private static final ON_SETTING_MODE:I = 0x1

.field private static final PDP_TIMEOUT:J = 0x7530L

.field private static final RESET_RETRY:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwGpsNwMgr"

.field private static mIsPdpEnabled:Z


# instance fields
.field private agpsProviderEnabled:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIpAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepAliveCount:I

.field private mMode:I

.field private mPdpConnected:Landroid/os/ConditionVariable;

.field private mRetryCount:I

.field private mRunDisablePdp:Ljava/lang/Runnable;

.field private mRunEnablePdp:Ljava/lang/Runnable;

.field private mRunPdpKeepAlive:Ljava/lang/Runnable;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v1, Lcom/vzw/location/VzwGpsNwMgr$1;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsNwMgr$1;-><init>(Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunEnablePdp:Ljava/lang/Runnable;

    .line 159
    new-instance v1, Lcom/vzw/location/VzwGpsNwMgr$2;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsNwMgr$2;-><init>(Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunDisablePdp:Ljava/lang/Runnable;

    .line 251
    new-instance v1, Lcom/vzw/location/VzwGpsNwMgr$3;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsNwMgr$3;-><init>(Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunPdpKeepAlive:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mContext:Landroid/content/Context;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mIpAddresses:Ljava/util/List;

    .line 94
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    .line 95
    iput v4, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    .line 96
    iput v4, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    .line 97
    iput-boolean v4, p0, Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z

    .line 98
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mPdpConnected:Landroid/os/ConditionVariable;

    .line 99
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 101
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mAlarmManager:Landroid/app/AlarmManager;

    .line 102
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.vzwlocation.nwmgr.ALARM_TIMEOUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "com.android.internal.vzwlocation.nwmgr.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    :cond_0
    new-instance v1, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;-><init>(Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mBroadcastReceiver:Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;

    .line 113
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->mBroadcastReceiver:Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsNwMgr;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vzw/location/VzwGpsNwMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/vzw/location/VzwGpsNwMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mKeepAliveCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/vzw/location/VzwGpsNwMgr;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mKeepAliveCount:I

    return p1
.end method

.method static synthetic access$1008(Lcom/vzw/location/VzwGpsNwMgr;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mKeepAliveCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mKeepAliveCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/vzw/location/VzwGpsNwMgr;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/vzw/location/VzwGpsNwMgr;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunPdpKeepAlive:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwGpsNwMgr;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->onPdpConnectLocked()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    sput-boolean p0, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vzw/location/VzwGpsNwMgr;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpLocked(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/vzw/location/VzwGpsNwMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mTimeoutIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private addAllRoutesLocked()V
    .locals 2

    .prologue
    .line 373
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mIpAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 374
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwGpsNwMgr;->addRouteLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_0
    return-void
.end method

.method private addRouteLocked(Ljava/lang/String;)V
    .locals 3
    .parameter "host"

    .prologue
    .line 381
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-boolean v1, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    if-eqz v1, :cond_0

    .line 382
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->lookupHost(Ljava/lang/String;)I

    move-result v0

    .line 383
    .local v0, inetAddr:I
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    .line 387
    .end local v0           #inetAddr:I
    :goto_0
    return-void

    .line 385
    :cond_0
    const-string v1, "VzwGpsNwMgr"

    const-string v2, "Error in addRoute"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 4

    .prologue
    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, wifiConnected:Z
    iget-object v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 392
    .local v0, mWifi:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const/4 v1, 0x1

    .line 395
    :cond_0
    return v1
.end method

.method private static lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 409
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 415
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 416
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 420
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 410
    :catch_0
    move-exception v2

    .line 411
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private onPdpConnectLocked()V
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    .line 243
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunEnablePdp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    .line 245
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mPdpConnected:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->addAllRoutesLocked()V

    .line 249
    return-void
.end method

.method private startKeepAliveTimer()V
    .locals 6

    .prologue
    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mKeepAliveCount:I

    .line 273
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunPdpKeepAlive:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunPdpKeepAlive:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 278
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x3a980

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/vzw/location/VzwGpsNwMgr;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 281
    return-void
.end method

.method private startUsingPdpBlocking()V
    .locals 3

    .prologue
    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    sget-boolean v0, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->startKeepAliveTimer()V

    .line 293
    monitor-exit p0

    .line 303
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mPdpConnected:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpLocked(Z)V

    .line 297
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mPdpConnected:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 302
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->startKeepAliveTimer()V

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startUsingPdpLocked(Z)V
    .locals 4
    .parameter "reset"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunEnablePdp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    if-eqz p1, :cond_0

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    .line 309
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunEnablePdp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunEnablePdp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private stopUsingPdpLocked()V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    .line 317
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunDisablePdp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 318
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunDisablePdp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void
.end method


# virtual methods
.method public extendDataConnection()V
    .locals 1

    .prologue
    .line 284
    sget-boolean v0, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->startKeepAliveTimer()V

    .line 287
    :cond_0
    return-void
.end method

.method public declared-synchronized onProviderUpdate(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    .line 337
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 327
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z

    .line 328
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    if-eqz v0, :cond_0

    .line 329
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z

    if-eqz v0, :cond_2

    .line 331
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 334
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->stopUsingPdpLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public resolveHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    new-instance v2, Ljava/net/UnknownHostException;

    const-string v3, "resolveHost(): host==null"

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    :cond_0
    iget v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    if-nez v2, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 347
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpBlocking()V

    .line 354
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 355
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-eqz v0, :cond_4

    .line 356
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, ip:Ljava/lang/String;
    monitor-enter p0

    .line 358
    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->mIpAddresses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 359
    iget-object v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->mIpAddresses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_2
    sget-boolean v2, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    if-eqz v2, :cond_3

    .line 363
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwGpsNwMgr;->addRouteLocked(Ljava/lang/String;)V

    .line 366
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    .end local v1           #ip:Ljava/lang/String;
    :cond_4
    return-object v0

    .line 350
    .end local v0           #inetAddress:Ljava/net/InetAddress;
    :cond_5
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpLocked(Z)V

    goto :goto_0

    .line 366
    .restart local v0       #inetAddress:Ljava/net/InetAddress;
    .restart local v1       #ip:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
