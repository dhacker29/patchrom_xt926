.class public Lcom/vzw/location/VzwLocationManagerService;
.super Lcom/vzw/location/IVzwLocationManager$Stub;
.source "VzwLocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;,
        Lcom/vzw/location/VzwLocationManagerService$Listener;,
        Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;,
        Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;,
        Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final CERTIFICATE_VALIDITY:I = 0xa

.field private static final DEBUG:Z = true

.field private static final KEYSTORE_PASSWD:Ljava/lang/String; = "location"

.field private static final KEYSTORE_PATH:Ljava/lang/String; = "/system/etc/security/vzwlbsappcerts.bks"

.field private static final MESSAGE_FIX_TIMEOUT:I = 0x3

.field private static final MESSAGE_GPS_STATUS_CHANGED:I = 0x2

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x1

.field private static final MILLISECS_PER_DAY:I = 0x5265c00

.field private static final ONE_SEC:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "VzwLocationMgrService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "VzwLocationMgrService"

.field private static sProvidersLoaded:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/location/VzwLocationManagerService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

.field private mLocationManagerCallbacks:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkManager:Lcom/vzw/location/VzwGpsNwMgr;

.field private mNetworkState:I

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/location/VzwLocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vzw/location/VzwLocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mPublicKeys:[Ljava/security/PublicKey;

.field private mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mShutdownGpsTask:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

.field private mVerifiedUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vzw/location/VzwLocationManagerService;->sProvidersLoaded:Z

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Lcom/vzw/location/IVzwLocationManager$Stub;-><init>()V

    .line 123
    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    .line 132
    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkManager:Lcom/vzw/location/VzwGpsNwMgr;

    .line 133
    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mShutdownGpsTask:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;

    .line 143
    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I

    .line 1124
    new-instance v0, Lcom/vzw/location/VzwLocationManagerService$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwLocationManagerService$1;-><init>(Lcom/vzw/location/VzwLocationManagerService;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    .line 1218
    new-instance v0, Lcom/vzw/location/VzwLocationManagerService$2;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwLocationManagerService$2;-><init>(Lcom/vzw/location/VzwLocationManagerService;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    .line 179
    const-string v0, "VzwLocationMgrService"

    const-string v1, "Constructed VzwLocationManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method private _getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "provider"

    .prologue
    .line 753
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 754
    .local v1, p:Lcom/vzw/location/VzwLocationProviderProxy;
    if-nez v1, :cond_0

    .line 755
    const/4 v0, 0x0

    .line 770
    :goto_0
    return-object v0

    .line 758
    :cond_0
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 761
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "network"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 762
    const-string v2, "satellite"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 763
    const-string v2, "cell"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->requiresCell()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 764
    const-string v2, "cost"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 765
    const-string v2, "altitude"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 766
    const-string v2, "speed"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 767
    const-string v2, "bearing"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->supportsBearing()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 768
    const-string v2, "power"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 769
    const-string v2, "accuracy"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private _getProvidersLocked(Z)Ljava/util/List;
    .locals 6
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    const-string v4, "VzwLocationMgrService"

    const-string v5, "getProviders()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 593
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 594
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 595
    .local v3, p:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-virtual {v3}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 593
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    :cond_2
    return-object v2
.end method

.method private _isProviderEnabledLocked(Ljava/lang/String;)Z
    .locals 4
    .parameter "provider"

    .prologue
    .line 787
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 790
    .local v0, p:Lcom/vzw/location/VzwLocationProviderProxy;
    if-nez v0, :cond_0

    .line 791
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p==null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 794
    :cond_0
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private _requestLocationUpdates(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V
    .locals 2
    .parameter "criteria"
    .parameter "listener"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0, p1, p2}, Lcom/vzw/location/VzwGpsReqMgr;->addRequest(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "requestLocationUpdates(): no prior GPS_EVENT_INIT_PASS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vzw/location/VzwLocationManagerService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->getEngineStatus(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vzw/location/VzwLocationManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->setGpsIconEnabled(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vzw/location/VzwLocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vzw/location/VzwLocationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/vzw/location/VzwLocationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I

    return p1
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwLocationManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationManagerCallbacks:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$900(Lcom/vzw/location/VzwLocationManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->setGpsIconFixChange(Z)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1096
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1097
    monitor-exit v1

    .line 1098
    return-void

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addProvider(Lcom/vzw/location/VzwLocationProviderProxy;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method private checkPermissionsSafe(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 544
    .local v1, callingUID:I
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    const-string v2, "VzwLocationMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": permission denied!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": permission denied!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    :cond_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 551
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    if-nez v2, :cond_1

    .line 552
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->loadPublicKeys()V

    .line 555
    :cond_1
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->getApplicationInfo()[Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 556
    .local v0, appInfo:[Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocationManagerService;->verifyPackageCert([Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 557
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v2, "VzwLocationMgrService"

    const-string v3, "Error validating certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Error validating certificate"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 561
    .end local v0           #appInfo:[Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 562
    const-string v2, "VzwLocationMgrService"

    const-string v3, "Error validating certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Error validating certificate"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 566
    :cond_3
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v2, "VzwLocationMgrService"

    const-string v3, "Application signature verified"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void
.end method

.method private getApplicationInfo()[Landroid/content/pm/ApplicationInfo;
    .locals 9

    .prologue
    .line 370
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 371
    .local v1, callingUid:I
    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 372
    .local v4, mPackageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, packname:[Ljava/lang/String;
    array-length v6, v5

    new-array v0, v6, [Landroid/content/pm/ApplicationInfo;

    .line 375
    .local v0, appInfo:[Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 377
    :try_start_0
    const-string v6, "VzwLocationMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    aget-object v6, v5, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    aput-object v6, v0, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    :catch_0
    move-exception v2

    .line 380
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "VzwLocationMgrService"

    const-string v7, "PackageName not found! Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 383
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-object v0
.end method

.method private getEngineStatus(I)Ljava/lang/String;
    .locals 1
    .parameter "status"

    .prologue
    .line 1109
    packed-switch p1, :pswitch_data_0

    .line 1121
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1111
    :pswitch_0
    const-string v0, "ENGINE_STATUS_NONE(0)"

    goto :goto_0

    .line 1113
    :pswitch_1
    const-string v0, "ENGINE_STATUS_SESSION_BEGIN(1)"

    goto :goto_0

    .line 1115
    :pswitch_2
    const-string v0, "ENGINE_STATUS_SESSION_END(2)"

    goto :goto_0

    .line 1117
    :pswitch_3
    const-string v0, "ENGINE_STATUS_ENGINE_ON(3)"

    goto :goto_0

    .line 1119
    :pswitch_4
    const-string v0, "ENGINE_STATUS_ENGINE_OFF(4)"

    goto :goto_0

    .line 1109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private hasMatchingCert([Ljava/security/cert/Certificate;)Z
    .locals 6
    .parameter "certs"

    .prologue
    const/4 v3, 0x0

    .line 448
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    if-nez v4, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v3

    .line 455
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 456
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 460
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 461
    aget-object v4, p1, v2

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    const/4 v3, 0x1

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 456
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 455
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private hasValidDevCert([Ljava/security/cert/Certificate;)Z
    .locals 11
    .parameter "certs"

    .prologue
    const/4 v6, 0x0

    .line 474
    if-nez p1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v6

    .line 479
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_0

    .line 480
    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "X.509"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 481
    aget-object v5, p1, v2

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 482
    .local v5, x509Cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v5}, Lcom/vzw/location/VzwLocationManagerService;->isValidCert(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 479
    .end local v5           #x509Cert:Ljava/security/cert/X509Certificate;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    .restart local v5       #x509Cert:Ljava/security/cert/X509Certificate;
    :cond_3
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    .line 487
    .local v0, afterDate:Ljava/util/Date;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    .line 488
    .local v1, beforeDate:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x5265c00

    div-long v3, v7, v9

    .line 489
    .local v3, validity:J
    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gtz v7, :cond_2

    .line 490
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private initialize()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 189
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 190
    .local v8, powerManager:Landroid/os/PowerManager;
    const-string v1, "VzwLocationMgrService"

    invoke-virtual {v8, v12, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 191
    new-instance v1, Lcom/vzw/location/VzwGpsNwMgr;

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vzw/location/VzwGpsNwMgr;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkManager:Lcom/vzw/location/VzwGpsNwMgr;

    .line 192
    new-instance v1, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;-><init>(Lcom/vzw/location/VzwLocationManagerService;)V

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mShutdownGpsTask:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    .line 195
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->loadProviders()V

    .line 199
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string v3, "vzw_lbs"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 200
    .local v7, p:Lcom/vzw/location/VzwLocationProviderProxy;
    new-instance v1, Lcom/vzw/location/VzwGpsReqMgr;

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkManager:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-direct {v1, v3, v7, v4, v5}, Lcom/vzw/location/VzwGpsReqMgr;-><init>(Landroid/content/Context;Lcom/vzw/location/VzwLocationProviderProxy;Landroid/os/PowerManager$WakeLock;Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    .line 203
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->updateProviders()V

    .line 206
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v12, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "location_providers_allowed"

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 218
    .local v9, settingsCursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 219
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "settingsCursor==null in initialize()"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_0
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v9, v3, v12, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 223
    new-instance v10, Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;

    invoke-direct {v10, p0, v2}, Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;-><init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/VzwLocationManagerService$1;)V

    .line 224
    .local v10, settingsObserver:Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v10}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 225
    return-void
.end method

.method private isAllowedBySettingsLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 366
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isAllowedProviderSafe(Ljava/lang/String;)Z
    .locals 1
    .parameter "provider"

    .prologue
    .line 573
    const/4 v0, 0x1

    return v0
.end method

.method private isValidCert(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .parameter "cert"

    .prologue
    .line 500
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    const/4 v1, 0x1

    .line 503
    :goto_0
    return v1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadProviders()V
    .locals 2

    .prologue
    .line 254
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    sget-boolean v0, Lcom/vzw/location/VzwLocationManagerService;->sProvidersLoaded:Z

    if-eqz v0, :cond_0

    .line 256
    monitor-exit v1

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->loadProvidersLocked()V

    .line 260
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vzw/location/VzwLocationManagerService;->sProvidersLoaded:Z

    .line 261
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadProvidersLocked()V
    .locals 5

    .prologue
    .line 266
    :try_start_0
    invoke-static {}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->getInstance()Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;

    move-result-object v2

    .line 267
    .local v2, provider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;
    invoke-virtual {v2}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    new-instance v3, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    invoke-direct {v3, p0}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;-><init>(Lcom/vzw/location/VzwLocationManagerService;)V

    iput-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationManagerCallbacks:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    .line 270
    new-instance v1, Lcom/vzw/location/VzwLocationProviderProxy;

    const-string v3, "vzw_lbs"

    invoke-direct {v1, v3, v2}, Lcom/vzw/location/VzwLocationProviderProxy;-><init>(Ljava/lang/String;Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;)V

    .line 273
    .local v1, p:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->addProvider(Lcom/vzw/location/VzwLocationProviderProxy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 280
    .end local v1           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    .end local v2           #provider:Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;
    :cond_0
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VzwLocationMgrService"

    const-string v4, "exception loading providers:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 277
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "VzwLocationMgrService"

    const-string v4, "failure loading Provider\'s native library"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadPublicKeys()V
    .locals 10

    .prologue
    .line 508
    const/4 v4, 0x0

    .line 511
    .local v4, input:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v7, "/system/etc/security/vzwlbsappcerts.bks"

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_8

    .line 512
    .end local v4           #input:Ljava/io/FileInputStream;
    .local v5, input:Ljava/io/FileInputStream;
    :try_start_1
    const-string v7, "BKS"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 513
    .local v6, keyStore:Ljava/security/KeyStore;
    const-string v7, "location"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 514
    invoke-virtual {v6}, Ljava/security/KeyStore;->size()I

    move-result v7

    new-array v7, v7, [Ljava/security/PublicKey;

    iput-object v7, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    .line 516
    const/4 v2, 0x0

    .line 517
    .local v2, i:I
    invoke-virtual {v6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 518
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 519
    .local v0, cert:Ljava/security/cert/Certificate;
    iget-object v7, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    aput-object v8, v7, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_c

    move v3, v2

    .line 520
    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 533
    .end local v0           #cert:Ljava/security/cert/Certificate;
    :cond_0
    if-eqz v5, :cond_1

    .line 534
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .end local v1           #e:Ljava/util/Enumeration;
    :cond_1
    :goto_1
    move-object v4, v5

    .line 540
    .end local v3           #i:I
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v6           #keyStore:Ljava/security/KeyStore;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    return-void

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v7, "VzwLocationMgrService"

    const-string v8, "loadPublicKeys(): FileNotFoundException: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 533
    if-eqz v4, :cond_2

    .line 534
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 536
    :catch_1
    move-exception v1

    .line 537
    .local v1, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    :goto_4
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 523
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 524
    .restart local v1       #e:Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string v7, "VzwLocationMgrService"

    const-string v8, "loadPublicKeys(): IOException: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 533
    if-eqz v4, :cond_2

    .line 534
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 536
    :catch_3
    move-exception v1

    .line 537
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    goto :goto_4

    .line 525
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 526
    .local v1, e:Ljava/security/KeyStoreException;
    :goto_6
    :try_start_7
    const-string v7, "VzwLocationMgrService"

    const-string v8, "loadPublicKeys(): KeyStoreException: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 533
    if-eqz v4, :cond_2

    .line 534
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 536
    :catch_5
    move-exception v1

    .line 537
    .local v1, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    goto :goto_4

    .line 527
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 528
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :goto_7
    :try_start_9
    const-string v7, "VzwLocationMgrService"

    const-string v8, "loadPublicKeys(): NoSuchAlgorithmException: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 533
    if-eqz v4, :cond_2

    .line 534
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_2

    .line 536
    :catch_7
    move-exception v1

    .line 537
    .local v1, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    goto :goto_4

    .line 529
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 530
    .local v1, e:Ljava/security/cert/CertificateException;
    :goto_8
    :try_start_b
    const-string v7, "VzwLocationMgrService"

    const-string v8, "loadPublicKeys(): CertificateException: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 533
    if-eqz v4, :cond_2

    .line 534
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_2

    .line 536
    :catch_9
    move-exception v1

    .line 537
    .local v1, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    goto :goto_4

    .line 532
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 533
    :goto_9
    if-eqz v4, :cond_3

    .line 534
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 532
    :cond_3
    :goto_a
    throw v7

    .line 536
    :catch_a
    move-exception v1

    .line 537
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "VzwLocationMgrService"

    const-string v9, "IOException, closing files "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 536
    .end local v4           #input:Ljava/io/FileInputStream;
    .local v1, e:Ljava/util/Enumeration;
    .restart local v3       #i:I
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v6       #keyStore:Ljava/security/KeyStore;
    :catch_b
    move-exception v1

    .line 537
    .local v1, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 532
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #i:I
    .end local v6           #keyStore:Ljava/security/KeyStore;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_9

    .line 529
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_c
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_8

    .line 527
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_d
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_7

    .line 525
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_e
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_6

    .line 523
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_f
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_5

    .line 521
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_10
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1105
    :cond_0
    monitor-exit v1

    .line 1106
    return-void

    .line 1105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setGpsIconEnabled(Z)V
    .locals 2
    .parameter "Enabled"

    .prologue
    .line 799
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 801
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 802
    return-void
.end method

.method private setGpsIconFixChange(Z)V
    .locals 2
    .parameter "fix"

    .prologue
    .line 806
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 808
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 809
    return-void
.end method

.method private updateProviderListenersLocked(Lcom/vzw/location/VzwLocationProviderProxy;Z)V
    .locals 3
    .parameter "p"
    .parameter "enabled"

    .prologue
    .line 318
    if-eqz p2, :cond_0

    .line 319
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mShutdownGpsTask:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    invoke-virtual {v0}, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->cancel()V

    .line 320
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationManagerCallbacks:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwLocationProviderProxy;->init(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 329
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkManager:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-virtual {v0, p2}, Lcom/vzw/location/VzwGpsNwMgr;->onProviderUpdate(Z)V

    .line 330
    return-void

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->stop()Z

    .line 325
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mShutdownGpsTask:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->start(Lcom/vzw/location/VzwLocationProviderProxy;J)V

    goto :goto_0
.end method

.method private updateProviders()V
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->updateProvidersLocked()V

    .line 285
    monitor-exit v1

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateProvidersLocked()V
    .locals 10

    .prologue
    .line 290
    :try_start_0
    iget-object v7, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v8, "location"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 292
    .local v3, locationManager:Landroid/location/LocationManager;
    iget-object v7, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 293
    iget-object v7, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 294
    .local v5, p:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-virtual {v5}, Lcom/vzw/location/VzwLocationProviderProxy;->isEnabled()Z

    move-result v2

    .line 295
    .local v2, isEnabled:Z
    invoke-virtual {v5}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, name:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v6

    .line 298
    .local v6, shouldBeEnabled:Z
    if-eqz v2, :cond_1

    if-nez v6, :cond_1

    .line 299
    const-string v7, "VzwLocationMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateProvidersLocked() disable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/vzw/location/VzwLocationManagerService;->updateProviderListenersLocked(Lcom/vzw/location/VzwLocationProviderProxy;Z)V

    .line 301
    if-eqz v3, :cond_0

    .line 302
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/location/LocationManager;->setVzwLocationStatus(Z)V

    .line 292
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 304
    :cond_1
    if-nez v2, :cond_0

    if-eqz v6, :cond_0

    .line 305
    const-string v7, "VzwLocationMgrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateProvidersLocked() enable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v7, 0x1

    invoke-direct {p0, v5, v7}, Lcom/vzw/location/VzwLocationManagerService;->updateProviderListenersLocked(Lcom/vzw/location/VzwLocationProviderProxy;Z)V

    .line 307
    if-eqz v3, :cond_0

    .line 308
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/location/LocationManager;->setVzwLocationStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 312
    .end local v1           #i:I
    .end local v2           #isEnabled:Z
    .end local v3           #locationManager:Landroid/location/LocationManager;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    .end local v6           #shouldBeEnabled:Z
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "VzwLocationMgrService"

    const-string v8, "exception updating providers:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private verifyPackageCert([Landroid/content/pm/ApplicationInfo;)Z
    .locals 14
    .parameter "appInfo"

    .prologue
    .line 388
    const/4 v9, 0x0

    .line 389
    .local v9, packageVerified:Z
    if-eqz p1, :cond_5

    iget-object v11, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    if-eqz v11, :cond_5

    .line 390
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v11, p1

    if-ge v4, v11, :cond_5

    .line 391
    const/4 v6, 0x0

    .line 393
    .local v6, jarFile:Ljava/util/jar/JarFile;
    const/4 v1, 0x0

    .line 394
    .local v1, certs:[Ljava/security/cert/Certificate;
    const/16 v11, 0x2000

    :try_start_0
    new-array v10, v11, [B

    .line 395
    .local v10, readBuffer:[B
    aget-object v11, p1, v4

    iget-object v3, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 397
    .local v3, fName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, ApkName:Ljava/io/File;
    new-instance v7, Ljava/util/jar/JarFile;

    const/4 v11, 0x1

    invoke-direct {v7, v0, v11}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 399
    .end local v6           #jarFile:Ljava/util/jar/JarFile;
    .local v7, jarFile:Ljava/util/jar/JarFile;
    :try_start_1
    const-string v11, "AndroidManifest.xml"

    invoke-virtual {v7, v11}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v8

    .line 402
    .local v8, je:Ljava/util/jar/JarEntry;
    if-eqz v8, :cond_7

    .line 404
    invoke-virtual {v7, v8}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 405
    .local v5, is:Ljava/io/InputStream;
    if-eqz v5, :cond_1

    .line 407
    :cond_0
    const/4 v11, 0x0

    :try_start_2
    array-length v12, v10

    invoke-virtual {v5, v10, v11, v12}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 409
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 414
    :cond_1
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 415
    if-nez v1, :cond_4

    .line 434
    if-eqz v7, :cond_2

    .line 436
    :try_start_4
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_1
    move-object v6, v7

    .line 390
    .end local v0           #ApkName:Ljava/io/File;
    .end local v3           #fName:Ljava/lang/String;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #jarFile:Ljava/util/jar/JarFile;
    .end local v8           #je:Ljava/util/jar/JarEntry;
    .end local v10           #readBuffer:[B
    .restart local v6       #jarFile:Ljava/util/jar/JarFile;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 409
    .end local v6           #jarFile:Ljava/util/jar/JarFile;
    .restart local v0       #ApkName:Ljava/io/File;
    .restart local v3       #fName:Ljava/lang/String;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #jarFile:Ljava/util/jar/JarFile;
    .restart local v8       #je:Ljava/util/jar/JarEntry;
    .restart local v10       #readBuffer:[B
    :catchall_0
    move-exception v11

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 431
    .end local v5           #is:Ljava/io/InputStream;
    .end local v8           #je:Ljava/util/jar/JarEntry;
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 432
    .end local v0           #ApkName:Ljava/io/File;
    .end local v3           #fName:Ljava/lang/String;
    .end local v7           #jarFile:Ljava/util/jar/JarFile;
    .end local v10           #readBuffer:[B
    .local v2, e:Ljava/io/IOException;
    .restart local v6       #jarFile:Ljava/util/jar/JarFile;
    :goto_3
    :try_start_6
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, reading files "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 434
    if-eqz v6, :cond_3

    .line 436
    :try_start_7
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 437
    :catch_1
    move-exception v2

    .line 438
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, closing files "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 420
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #jarFile:Ljava/util/jar/JarFile;
    .restart local v0       #ApkName:Ljava/io/File;
    .restart local v3       #fName:Ljava/lang/String;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #jarFile:Ljava/util/jar/JarFile;
    .restart local v8       #je:Ljava/util/jar/JarEntry;
    .restart local v10       #readBuffer:[B
    :cond_4
    :try_start_8
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->hasMatchingCert([Ljava/security/cert/Certificate;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v11

    if-eqz v11, :cond_6

    .line 421
    const/4 v9, 0x1

    .line 434
    if-eqz v7, :cond_5

    .line 436
    :try_start_9
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 444
    .end local v0           #ApkName:Ljava/io/File;
    .end local v1           #certs:[Ljava/security/cert/Certificate;
    .end local v3           #fName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #jarFile:Ljava/util/jar/JarFile;
    .end local v8           #je:Ljava/util/jar/JarEntry;
    .end local v10           #readBuffer:[B
    :cond_5
    :goto_4
    return v9

    .line 426
    .restart local v0       #ApkName:Ljava/io/File;
    .restart local v1       #certs:[Ljava/security/cert/Certificate;
    .restart local v3       #fName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #jarFile:Ljava/util/jar/JarFile;
    .restart local v8       #je:Ljava/util/jar/JarEntry;
    .restart local v10       #readBuffer:[B
    :cond_6
    :try_start_a
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->hasValidDevCert([Ljava/security/cert/Certificate;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    move-result v11

    if-eqz v11, :cond_7

    .line 427
    const/4 v9, 0x1

    .line 434
    if-eqz v7, :cond_5

    .line 436
    :try_start_b
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 437
    :catch_2
    move-exception v2

    .line 438
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, closing files "

    :goto_5
    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 434
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/InputStream;
    :cond_7
    if-eqz v7, :cond_8

    .line 436
    :try_start_c
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_8
    :goto_6
    move-object v6, v7

    .line 441
    .end local v7           #jarFile:Ljava/util/jar/JarFile;
    .restart local v6       #jarFile:Ljava/util/jar/JarFile;
    goto :goto_2

    .line 434
    .end local v0           #ApkName:Ljava/io/File;
    .end local v3           #fName:Ljava/lang/String;
    .end local v8           #je:Ljava/util/jar/JarEntry;
    .end local v10           #readBuffer:[B
    :catchall_1
    move-exception v11

    :goto_7
    if-eqz v6, :cond_9

    .line 436
    :try_start_d
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 434
    :cond_9
    :goto_8
    throw v11

    .line 437
    :catch_3
    move-exception v2

    .line 438
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "VzwLocationMgrService"

    const-string v13, "IOException, closing files "

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 437
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #jarFile:Ljava/util/jar/JarFile;
    .restart local v0       #ApkName:Ljava/io/File;
    .restart local v3       #fName:Ljava/lang/String;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #jarFile:Ljava/util/jar/JarFile;
    .restart local v8       #je:Ljava/util/jar/JarEntry;
    .restart local v10       #readBuffer:[B
    :catch_4
    move-exception v2

    .line 438
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, closing files "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 437
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 438
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, closing files "

    goto :goto_5

    .line 437
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/InputStream;
    :catch_6
    move-exception v2

    .line 438
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, closing files "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 434
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #je:Ljava/util/jar/JarEntry;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #jarFile:Ljava/util/jar/JarFile;
    .restart local v6       #jarFile:Ljava/util/jar/JarFile;
    goto :goto_7

    .line 431
    .end local v0           #ApkName:Ljava/io/File;
    .end local v3           #fName:Ljava/lang/String;
    .end local v10           #readBuffer:[B
    :catch_7
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 699
    const-string v2, "VzwLocationMgrService"

    const-string v3, "addVzwGpsStatusListener()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    if-nez v2, :cond_0

    .line 702
    const-string v2, "VzwLocationMgrService"

    const-string v3, "addVzwGpsStatusListener(): mGpsStatusProvider==null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :goto_0
    return v1

    .line 706
    :cond_0
    if-nez p1, :cond_1

    .line 707
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "addVzwGpsStatusListener(): listener==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    invoke-interface {v2, p1}, Lcom/vzw/location/IVzwGpsStatusProvider;->addGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v1, p1}, Lcom/vzw/location/VzwGpsReqMgr;->addStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    .line 719
    const/4 v1, 0x1

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "mGpsStatusProvider.addGpsStatusListener() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNumListeners()I
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsReqMgr;->getNumRequests()I

    move-result v0

    return v0
.end method

.method public getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "provider"

    .prologue
    .line 741
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 742
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->_getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    monitor-exit v3

    .line 748
    :goto_0
    return-object v2

    .line 743
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 744
    :catch_0
    move-exception v1

    .line 745
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 746
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 747
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "getProviderInfo() exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 4
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 579
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->_getProvidersLocked(Z)Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 585
    :goto_0
    return-object v2

    .line 580
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 583
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "getProviders() exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "provider"

    .prologue
    .line 775
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 776
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->_isProviderEnabledLocked(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    .line 782
    :goto_0
    return v2

    .line 777
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 778
    :catch_0
    move-exception v1

    .line 779
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 780
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 781
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "isProviderEnabled() exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public locationCallbackFinished(Lcom/vzw/location/IVzwLocationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 236
    const-string v0, "VzwLocationMgrService"

    const-string v1, "locationCallbackFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsReqMgr;->locationCallbackFinished()V

    .line 238
    return-void
.end method

.method public removeUpdates(Lcom/vzw/location/IVzwLocationListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 685
    const-string v2, "VzwLocationMgrService"

    const-string v3, "removeUpdates()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequest(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 696
    :goto_0
    return-void

    .line 691
    :catch_0
    move-exception v1

    .line 692
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 693
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 694
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "removeUpdates() exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 723
    const-string v1, "VzwLocationMgrService"

    const-string v2, "removeVzwGpsStatusListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwGpsStatusProvider;->removeGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v1, p1}, Lcom/vzw/location/VzwGpsReqMgr;->removeStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    .line 732
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VzwLocationMgrService"

    const-string v2, "mGpsStatusProvider.removeGpsStatusListener() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V
    .locals 6
    .parameter "provider"
    .parameter "criteria"
    .parameter "listener"

    .prologue
    .line 610
    const-string v2, "VzwLocationMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLocationUpdates(): listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v3, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLocationUpdates(): fix mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 616
    if-nez p2, :cond_3

    .line 617
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsReqMgr;->getRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    .line 618
    .local v1, oldReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v2

    if-nez v2, :cond_2

    .line 619
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "requestLocationUpdates(): no criteria set previously"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 611
    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_1
    const-string v2, "null"

    goto :goto_0

    .line 622
    .restart local v1       #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_2
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object p2

    .line 625
    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_3
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    .line 626
    .local v0, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    if-nez v0, :cond_4

    .line 627
    const-string v2, "VzwLocationMgrService"

    const-string v3, "fixRate==null in requestLocationUpdates()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    .end local v0           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    .line 629
    .restart local v0       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vzw/location/VzwGpsFixRate;->setGpsFixRate(JJ)V

    .line 630
    invoke-virtual {p2, v0}, Lcom/vzw/location/VzwCriteria;->setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V

    .line 633
    :cond_4
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v2

    if-nez v2, :cond_5

    .line 634
    const-string v2, "VzwLocationMgrService"

    const-string v3, "perf==null in requestLocationUpdates()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v2, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v2}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    invoke-virtual {p2, v2}, Lcom/vzw/location/VzwCriteria;->setPerformance(Lcom/vzw/location/VzwGpsPerformance;)V

    .line 638
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/vzw/location/VzwLocationManagerService;->_requestLocationUpdates(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    .line 639
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V
    .locals 8
    .parameter "provider"
    .parameter "criteria"
    .parameter "listener"

    .prologue
    const-wide/16 v6, 0x1

    .line 643
    const-string v2, "VzwLocationMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSingleLocationUpdate(): listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v3, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSingleLocationUpdate(): fix mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 649
    if-nez p2, :cond_3

    .line 650
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsReqMgr;->getRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    .line 651
    .local v1, oldReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v2

    if-nez v2, :cond_2

    .line 652
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "requestSingleLocationUpdate(): no criteria set previously"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 644
    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_1
    const-string v2, "null"

    goto :goto_0

    .line 655
    .restart local v1       #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_2
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object p2

    .line 658
    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_3
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    .line 659
    .local v0, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    if-nez v0, :cond_4

    .line 660
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    .end local v0           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    .line 661
    .restart local v0       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {p2, v0}, Lcom/vzw/location/VzwCriteria;->setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V

    .line 664
    :cond_4
    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    .line 665
    const-string v2, "VzwLocationMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSingleLocationUpdate() with numFixes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/vzw/location/VzwGpsFixRate;->setGpsFixRate(JJ)V

    .line 667
    invoke-virtual {p2, v0}, Lcom/vzw/location/VzwCriteria;->setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V

    .line 670
    :cond_5
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v2

    if-nez v2, :cond_6

    .line 671
    const-string v2, "VzwLocationMgrService"

    const-string v3, "perf==null in requestSingleLocationUpdate()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v2, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v2}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    invoke-virtual {p2, v2}, Lcom/vzw/location/VzwCriteria;->setPerformance(Lcom/vzw/location/VzwGpsPerformance;)V

    .line 675
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/vzw/location/VzwLocationManagerService;->_requestLocationUpdates(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    .line 676
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 228
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 229
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 230
    new-instance v0, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;-><init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/VzwLocationManagerService$1;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    .line 231
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->initialize()V

    .line 232
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 233
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1262
    if-nez p1, :cond_0

    .line 1263
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1267
    :cond_0
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 1269
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1273
    :cond_1
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1274
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 1275
    .local v0, p:Lcom/vzw/location/VzwLocationProviderProxy;
    if-nez v0, :cond_2

    .line 1276
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p==null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1279
    .end local v0           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1278
    .restart local v0       #p:Lcom/vzw/location/VzwLocationProviderProxy;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/vzw/location/VzwLocationProviderProxy;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public startAuthentication(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)V
    .locals 2
    .parameter "provider"
    .parameter "configInit"

    .prologue
    .line 1252
    const-string v0, "VzwLocationMgrService"

    const-string v1, "startAuthentication()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0, p2}, Lcom/vzw/location/VzwGpsReqMgr;->startAuthentication(Lcom/vzw/location/VzwGpsConfigInit;)V

    .line 1254
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "VzwLocationManagerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 184
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 185
    return-void
.end method
