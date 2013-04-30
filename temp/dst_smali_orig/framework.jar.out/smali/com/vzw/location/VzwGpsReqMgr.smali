.class Lcom/vzw/location/VzwGpsReqMgr;
.super Ljava/lang/Object;
.source "VzwGpsReqMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;
    }
.end annotation


# static fields
.field private static final ALARM_TIMEOUT_FIX_START:Ljava/lang/String; = "com.android.internal.vzwlocation.ALARM_TIMEOUT_FIX_START"

.field private static final ALARM_TIMEOUT_FIX_STOP:Ljava/lang/String; = "com.android.internal.vzwlocation.ALARM_TIMEOUT_FIX_STOP"

.field private static final APP_ID_ROVER_1:I = 0x1bdcb

.field private static final APP_ID_ROVER_3_CA:I = 0x2000000c

.field private static final APP_ID_ROVER_3_TA:I = 0x50000000

.field private static final APP_ID_ROVER_3_TB:I = 0x50000008

.field private static final DEBUG:Z = false

.field private static final GPS_EVENT_AGPS_AUTH_BYPASS:I = 0x50

.field private static final GPS_EVENT_AGPS_AUTH_SKIP:I = 0x51

.field private static final GPS_FIX_REREQUEST:J = 0x30d40L

.field private static final NO_FIX_DELAY:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "VzwGpsReqMgr"


# instance fields
.field private activeConfig:Lcom/vzw/location/VzwCriteria;

.field private activeHalConfig:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

.field private appSessionQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vzw/location/VzwGpsAppSession;",
            ">;"
        }
    .end annotation
.end field

.field private dataAvl:Z

.field private locListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vzw/location/VzwGpsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFixRequestedTime:J

.field private final mFixTimeoutStartIntent:Landroid/app/PendingIntent;

.field private final mFixTimeoutStopIntent:Landroid/app/PendingIntent;

.field private mNwMgr:Lcom/vzw/location/VzwGpsNwMgr;

.field private mPendingBroadcasts:I

.field private mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

.field private mStandAloneOnly:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final nLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vzw/location/VzwLocationProviderProxy;Landroid/os/PowerManager$WakeLock;Lcom/vzw/location/VzwGpsNwMgr;)V
    .locals 5
    .parameter "context"
    .parameter "proxy"
    .parameter "wakeLock"
    .parameter "nwMgr"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->nLock:Ljava/lang/Object;

    new-instance v1, Lcom/vzw/location/VzwGpsReqMgr$1;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsReqMgr$1;-><init>(Lcom/vzw/location/VzwGpsReqMgr;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    iput-object p4, p0, Lcom/vzw/location/VzwGpsReqMgr;->mNwMgr:Lcom/vzw/location/VzwGpsNwMgr;

    iput-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->dataAvl:Z

    iput-boolean v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    iput v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    iput-object p3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;

    invoke-direct {v2, p0, v3}, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;-><init>(Lcom/vzw/location/VzwGpsReqMgr;Lcom/vzw/location/VzwGpsReqMgr$1;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.vzwlocation.ALARM_TIMEOUT_FIX_STOP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mFixTimeoutStopIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.vzwlocation.ALARM_TIMEOUT_FIX_START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mFixTimeoutStartIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.vzwlocation.ALARM_TIMEOUT_FIX_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.vzwlocation.ALARM_TIMEOUT_FIX_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/vzw/location/VzwGpsReqMgr;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    return v0
.end method

.method static synthetic access$102(Lcom/vzw/location/VzwGpsReqMgr;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwGpsReqMgr;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwGpsReqMgr;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vzw/location/VzwGpsReqMgr;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/vzw/location/VzwGpsReqMgr;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vzw/location/VzwGpsReqMgr;)Lcom/vzw/location/VzwLocationProviderProxy;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vzw/location/VzwGpsReqMgr;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->startFixLocked()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    iget v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VzwGpsReqMgr"

    const-string v2, "exception in acquireWakeLock(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V
    .locals 5
    .parameter "session"

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getPid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/vzw/location/VzwGpsReqMgr;->sessionExistsLocked(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->releaseWakeLock()V

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getAuthRequest()Lcom/vzw/location/VzwGpsAuthRequest;

    move-result-object v0

    .local v0, authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsAuthRequest;->getState()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    invoke-virtual {v2, v0}, Lcom/vzw/location/VzwGpsAuthMgr;->removeRequest(Lcom/vzw/location/VzwGpsAuthRequest;)V

    :cond_3
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V

    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getStatusListener()Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v1

    .local v1, listener:Lcom/vzw/location/IVzwGpsStatusListener;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/vzw/location/VzwGpsReqMgr;->removeStatusListenerLocked(Lcom/vzw/location/IVzwGpsStatusListener;Lcom/vzw/location/VzwGpsAppSession;)V

    goto :goto_0

    .end local v0           #authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    .end local v1           #listener:Lcom/vzw/location/IVzwGpsStatusListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static gcd(JJ)J
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    move-wide v0, p2

    .local v0, temp:J
    rem-long p2, p0, p2

    move-wide p0, v0

    goto :goto_0

    .end local v0           #temp:J
    :cond_0
    return-wide p0
.end method

.method private getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, pid:I
    invoke-direct {p0, v2, v0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v1

    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v1, :cond_0

    new-instance v1, Lcom/vzw/location/VzwGpsAppSession;

    .end local v1           #session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-direct {v1, v2, v0}, Lcom/vzw/location/VzwGpsAppSession;-><init>(II)V

    .restart local v1       #session:Lcom/vzw/location/VzwGpsAppSession;
    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method private getRequestLocked()Lcom/vzw/location/VzwGpsRequest;
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    .local v0, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v0, :cond_0

    const-string v1, "VzwGpsReqMgr"

    const-string v2, "getRequest(): session==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    goto :goto_0
.end method

.method private getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    return-object v0
.end method

.method private getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;
    .locals 4
    .parameter "uid"
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsAppSession;

    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsAppSession;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsAppSession;->getPid()I

    move-result v3

    if-ne v3, p2, :cond_1

    goto :goto_0

    .end local v1           #session:Lcom/vzw/location/VzwGpsAppSession;
    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public static isRoverApp(I)Z
    .locals 1
    .parameter "appId"

    .prologue
    const v0, 0x1bdcb

    if-eq p0, v0, :cond_0

    const v0, 0x2000000c

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x5000

    if-eq p0, v0, :cond_0

    const v0, 0x50000008

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 3

    .prologue
    :try_start_0
    iget v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VzwGpsReqMgr"

    const-string v2, "exception in releaseWakeLock(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V
    .locals 1
    .parameter "gpsReq"
    .parameter "updateConfig"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked()Z

    :cond_0
    return-void
.end method

.method private removeStatusListenerLocked(Lcom/vzw/location/IVzwGpsStatusListener;Lcom/vzw/location/VzwGpsAppSession;)V
    .locals 1
    .parameter "listener"
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vzw/location/VzwGpsAppSession;->setStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    return-void
.end method

.method private reportAuthStatusLocked(Lcom/vzw/location/VzwGpsAuthRequest;I)Z
    .locals 5
    .parameter "authReq"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsAppSession;->getStatusListener()Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v1

    .local v1, statusListener:Lcom/vzw/location/IVzwGpsStatusListener;
    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3, p2}, Lcom/vzw/location/IVzwGpsStatusListener;->onAuthStatusChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vzw/location/VzwGpsReqMgr;->clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V

    const-string v3, "VzwGpsReqMgr"

    const-string v4, "report auth status exception: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sessionExistsLocked(II)Z
    .locals 1
    .parameter "uid"
    .parameter "pid"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMpcHostLocked(Lcom/vzw/location/VzwCriteria;)Z
    .locals 7
    .parameter "config"

    .prologue
    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwGpsRequest;

    .local v2, gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v4

    .local v4, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v4, :cond_1

    const-string v5, "VzwGpsReqMgr"

    const-string v6, "setMpcHostLocked(): session==null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getAuthRequest()Lcom/vzw/location/VzwGpsAuthRequest;

    move-result-object v0

    .local v0, authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    if-nez v0, :cond_2

    const-string v5, "VzwGpsReqMgr"

    const-string v6, "setMpcHostLocked(): authReq==null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsAuthRequest;->getCfgInit()Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v1

    .local v1, ci:Lcom/vzw/location/VzwGpsConfigInit;
    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsAuthRequest;->getResult()I

    move-result v5

    const/16 v6, 0x51

    if-eq v5, v6, :cond_0

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "VzwGpsReqMgr"

    const-string v6, "setMpcHostLocked(): mpcHost==null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcPort()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/vzw/location/VzwCriteria;->setAssistanceHost(Ljava/lang/String;I)V

    const/4 v5, 0x1

    .end local v0           #authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    .end local v1           #ci:Lcom/vzw/location/VzwGpsConfigInit;
    .end local v2           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v4           #session:Lcom/vzw/location/VzwGpsAppSession;
    :goto_1
    return v5

    :cond_4
    const-string v5, "VzwGpsReqMgr"

    const-string v6, "setMpcHostLocked(): valid mpcHost not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_1
.end method

.method private setPdeAddressLocked(Lcom/vzw/location/VzwCriteria;)V
    .locals 4
    .parameter "config"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getAssistanceHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getAssistancePort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwLocationProviderProxy;->setPdeAddress(Ljava/net/InetSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "VzwGpsReqMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProviderConfigLocked(): setPdeAddress(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "VzwGpsReqMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProviderConfigLocked(): setPdeAddress(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startFixLocked()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x30d40

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->activeHalConfig:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mNwMgr:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsNwMgr;->extendDataConnection()V

    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    invoke-virtual {v0}, Lcom/vzw/location/VzwLocationProviderProxy;->stop()Z

    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->activeHalConfig:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwLocationProviderProxy;->start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mFixRequestedTime:J

    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, v6

    const-wide/16 v3, 0x12c

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mFixTimeoutStopIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, v6

    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mFixTimeoutStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method private startFixLocked(J)V
    .locals 5
    .parameter "delay"

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->mFixTimeoutStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private updateProviderConfigLocked()Z
    .locals 26

    .prologue
    const/4 v3, 0x0

    .local v3, configChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->size()I

    move-result v22

    if-nez v22, :cond_1

    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vzw/location/VzwGpsReqMgr;->activeHalConfig:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mFixTimeoutStartIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mFixTimeoutStopIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwLocationProviderProxy;->stop()Z

    :cond_0
    :goto_0
    return v3

    :cond_1
    new-instance v12, Lcom/vzw/location/VzwCriteria;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/vzw/location/VzwGpsRequest;

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Lcom/vzw/location/VzwCriteria;-><init>(Lcom/vzw/location/VzwCriteria;)V

    .local v12, newConfig:Lcom/vzw/location/VzwCriteria;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vzw/location/VzwGpsRequest;

    .local v13, nxtReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v15

    .local v15, perf:Lcom/vzw/location/VzwGpsPerformance;
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v6

    .local v6, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getPriority()I

    move-result v5

    .local v5, fixPriority:I
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v4

    .local v4, fixMode:I
    invoke-virtual {v15}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v16

    .local v16, prefRespTime:J
    invoke-virtual {v15}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v8

    .local v8, horAccuracy:J
    invoke-virtual {v15}, Lcom/vzw/location/VzwGpsPerformance;->getVerticalAccuracy()J

    move-result-wide v20

    .local v20, vertAccuracy:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPriority()I

    move-result v22

    move/from16 v0, v22

    if-le v5, v0, :cond_2

    invoke-virtual {v12, v4}, Lcom/vzw/location/VzwCriteria;->setFixMode(I)V

    :cond_2
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getVerticalAccuracy()J

    move-result-wide v22

    cmp-long v22, v20, v22

    if-lez v22, :cond_3

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwGpsPerformance;->setVerticalAccuracy(J)V

    :cond_3
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v22

    cmp-long v22, v8, v22

    if-lez v22, :cond_4

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/vzw/location/VzwGpsPerformance;->setHorizontalAccuracy(J)V

    :cond_4
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v22

    cmp-long v22, v16, v22

    if-gez v22, :cond_5

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwGpsPerformance;->setPreferredResponseTime(J)V

    :cond_5
    invoke-virtual {v6}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v22

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Lcom/vzw/location/VzwGpsReqMgr;->gcd(JJ)J

    move-result-wide v18

    .local v18, tbf:J
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwGpsFixRate;->setTimeBetweenFixes(J)V

    goto/16 :goto_1

    .end local v4           #fixMode:I
    .end local v5           #fixPriority:I
    .end local v6           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .end local v8           #horAccuracy:J
    .end local v13           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v15           #perf:Lcom/vzw/location/VzwGpsPerformance;
    .end local v16           #prefRespTime:J
    .end local v18           #tbf:J
    .end local v20           #vertAccuracy:J
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/vzw/location/VzwCriteria;->setFixMode(I)V

    :cond_7
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v22

    const-wide/16 v23, -0x1

    invoke-virtual/range {v22 .. v24}, Lcom/vzw/location/VzwGpsFixRate;->setNumFixes(J)V

    const/4 v14, 0x0

    .local v14, oneSec:Z
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_8

    const/4 v14, 0x1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, it2:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vzw/location/VzwGpsRequest;

    .restart local v13       #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v6

    .restart local v6       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    if-eqz v14, :cond_9

    const-wide/16 v22, 0x1f4

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Lcom/vzw/location/VzwGpsFixRate;->setUpdateMargin(J)V

    goto :goto_2

    :cond_9
    invoke-virtual {v6}, Lcom/vzw/location/VzwGpsFixRate;->setUpdateMargin()V

    goto :goto_2

    .end local v6           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .end local v13           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/vzw/location/VzwCriteria;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vzw/location/VzwGpsReqMgr;->setMpcHostLocked(Lcom/vzw/location/VzwCriteria;)Z

    move-result v22

    if-nez v22, :cond_b

    const-string v22, "VzwGpsReqMgr"

    const-string v23, "updateProviderConfigLocked(): failed to set mpcHost"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vzw/location/VzwGpsReqMgr;->setPdeAddressLocked(Lcom/vzw/location/VzwCriteria;)V

    :cond_c
    new-instance v7, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    invoke-direct {v7}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;-><init>()V

    .local v7, halConfig:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setFixMode(I)V

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setPreferredHorizontalAccuracy(I)V

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getVerticalAccuracy()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setPreferredVerticalAccuracy(I)V

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setMaximumResponseTime(I)V

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setHintNextFixArriveInSec(I)V

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setHintNextFixMode(I)V

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setHintNextFixHorizontalAccuracy(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/vzw/location/VzwGpsReqMgr;->activeHalConfig:Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/vzw/location/VzwGpsReqMgr;->startFixLocked()V

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized addRequest(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)Z
    .locals 6
    .parameter "criteria"
    .parameter "locListener"

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v2

    .local v2, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAppSession;->getAuthRequest()Lcom/vzw/location/VzwGpsAuthRequest;

    move-result-object v0

    .local v0, authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsAuthRequest;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    :cond_0
    const-string v4, "VzwGpsReqMgr"

    const-string v5, "addRequest(): no prior GPS_EVENT_INIT_PASS"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/vzw/location/VzwCriteria;->setFixMode(I)V

    :cond_2
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    .local v1, gpsReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v1, :cond_3

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V

    :cond_3
    new-instance v1, Lcom/vzw/location/VzwGpsRequest;

    .end local v1           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-direct {v1, v2, p1, p2}, Lcom/vzw/location/VzwGpsRequest;-><init>(Lcom/vzw/location/VzwGpsAppSession;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    .restart local v1       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v2, v1}, Lcom/vzw/location/VzwGpsAppSession;->setGpsRequest(Lcom/vzw/location/VzwGpsRequest;)V

    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    .end local v1           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v2           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized addStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    .local v0, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwGpsAppSession;->setStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNumRequests()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequest()Lcom/vzw/location/VzwGpsRequest;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getRequestLocked()Lcom/vzw/location/VzwGpsRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTimeBetweenFix()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, tbf:I
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    long-to-int v0, v1

    :cond_0
    return v0
.end method

.method public declared-synchronized locationCallbackFinished()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .local v2, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identity:J
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->releaseWakeLock()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0           #identity:J
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v2           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeRequest(Z)V
    .locals 1
    .parameter "updateConfig"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getRequestLocked()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    .local v0, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v0, :cond_0

    const-string v1, "VzwGpsReqMgr"

    const-string v2, "removeStatusListener(): session==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/vzw/location/VzwGpsReqMgr;->removeStatusListenerLocked(Lcom/vzw/location/IVzwGpsStatusListener;Lcom/vzw/location/VzwGpsAppSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startAuthentication(Lcom/vzw/location/VzwGpsConfigInit;)V
    .locals 5
    .parameter "ci"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v1

    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    new-instance v0, Lcom/vzw/location/VzwGpsAuthRequest;

    invoke-direct {v0, v1, p1}, Lcom/vzw/location/VzwGpsAuthRequest;-><init>(Lcom/vzw/location/VzwGpsAppSession;Lcom/vzw/location/VzwGpsConfigInit;)V

    .local v0, authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getApplicationId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/vzw/location/VzwGpsReqMgr;->isRoverApp(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsAuthRequest;->setState(I)V

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_AuthDoneLocked(Lcom/vzw/location/VzwGpsAuthRequest;)V

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsAuthRequest;->setResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsAuthRequest;->setState(I)V

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_AuthDoneLocked(Lcom/vzw/location/VzwGpsAuthRequest;)V

    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsAuthRequest;->setResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    .end local v1           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    .restart local v1       #session:Lcom/vzw/location/VzwGpsAppSession;
    :cond_1
    const/16 v2, 0x65

    :try_start_2
    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsAuthRequest;->setState(I)V

    const/16 v2, 0x65

    invoke-direct {p0, v0, v2}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwGpsAuthRequest;I)Z

    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    if-nez v2, :cond_2

    new-instance v2, Lcom/vzw/location/VzwGpsAuthMgr;

    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->mNwMgr:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-direct {v2, v3, p0, v4}, Lcom/vzw/location/VzwGpsAuthMgr;-><init>(Landroid/content/Context;Lcom/vzw/location/VzwGpsReqMgr;Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    :cond_2
    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    invoke-virtual {v2, v0}, Lcom/vzw/location/VzwGpsAuthMgr;->addRequest(Lcom/vzw/location/VzwGpsAuthRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized trigger_AuthDone(Lcom/vzw/location/VzwGpsAuthRequest;)V
    .locals 1
    .parameter "authReq"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_AuthDoneLocked(Lcom/vzw/location/VzwGpsAuthRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trigger_AuthDoneLocked(Lcom/vzw/location/VzwGpsAuthRequest;)V
    .locals 4
    .parameter "authReq"

    .prologue
    const/16 v3, 0x8

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v1

    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v1, :cond_0

    const-string v2, "VzwGpsReqMgr"

    const-string v3, "trigger_AuthDone(): session==null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, p1}, Lcom/vzw/location/VzwGpsAppSession;->setAuthRequest(Lcom/vzw/location/VzwGpsAuthRequest;)V

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getResult()I

    move-result v0

    .local v0, result:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwGpsAuthRequest;I)Z

    :cond_1
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-direct {p0, p1, v3}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwGpsAuthRequest;I)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    invoke-direct {p0, p1, v2}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwGpsAuthRequest;I)Z

    goto :goto_0
.end method

.method public declared-synchronized trigger_LocationChanged(Lcom/vzw/location/VzwLocation;)V
    .locals 29
    .parameter "location"

    .prologue
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v25

    if-nez v25, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v6, 0x0

    .local v6, deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    const/16 v17, 0x0

    .local v17, rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .local v4, currentTime:J
    const/4 v3, 0x0

    .local v3, client:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, it:Ljava/util/Iterator;
    move-object/from16 v18, v17

    .end local v17           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .local v18, rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vzw/location/VzwGpsRequest;

    .local v11, gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v11}, Lcom/vzw/location/VzwGpsRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v16

    .local v16, nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v11}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v10

    .local v10, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {v11}, Lcom/vzw/location/VzwGpsRequest;->getLocListener()Lcom/vzw/location/IVzwLocationListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v15

    .local v15, nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    if-eqz v15, :cond_c

    :try_start_2
    invoke-virtual {v11}, Lcom/vzw/location/VzwGpsRequest;->getlastUpdated()J

    move-result-wide v25

    sub-long v25, v4, v25

    invoke-virtual {v10}, Lcom/vzw/location/VzwGpsFixRate;->getUpdateMargin()J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-ltz v25, :cond_c

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/vzw/location/IVzwLocationListener;->onLocationChanged(Lcom/vzw/location/VzwLocation;)V

    invoke-virtual {v11, v4, v5}, Lcom/vzw/location/VzwGpsRequest;->setlastUpdated(J)V

    invoke-virtual {v11}, Lcom/vzw/location/VzwGpsRequest;->incrementFixesReported()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/vzw/location/VzwGpsReqMgr;->acquireWakeLock()V

    :cond_2
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v10}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-lez v25, :cond_c

    invoke-virtual {v11}, Lcom/vzw/location/VzwGpsRequest;->getFixesReported()J

    move-result-wide v25

    invoke-virtual {v10}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-ltz v25, :cond_c

    if-nez v18, :cond_b

    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v18           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v17       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :goto_2
    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move-object/from16 v18, v17

    .end local v17           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v18       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    goto/16 :goto_1

    :catchall_0
    move-exception v25

    :try_start_6
    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v9

    move-object/from16 v17, v18

    .end local v18           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .local v9, e:Landroid/os/RemoteException;
    .restart local v17       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :goto_4
    if-nez v6, :cond_3

    :try_start_8
    new-instance v6, Ljava/util/LinkedList;

    .end local v6           #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .restart local v6       #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_3
    invoke-virtual {v6, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .end local v3           #client:I
    .end local v4           #currentTime:J
    .end local v6           #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v10           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .end local v11           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v12           #it:Ljava/util/Iterator;
    .end local v15           #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .end local v16           #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    .end local v17           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :catchall_1
    move-exception v25

    monitor-exit p0

    throw v25

    .restart local v3       #client:I
    .restart local v4       #currentTime:J
    .restart local v6       #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v12       #it:Ljava/util/Iterator;
    .restart local v18       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_4
    const/16 v24, 0x0

    .local v24, updateConfig:Z
    if-eqz v18, :cond_7

    const/16 v24, 0x1

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, it2:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vzw/location/VzwGpsRequest;

    .restart local v11       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v6, :cond_6

    invoke-virtual {v6, v11}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    :cond_6
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v11, v1}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V

    goto :goto_5

    .end local v11           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v13           #it2:Ljava/util/Iterator;
    :cond_7
    if-eqz v6, :cond_8

    const/16 v24, 0x1

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, it3:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vzw/location/VzwGpsRequest;

    .restart local v11       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v11}, Lcom/vzw/location/VzwGpsRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwGpsReqMgr;->clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V

    goto :goto_6

    .end local v11           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v14           #it3:Ljava/util/Iterator;
    :cond_8
    const/16 v19, 0x0

    .local v19, startedSession:Z
    if-eqz v24, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked()Z

    move-result v19

    :cond_9
    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedList;->size()I

    move-result v25

    if-lez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v25

    const-wide/16 v27, 0x3e8

    mul-long v20, v25, v27

    .local v20, tbf:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mFixRequestedTime:J

    move-wide/from16 v25, v0

    sub-long v7, v4, v25

    .local v7, delta:J
    cmp-long v25, v7, v20

    if-ltz v25, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/vzw/location/VzwGpsReqMgr;->startFixLocked()V

    goto/16 :goto_0

    :cond_a
    sub-long v22, v20, v7

    .local v22, timeLeft:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/vzw/location/VzwGpsReqMgr;->startFixLocked(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .end local v7           #delta:J
    .end local v18           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .end local v19           #startedSession:Z
    .end local v20           #tbf:J
    .end local v22           #timeLeft:J
    .end local v24           #updateConfig:Z
    .restart local v10       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .restart local v11       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .restart local v15       #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .restart local v16       #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    .restart local v17       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :catch_1
    move-exception v9

    goto/16 :goto_4

    .end local v17           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v18       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_b
    move-object/from16 v17, v18

    .end local v18           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v17       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    goto/16 :goto_2

    .end local v17           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v18       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_c
    move-object/from16 v17, v18

    .end local v18           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v17       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    goto/16 :goto_3
.end method

.method public declared-synchronized trigger_NetworkStateUpdate(Z)V
    .locals 1
    .parameter "dataConn"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsReqMgr;->dataAvl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trigger_UidRemoved(I)V
    .locals 5
    .parameter "uid"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    :try_start_1
    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwGpsAppSession;

    .local v3, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsAppSession;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/LinkedList;

    .end local v2           #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .restart local v2       #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0           #it:Ljava/util/Iterator;
    .end local v2           #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    .end local v3           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0       #it:Ljava/util/Iterator;
    .restart local v2       #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    :cond_4
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it2:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwGpsAppSession;

    .restart local v3       #session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-direct {p0, v3}, Lcom/vzw/location/VzwGpsReqMgr;->clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V

    goto :goto_2

    .end local v3           #session:Lcom/vzw/location/VzwGpsAppSession;
    :cond_5
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 8
    .parameter "provider"
    .parameter "enabled"

    .prologue
    const/4 v7, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vzw/location/VzwGpsAppSession;

    .local v4, nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v3

    .local v3, nxtReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsRequest;->getLocListener()Lcom/vzw/location/IVzwLocationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .local v2, nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    if-eqz v2, :cond_0

    if-ne p2, v7, :cond_2

    :try_start_1
    invoke-interface {v2, p1}, Lcom/vzw/location/IVzwLocationListener;->onProviderEnabled(Ljava/lang/String;)V

    :goto_1
    iget-object v6, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v5

    if-ne v5, v7, :cond_1

    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->acquireWakeLock()V

    :cond_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "VzwGpsReqMgr"

    const-string v6, "updateProviderListenersLocked(): RemoteException: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .end local v3           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v4           #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v1       #it:Ljava/util/Iterator;
    .restart local v2       #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .restart local v3       #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .restart local v4       #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    :cond_2
    :try_start_5
    invoke-interface {v2, p1}, Lcom/vzw/location/IVzwLocationListener;->onProviderDisabled(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .end local v3           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v4           #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    :cond_3
    if-eqz p2, :cond_5

    :try_start_6
    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    invoke-virtual {v5}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    invoke-direct {p0, v5}, Lcom/vzw/location/VzwGpsReqMgr;->setPdeAddressLocked(Lcom/vzw/location/VzwCriteria;)V

    :cond_4
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->startFixLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    monitor-exit p0

    return-void
.end method
