.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/GpsLocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;,
        Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;,
        Lcom/android/server/location/GpsLocationProvider$MovementMonitor;,
        Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$Listener;,
        Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final ALARM_MVMT_MON:Ljava/lang/String; = "com.android.internal.location.ALARM_MVMT_MON"

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_HYBRID:I = 0x10

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final ENABLE_TRACKING_HYBRID:I = 0x11

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final FIX:Z = true

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = -0x1

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_ALMANAC_CORR:I = 0x1000

.field private static final GPS_DELETE_ALMANAC_CORR_GLO:I = 0x40000

.field private static final GPS_DELETE_ALMANAC_GLO:I = 0x8000

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x800

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_EPHEMERIS_GLO:I = 0x4000

.field private static final GPS_DELETE_FREQ_BIAS_EST:I = 0x2000

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVDIR_GLO:I = 0x10000

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_SVSTEER_GLO:I = 0x20000

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_TIME_GLO:I = 0x100000

.field private static final GPS_DELETE_TIME_GPS:I = 0x80000

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_LOCK_ALL:I = 0x4

.field private static final GPS_LOCK_MI:I = 0x2

.field private static final GPS_LOCK_MT:I = 0x3

.field private static final GPS_LOCK_NONE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_PROVIDER_MESSAGE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_BEGIN_GPS_NOP:I = 0x64

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final GPS_STATUS_SESSION_END_GPS_NOP:I = 0x65

.field private static final HYBRID_PROVIDER_MESSAGE:I = 0x2

.field private static final INITIALIZE:I = 0xf

.field private static final INITIALIZE_NTP_XTRA:I = 0x13

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_FLOOR_NUMBER:I = 0x80

.field private static final LOCATION_HAS_IS_INDOOR:I = 0x40

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_MAP_INDEX:I = 0x200

.field private static final LOCATION_HAS_MAP_URL:I = 0x100

.field private static final LOCATION_HAS_SOURCE_INFO:I = 0x20

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_NATIVE_RETRIES:I = 0x5

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX:Z = false

.field private static final NO_FIX_MVMT_MON_TIMEOUT:I = 0xea60

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_NETWORK_LOCATION:I = 0xd

.field private static final REQUEST_PHONE_CONTEXT_SETTINGS:I = 0xb

.field private static final REQUEST_SINGLE_SHOT:I = 0xa

.field private static final REQUEST_SINGLE_SHOT_HYBRID:I = 0x12

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final ULP_LOCATION_IS_FROM_GNSS:I = 0x2

.field private static final ULP_LOCATION_IS_FROM_HYBRID:I = 0x1

.field private static final ULP_NETWORK_POSITION_SRC_CELL:I = 0x2

.field private static final ULP_NETWORK_POSITION_SRC_UNKNOWN:I = 0xff

.field private static final ULP_NETWORK_POSITION_SRC_WIFI:I = 0x1

.field private static final ULP_NETWORK_POS_GET_LAST_KNOWN_LOCATION_REQUEST:I = 0x3

.field private static final ULP_NETWORK_POS_START_PERIODIC_REQUEST:I = 0x2

.field private static final ULP_NETWORK_POS_STATUS_REQUEST:I = 0x1

.field private static final ULP_NETWORK_POS_STOP_REQUEST:I = 0x4

.field private static final ULP_PHONE_CONTEXT_AGPS_OFF:I = 0x8

.field private static final ULP_PHONE_CONTEXT_AGPS_ON:I = 0x4

.field private static final ULP_PHONE_CONTEXT_AGPS_SETTING:I = 0x10

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_OFF:I = 0x200

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_ON:I = 0x100

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_STATE:I = 0x8

.field private static final ULP_PHONE_CONTEXT_CELL_BASED_POSITION_OFF:I = 0x20

.field private static final ULP_PHONE_CONTEXT_CELL_BASED_POSITION_ON:I = 0x10

.field private static final ULP_PHONE_CONTEXT_ENH_LOCATION_SERVICES_OFF:I = 0x800

.field private static final ULP_PHONE_CONTEXT_ENH_LOCATION_SERVICES_ON:I = 0x400

.field private static final ULP_PHONE_CONTEXT_ENH_LOCATION_SERVICES_SETTING:I = 0x20

.field private static final ULP_PHONE_CONTEXT_GPS_OFF:I = 0x2

.field private static final ULP_PHONE_CONTEXT_GPS_ON:I = 0x1

.field private static final ULP_PHONE_CONTEXT_GPS_SETTING:I = 0x1

.field private static final ULP_PHONE_CONTEXT_NETWORK_POSITION_SETTING:I = 0x2

.field private static final ULP_PHONE_CONTEXT_REQUEST_TYPE_ONCHANGE:I = 0x2

.field private static final ULP_PHONE_CONTEXT_REQUEST_TYPE_SINGLE:I = 0x1

.field private static final ULP_PHONE_CONTEXT_UPDATE_TYPE_ONCHANGE:I = 0x2

.field private static final ULP_PHONE_CONTEXT_UPDATE_TYPE_SINGLE:I = 0x1

.field private static final ULP_PHONE_CONTEXT_WIFI_OFF:I = 0x80

.field private static final ULP_PHONE_CONTEXT_WIFI_ON:I = 0x40

.field private static final ULP_PHONE_CONTEXT_WIFI_SETTING:I = 0x4

.field private static final ULP_PROVIDER_SOURCE_GNSS:I = 0x1

.field private static final ULP_PROVIDER_SOURCE_HYBRID:I = 0x2

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NATIVE_PHONE_CONTEXT_SETTINGS:I = 0xc

.field private static final UPDATE_NETWORK_LOCATION:I = 0xe

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field private static final WAKELOCK_TIMEOUT:I = 0x1d4c0

.field private static final XTRA_INTERVAL:J = 0x7b98a00L

.field private static mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;


# instance fields
.field private volatile mAgpsSetting:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAzimString:Ljava/lang/String;

.field private volatile mBatteryCharging:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

.field private mElevString:Ljava/lang/String;

.field private mEngineCapabilities:I

.field private volatile mEngineLock:I

.field private mEngineOn:Z

.field private volatile mEnhServicesSetting:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private volatile mGpsEnabled:Z

.field private volatile mGpsSetting:Z

.field private mGpsStarted:Z

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private volatile mHybridEnabled:Z

.field private mHybridStarted:Z

.field mInitializeNvItems:Ljava/lang/Runnable;

.field private mInitializeRetry:I

.field private volatile mInitialized:Z

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

.field private mLastFixTime:J

.field private mLastSvTime:J

.field private mLastXtraInjection:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocMgr:Landroid/location/LocationManager;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

.field private final mMvmtMonIntent:Landroid/app/PendingIntent;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNetworkLocationListener:Landroid/location/LocationListener;

.field private volatile mNetworkProvSetting:Z

.field private mNmeaBuffer:[B

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mNtpXtraInitialized:Z

.field private mPendingListenerMessages:I

.field private mPendingMessageBits:I

.field private mPeriodicTimeInjection:Z

.field private mPositionMode:I

.field private mProperties:Ljava/util/Properties;

.field private volatile mRequestContextType:I

.field private volatile mRequestType:I

.field private mSaving:Z

.field private volatile mSetLockAllowed:Z

.field private mSilentCnt:I

.field private mSingleShotGps:Z

.field private mSingleShotHybrid:Z

.field private mSnrs:[F

.field private mSnrsString:Ljava/lang/String;

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mSvsString:Ljava/lang/String;

.field private mTTFF:I

.field private final mThread:Ljava/lang/Thread;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private volatile mVzwEnabled:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private volatile mWifiSetting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3344
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    .line 3403
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 12
    .parameter "context"
    .parameter "locationManager"

    .prologue
    .line 651
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 280
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    .line 281
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    .line 282
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    .line 283
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    .line 284
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    .line 285
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mEnhServicesSetting:Z

    .line 324
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    .line 325
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 332
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 354
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    .line 355
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    .line 362
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSetLockAllowed:Z

    .line 366
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    .line 369
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializeRetry:I

    .line 380
    sget-object v8, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 383
    sget-object v8, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 385
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpXtraInitialized:Z

    .line 398
    const/16 v8, 0x3e8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 401
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 404
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    .line 407
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    .line 410
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    .line 414
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    .line 427
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 429
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 445
    new-instance v8, Landroid/location/Location;

    const-string v9, "gps"

    invoke-direct {v8, v9}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 446
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 447
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 454
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 485
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 510
    new-instance v8, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v8, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 561
    new-instance v8, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v8, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 797
    new-instance v8, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v8, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializeNvItems:Ljava/lang/Runnable;

    .line 2578
    new-instance v8, Lcom/android/server/location/GpsLocationProvider$4;

    invoke-direct {v8, p0}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2712
    new-instance v8, Lcom/android/server/location/GpsLocationProvider$5;

    invoke-direct {v8, p0}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    .line 3327
    const/16 v8, 0x20

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 3328
    const/16 v8, 0x20

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 3329
    const/16 v8, 0x20

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 3330
    const/16 v8, 0x20

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 3331
    const/4 v8, 0x3

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 3342
    const/16 v8, 0x78

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 652
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 653
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 654
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 655
    new-instance v8, Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v8, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 657
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 660
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 661
    .local v4, powerManager:Landroid/os/PowerManager;
    const/4 v8, 0x1

    const-string v9, "GpsLocationProvider"

    invoke-virtual {v4, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 662
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 664
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 665
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 666
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 668
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.internal.location.ALARM_MVMT_MON"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    .line 671
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 672
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v8, "sms"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 674
    const-string v8, "localhost"

    const-string v9, "7275"

    invoke-virtual {v2, v8, v9}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 677
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 678
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v8, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    :try_start_0
    const-string v8, "application/vnd.omaloc-supl-init"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 686
    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 689
    const-string v8, "batteryinfo"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 691
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 695
    const/4 v6, 0x0

    .line 697
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v8, "/etc/gps.conf"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v1, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 699
    .end local v6           #stream:Ljava/io/FileInputStream;
    .local v7, stream:Ljava/io/FileInputStream;
    :try_start_2
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v8, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 701
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v9, "SUPL_HOST"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 702
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v9, "SUPL_PORT"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, portString:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 705
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 711
    :cond_0
    :goto_1
    :try_start_4
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v9, "C2K_HOST"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 712
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v9, "C2K_PORT"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 713
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v8, :cond_1

    if-eqz v3, :cond_1

    .line 715
    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 723
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 725
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_2
    :goto_3
    move-object v6, v7

    .line 734
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :cond_3
    :goto_4
    const-string v8, "persist.mot.gps.smart_battery"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 735
    const-string v8, "GpsLocationProvider"

    const-string v9, "MovementMonitor disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    .line 750
    :goto_5
    new-instance v8, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;

    invoke-direct {v8, p0}, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 751
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 754
    :goto_6
    :try_start_7
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5

    .line 760
    return-void

    .line 681
    .end local v6           #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v8, "GpsLocationProvider"

    const-string v9, "Malformed SUPL init mime type"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 706
    .end local v0           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #portString:Ljava/lang/String;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 707
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_8
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse SUPL_PORT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 720
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #portString:Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v6, v7

    .line 721
    .end local v1           #file:Ljava/io/File;
    .end local v7           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :goto_7
    :try_start_9
    const-string v8, "GpsLocationProvider"

    const-string v9, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 723
    if-eqz v6, :cond_3

    .line 725
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_4

    .line 726
    :catch_3
    move-exception v8

    goto :goto_4

    .line 716
    .end local v0           #e:Ljava/io/IOException;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #portString:Ljava/lang/String;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    .line 717
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_b
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse C2K_PORT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    .line 723
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #portString:Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v6, v7

    .end local v1           #file:Ljava/io/File;
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :goto_8
    if-eqz v6, :cond_4

    .line 725
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 723
    :cond_4
    :goto_9
    throw v8

    .line 738
    :cond_5
    const-string v8, "sensorhub"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/sensorhub/SensorHub;

    .line 739
    .local v5, sh:Lcom/motorola/sensorhub/SensorHub;
    if-nez v5, :cond_6

    .line 740
    const-string v8, "GpsLocationProvider"

    const-string v9, "Sensor hub service not found"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    goto :goto_5

    .line 743
    :cond_6
    new-instance v8, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-direct {v8, p0, v5}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;-><init>(Lcom/android/server/location/GpsLocationProvider;Lcom/motorola/sensorhub/SensorHub;)V

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    .line 744
    const-string v8, "GpsLocationProvider"

    const-string v9, "MovementMonitor created"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 756
    .end local v5           #sh:Lcom/motorola/sensorhub/SensorHub;
    :catch_5
    move-exception v0

    .line 757
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_6

    .line 726
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_6
    move-exception v9

    goto :goto_9

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #portString:Ljava/lang/String;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    goto/16 :goto_3

    .line 723
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    goto :goto_8

    .line 720
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(ZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateEngineLock()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$DownloadStates;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnableHybrid()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisableHybrid()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingGps(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingHybrid(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShotGps()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShotHybrid()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;ILandroid/app/PendingIntent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextRequest(II)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativeNetworkLocationRequest(II)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleNetworkLocationUpdate(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInitialize()V

    return-void
.end method

.method static synthetic access$4902(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpXtraInitialized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleIntializeNtpXtra()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$5272(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$5308(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$5310(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->initialize()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/location/GpsLocationProvider;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->startNavigating_Locked(ZZ)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSaving:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSaving:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/ILocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/location/GpsLocationProvider;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    return-wide v0
.end method

.method static synthetic access$6502(Lcom/android/server/location/GpsLocationProvider;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/location/GpsLocationProvider;ILandroid/app/PendingIntent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$7602(Lcom/android/server/location/GpsLocationProvider;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocMgr:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    return v0
.end method

.method static synthetic access$7800(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/android/server/location/GpsLocationProvider;IIJFZII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 130
    invoke-direct/range {p0 .. p8}, Lcom/android/server/location/GpsLocationProvider;->native_update_criteria(IIJFZII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSetLockAllowed:Z

    return p1
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 635
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 636
    .local v1, messages:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 637
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 638
    .local v2, supl_init:[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    .end local v2           #supl_init:[B
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 643
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 644
    .local v0, supl_init:[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 645
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "extras"

    .prologue
    .line 1854
    if-nez p1, :cond_1

    .line 1855
    const/4 v0, -0x1

    .line 1882
    .local v0, flags:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_17

    .line 1883
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1884
    const/4 v1, 0x1

    .line 1887
    :goto_1
    return v1

    .line 1857
    .end local v0           #flags:I
    :cond_1
    const/4 v0, 0x0

    .line 1858
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    .line 1859
    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 1860
    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 1861
    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 1862
    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 1863
    :cond_6
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 1864
    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    .line 1865
    :cond_8
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    .line 1866
    :cond_9
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    .line 1867
    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    .line 1868
    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    .line 1869
    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    or-int/lit16 v0, v0, 0x800

    .line 1870
    :cond_d
    const-string v1, "almanac-corr"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit16 v0, v0, 0x1000

    .line 1871
    :cond_e
    const-string v1, "freq-bias-est"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit16 v0, v0, 0x2000

    .line 1872
    :cond_f
    const-string v1, "ephemeris-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit16 v0, v0, 0x4000

    .line 1873
    :cond_10
    const-string v1, "almanac-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1874
    :cond_11
    const-string v1, "svdir-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 1875
    :cond_12
    const-string v1, "svsteer-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    .line 1876
    :cond_13
    const-string v1, "almanac-corr-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 1877
    :cond_14
    const-string v1, "time-gps"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 1878
    :cond_15
    const-string v1, "time-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    .line 1879
    :cond_16
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1887
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .locals 6
    .parameter "connType"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3405
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAGpsConnectionInfo connType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    packed-switch p1, :pswitch_data_0

    .line 3420
    :goto_0
    return-object v0

    .line 3410
    :pswitch_0
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v1, v1, v4

    if-nez v1, :cond_0

    .line 3411
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    invoke-direct {v2, p0, v4, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V

    aput-object v2, v1, v4

    .line 3413
    :cond_0
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v0, v0, v4

    goto :goto_0

    .line 3415
    :pswitch_1
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v1, v1, v5

    if-nez v1, :cond_1

    .line 3416
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V

    aput-object v2, v1, v5

    .line 3418
    :cond_1
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v0, v0, v5

    goto :goto_0

    .line 3406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentApnTypes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2958
    const-string v0, "persist.radio.pref_type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2984
    const-string v0, "persist.radio.pref_apn"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAddListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1770
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1771
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1773
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate add listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    monitor-exit v2

    .line 1785
    :goto_0
    return-void

    .line 1776
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1777
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1779
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1784
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1780
    :catch_0
    move-exception v0

    .line 1781
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in addListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1249
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleDisable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    if-nez v0, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1255
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 1266
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1267
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1268
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1272
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    .line 1277
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSetLockAllowed:Z

    if-eqz v0, :cond_1

    .line 1278
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateEngineLock()V

    .line 1283
    :cond_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDisable.EndGpsProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HybridProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HalState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDisableHybrid()V
    .locals 3

    .prologue
    .line 1289
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleDisableHybrid."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    if-nez v0, :cond_0

    .line 1297
    :goto_0
    return-void

    .line 1293
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    .line 1295
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDisableHybrid.EndGpsProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HybridProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HalState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDownloadXtraData()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    .line 1041
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entering handleDownloadXtraData mNet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNtp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpXtraInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpXtraInitialized:Z

    if-nez v2, :cond_1

    .line 1048
    :cond_0
    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 1073
    :goto_0
    return-void

    .line 1051
    :cond_1
    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Downloading:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 1053
    new-instance v1, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .line 1054
    .local v1, xtraDownloader:Lcom/android/server/location/GpsXtraDownloader;
    invoke-virtual {v1}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    .line 1055
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 1057
    const-string v2, "GpsLocationProvider"

    const-string v3, "calling native_inject_xtra_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLastXtraInjection:J

    .line 1062
    array-length v2, v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    .line 1072
    :goto_1
    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    goto :goto_0

    .line 1067
    :cond_2
    const-string v2, "GpsLocationProvider"

    const-string v3, "No xtra data returned - will try after RETRY_INTERVAL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1070
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private handleEnable()V
    .locals 3

    .prologue
    .line 1196
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleEnable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1200
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    .line 1204
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSetLockAllowed:Z

    if-eqz v0, :cond_1

    .line 1205
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateEngineLock()V

    .line 1210
    :cond_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnable.EndGpsProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HybridProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HalState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleEnableHybrid()V
    .locals 3

    .prologue
    .line 1216
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleEnableHybrid."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1225
    :goto_0
    return-void

    .line 1220
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    .line 1223
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnableHybrid.EndGpsProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HybridProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HalState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleEnableLocationTrackingGps(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    .line 1342
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In handleEnableLocationTrackingGps. enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    if-eqz p1, :cond_0

    .line 1344
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1345
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1347
    invoke-direct {p0, v4, v4}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(ZZ)V

    .line 1369
    :goto_0
    return-void

    .line 1350
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1351
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1352
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1357
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating(Z)V

    .line 1359
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1360
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    if-eqz v1, :cond_2

    .line 1361
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    .line 1365
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1367
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private declared-synchronized handleEnableLocationTrackingHybrid(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 1375
    monitor-enter p0

    :try_start_0
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In handleEnableLocationTrackingHybrid.Beg. enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHybridStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mGpsStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    if-ne p1, v3, :cond_1

    .line 1383
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-nez v0, :cond_0

    .line 1384
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    .line 1386
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in handleEnableLocationTrackingHybrid()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    :goto_0
    monitor-exit p0

    return-void

    .line 1390
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    .line 1401
    :goto_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In handleEnableLocationTrackingHybrid.End. enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHybridStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mGpsStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1393
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-nez v0, :cond_2

    .line 1394
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1395
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1397
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    .line 1398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private handleInitialize()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x1388

    .line 782
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    if-nez v0, :cond_0

    .line 783
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    .line 784
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializeNvItems:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    const-string v0, "GpsLocationProvider"

    const-string v1, "Failed to initialize gps native layer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializeRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializeRetry:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private handleInjectNtpTime()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    .line 999
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpXtraInitialized:Z

    if-nez v0, :cond_1

    .line 1002
    :cond_0
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 1037
    :goto_0
    return-void

    .line 1005
    :cond_1
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Downloading:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 1010
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1011
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v1

    .line 1012
    .local v1, time:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v3

    .line 1013
    .local v3, timeReference:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v6

    .line 1014
    .local v6, certainty:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1016
    .local v10, now:J
    const-string v0, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NTP server returned: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " ("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ") reference: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " certainty: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " system time offset: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v12, v1, v10

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    long-to-int v5, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    .line 1023
    const-wide/32 v8, 0x5265c00

    .line 1029
    .end local v1           #time:J
    .end local v3           #timeReference:J
    .end local v6           #certainty:J
    .end local v10           #now:J
    .local v8, delay:J
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-eqz v0, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1033
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1036
    :cond_2
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    goto/16 :goto_0

    .line 1025
    .end local v8           #delay:J
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v5, "requestTime failed"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-wide/32 v8, 0x493e0

    .restart local v8       #delay:J
    goto :goto_1
.end method

.method private handleIntializeNtpXtra()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 988
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-nez v0, :cond_0

    .line 989
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 990
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIntializeNtpXtra mSupportsXtra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 993
    const/4 v0, 0x6

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 994
    return-void
.end method

.method private handleNativeNetworkLocationRequest(II)V
    .locals 8
    .parameter "type"
    .parameter "interval"

    .prologue
    .line 1481
    packed-switch p1, :pswitch_data_0

    .line 1501
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNativeNetworkLocationRequest. Inccorect request sent in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :goto_0
    return-void

    .line 1483
    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleNativeNetworkLocationRequest NLP start from GP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocMgr:Landroid/location/LocationManager;

    const-string v1, "network"

    int-to-long v2, p2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 1487
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocMgr:Landroid/location/LocationManager;

    const-string v1, "LocationManager.NETWORK_PROVIDER"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 1488
    .local v6, location:Landroid/location/Location;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1489
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1490
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 1491
    .local v7, m:Landroid/os/Message;
    const/4 v0, 0x0

    iput v0, v7, Landroid/os/Message;->arg1:I

    .line 1492
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1493
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1494
    monitor-exit v1

    goto :goto_0

    .end local v7           #m:Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1497
    .end local v6           #location:Landroid/location/Location;
    :pswitch_2
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleNativeNetworkLocationRequest NLP stop from GP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    .line 1481
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleNativePhoneContextRequest(II)V
    .locals 3
    .parameter "contextType"
    .parameter "requestType"

    .prologue
    .line 1472
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 1473
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    .line 1474
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNativePhoneContextRequest invoked from native layer with mRequestContextType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRequestType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V

    .line 1477
    return-void
.end method

.method private handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V
    .locals 26
    .parameter "updateType"
    .parameter "settingsValues"

    .prologue
    .line 1508
    const/4 v3, 0x0

    .line 1510
    .local v3, currentContextType:I
    const/4 v5, 0x0

    .local v5, currentAgpsSetting:Z
    const/4 v7, 0x0

    .line 1511
    .local v7, currentWifiSetting:Z
    const/4 v4, 0x0

    .local v4, currentGpsSetting:Z
    const/4 v6, 0x0

    .line 1512
    .local v6, currentNetworkProvSetting:Z
    const/4 v8, 0x0

    .local v8, currentBatteryCharging:Z
    const/4 v9, 0x0

    .line 1513
    .local v9, currentEnhLocationServicesSetting:Z
    const/16 v18, 0x0

    .local v18, wasAgpsSettingAvailable:Z
    const/16 v23, 0x0

    .line 1514
    .local v23, wasWifiSettingAvailable:Z
    const/16 v21, 0x0

    .local v21, wasGpsSettingAvailable:Z
    const/16 v22, 0x0

    .line 1515
    .local v22, wasNetworkProviderSettingAvailable:Z
    const/16 v19, 0x0

    .local v19, wasBatteryChargingAvailable:Z
    const/16 v20, 0x0

    .line 1517
    .local v20, wasEnhLocationServicesSettingAvailable:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 1518
    .local v17, resolver:Landroid/content/ContentResolver;
    const-string v2, "GpsLocationProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "handleNativePhoneContextUpdate called. updateType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mRequestContextType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mRequestType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    if-nez v2, :cond_0

    .line 1522
    const-string v2, "GpsLocationProvider"

    const-string v24, "handleNativePhoneContextUpdate. Update obtained before request. Ignoring"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :goto_0
    return-void

    .line 1527
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_1

    .line 1529
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 1530
    const-string v2, "gps"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 1532
    const/16 v21, 0x1

    .line 1543
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x10

    const/16 v24, 0x10

    move/from16 v0, v24

    if-ne v2, v0, :cond_2

    .line 1545
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    .line 1547
    const-string v2, "persist.mot.gps.assisted"

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1550
    const/16 v18, 0x1

    .line 1561
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x2

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v2, v0, :cond_3

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocMgr:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v16

    .line 1565
    .local v16, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "network"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_a

    const/4 v14, 0x1

    .line 1566
    .local v14, networkLocProvAvailable:Z
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_c

    .line 1567
    const-string v2, "network"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v14, :cond_b

    const/4 v6, 0x1

    .line 1570
    :goto_4
    const/16 v22, 0x1

    .line 1583
    .end local v14           #networkLocProvAvailable:Z
    .end local v16           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x4

    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v2, v0, :cond_4

    .line 1586
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_f

    .line 1587
    const-string v2, "wifi_on"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_e

    const/4 v7, 0x1

    .line 1589
    :goto_6
    const/16 v23, 0x1

    .line 1601
    :cond_4
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x20

    const/16 v24, 0x20

    move/from16 v0, v24

    if-ne v2, v0, :cond_5

    .line 1604
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_11

    .line 1605
    const-string v2, "enhLocationServices_on"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1608
    .local v11, currentEnhLocationServicesSettingString:Ljava/lang/String;
    if-eqz v11, :cond_10

    .line 1609
    const-string v2, "1"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1614
    :goto_8
    const/16 v20, 0x1

    .line 1627
    .end local v11           #currentEnhLocationServicesSettingString:Ljava/lang/String;
    :cond_5
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x8

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v2, v0, :cond_7

    .line 1630
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_13

    .line 1634
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1635
    .local v13, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v10

    .line 1638
    .local v10, batteryIntent:Landroid/content/Intent;
    const/4 v15, -0x1

    .line 1639
    .local v15, plugged:I
    const-string v2, "plugged"

    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 1640
    const/4 v2, 0x1

    if-eq v15, v2, :cond_6

    const/4 v2, 0x2

    if-ne v15, v2, :cond_12

    :cond_6
    const/4 v8, 0x1

    .line 1642
    :goto_a
    const/16 v19, 0x1

    .line 1657
    .end local v10           #batteryIntent:Landroid/content/Intent;
    .end local v13           #intentFilter:Landroid/content/IntentFilter;
    .end local v15           #plugged:I
    :cond_7
    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 1661
    if-nez v21, :cond_14

    .line 1662
    and-int/lit8 v3, v3, -0x2

    .line 1671
    :goto_c
    if-nez v18, :cond_16

    .line 1672
    and-int/lit8 v3, v3, -0x11

    .line 1681
    :goto_d
    if-nez v22, :cond_18

    .line 1682
    and-int/lit8 v3, v3, -0x3

    .line 1691
    :goto_e
    if-nez v23, :cond_1a

    .line 1692
    and-int/lit8 v3, v3, -0x5

    .line 1701
    :goto_f
    if-nez v20, :cond_1c

    .line 1702
    and-int/lit8 v3, v3, -0x21

    .line 1711
    :goto_10
    if-nez v19, :cond_1e

    .line 1712
    and-int/lit8 v3, v3, -0x9

    :goto_11
    move-object/from16 v2, p0

    .line 1722
    invoke-direct/range {v2 .. v9}, Lcom/android/server/location/GpsLocationProvider;->native_update_settings(IZZZZZZ)Z

    .line 1725
    const-string v2, "GpsLocationProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "After calling native_update_settings. currentContextType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " sGpsSetting: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "currentAgpsSetting: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " currentNetworkProvSetting: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const-string v2, "GpsLocationProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "native_update_settings. currentWifiSetting: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " currentBatteryCharging: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " currentEnhLocationServicesSetting: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1535
    :cond_8
    :try_start_1
    const-string v2, "gpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1537
    const/16 v21, 0x1

    .line 1538
    const-string v2, "gpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_1

    .line 1553
    :cond_9
    const-string v2, "agpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1555
    const/16 v18, 0x1

    .line 1556
    const-string v2, "agpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_2

    .line 1565
    .restart local v16       #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1567
    .restart local v14       #networkLocProvAvailable:Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 1573
    :cond_c
    const-string v2, "networkProvSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1575
    const/16 v22, 0x1

    .line 1576
    const-string v2, "networkProvSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v14, :cond_d

    const/4 v6, 0x1

    :goto_12
    goto/16 :goto_5

    :cond_d
    const/4 v6, 0x0

    goto :goto_12

    .line 1587
    .end local v14           #networkLocProvAvailable:Z
    .end local v16           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 1592
    :cond_f
    const-string v2, "wifiSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1594
    const/16 v23, 0x1

    .line 1595
    const-string v2, "wifiSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_7

    .line 1611
    .restart local v11       #currentEnhLocationServicesSettingString:Ljava/lang/String;
    :cond_10
    const-string v2, "GpsLocationProvider"

    const-string v24, "Got null pinter for call to Settings.Secure.getString(resolver,LocationManager.ENH_LOCATION_SERVICES_ENABLED)"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 1652
    .end local v11           #currentEnhLocationServicesSettingString:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1653
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider"

    const-string v24, "Exception in handleNativePhoneContextUpdate:"

    move-object/from16 v0, v24

    invoke-static {v2, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 1617
    .end local v12           #e:Ljava/lang/Exception;
    :cond_11
    :try_start_2
    const-string v2, "enhLocationServicesSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1619
    const/16 v20, 0x1

    .line 1620
    const-string v2, "enhLocationServicesSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_9

    .line 1640
    .restart local v10       #batteryIntent:Landroid/content/Intent;
    .restart local v13       #intentFilter:Landroid/content/IntentFilter;
    .restart local v15       #plugged:I
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 1645
    .end local v10           #batteryIntent:Landroid/content/Intent;
    .end local v13           #intentFilter:Landroid/content/IntentFilter;
    .end local v15           #plugged:I
    :cond_13
    const-string v2, "batteryCharging"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1647
    const/16 v19, 0x1

    .line 1648
    const-string v2, "batteryCharging"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    goto/16 :goto_b

    .line 1665
    :cond_14
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    if-ne v4, v2, :cond_15

    .line 1667
    and-int/lit8 v3, v3, -0x2

    .line 1669
    :cond_15
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    goto/16 :goto_c

    .line 1675
    :cond_16
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    if-ne v5, v2, :cond_17

    .line 1677
    and-int/lit8 v3, v3, -0x11

    .line 1679
    :cond_17
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    goto/16 :goto_d

    .line 1685
    :cond_18
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    if-ne v6, v2, :cond_19

    .line 1687
    and-int/lit8 v3, v3, -0x3

    .line 1689
    :cond_19
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    goto/16 :goto_e

    .line 1695
    :cond_1a
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    if-ne v7, v2, :cond_1b

    .line 1697
    and-int/lit8 v3, v3, -0x5

    .line 1699
    :cond_1b
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    goto/16 :goto_f

    .line 1705
    :cond_1c
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mEnhServicesSetting:Z

    if-ne v9, v2, :cond_1d

    .line 1707
    and-int/lit8 v3, v3, -0x21

    .line 1709
    :cond_1d
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/location/GpsLocationProvider;->mEnhServicesSetting:Z

    goto/16 :goto_10

    .line 1715
    :cond_1e
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    if-ne v8, v2, :cond_1f

    .line 1717
    and-int/lit8 v3, v3, -0x9

    .line 1719
    :cond_1f
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    goto/16 :goto_11
.end method

.method private handleNetworkLocationUpdate(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 2700
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleNetworkLocationUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2703
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_send_network_location(DDF)V

    .line 2706
    :cond_0
    return-void
.end method

.method private handleRemoveListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1800
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1801
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1803
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unneeded remove listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    monitor-exit v2

    .line 1815
    :goto_0
    return-void

    .line 1806
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1807
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1809
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1814
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in removeListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleRequestSingleShotGps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1423
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1424
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1426
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(ZZ)V

    .line 1428
    return-void
.end method

.method private handleRequestSingleShotHybrid()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1431
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    .line 1432
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingHybrid(Z)V

    .line 1433
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 1084
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 1088
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 19
    .parameter "state"
    .parameter "info"

    .prologue
    .line 844
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_c

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 847
    const-string v2, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkState "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_d

    const-string v1, "available"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    if-eqz p2, :cond_7

    .line 852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const/4 v11, 0x1

    .line 854
    .local v11, dataEnabled:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v11, :cond_f

    const/4 v5, 0x1

    .line 855
    .local v5, networkAvailable:Z
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v7

    .line 856
    .local v7, defaultApn:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 857
    const-string v7, "dummy-apn"

    .line 860
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 865
    const/4 v10, -0x1

    .line 866
    .local v10, connType:I
    const/4 v1, 0x3

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->getCurrentApnTypes()Ljava/lang/String;

    move-result-object v1

    const-string v2, "supl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 868
    :cond_1
    const/4 v10, 0x1

    .line 872
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v8

    .line 876
    .local v8, agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    if-eqz v8, :cond_7

    .line 877
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_13

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    .line 880
    .local v9, apnName:Ljava/lang/String;
    if-nez v9, :cond_2

    .line 888
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 890
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v9

    .line 906
    :cond_2
    :goto_5
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set agpsConnInfo values to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2002(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 908
    const/4 v1, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2102(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2200(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v17

    .line 911
    .local v17, lp:Landroid/net/LinkProperties;
    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v16

    .line 912
    .local v16, las:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    const/4 v13, 0x0

    .line 913
    .local v13, isV4:Z
    const/4 v14, 0x0

    .line 914
    .local v14, isV6:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/LinkAddress;

    .line 915
    .local v15, la:Landroid/net/LinkAddress;
    invoke-virtual {v15}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_12

    .line 916
    const/4 v1, 0x1

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2102(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 917
    const/4 v14, 0x1

    .line 922
    :goto_6
    if-eqz v13, :cond_3

    if-eqz v14, :cond_3

    .line 923
    const/4 v1, 0x2

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2102(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 929
    .end local v15           #la:Landroid/net/LinkAddress;
    :cond_4
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2300(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 930
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2400(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 932
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agpsConnInfo.mIPv4Addr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2400(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2200(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v2

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2400(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v18

    .line 937
    .local v18, route_result:Z
    if-nez v18, :cond_5

    .line 938
    const-string v1, "GpsLocationProvider"

    const-string v2, "call requestRouteToHostAddress failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    .end local v18           #route_result:Z
    :cond_5
    const-string v1, "GpsLocationProvider"

    const-string v2, "call native_agps_data_conn_open"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    .line 945
    :cond_6
    const/4 v1, 0x2

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2302(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 962
    .end local v5           #networkAvailable:Z
    .end local v7           #defaultApn:Ljava/lang/String;
    .end local v8           #agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .end local v9           #apnName:Ljava/lang/String;
    .end local v10           #connType:I
    .end local v11           #dataEnabled:Z
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #isV4:Z
    .end local v14           #isV6:Z
    .end local v16           #las:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v17           #lp:Landroid/net/LinkProperties;
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLastXtraInjection:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x7b98a00

    cmp-long v1, v1, v3

    if-lez v1, :cond_8

    .line 963
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 970
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpXtraInitialized:Z

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_9

    .line 972
    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 975
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpXtraInitialized:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_b

    .line 976
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-ne v1, v2, :cond_a

    .line 977
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 979
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-ne v1, v2, :cond_b

    .line 980
    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 984
    :cond_b
    return-void

    .line 844
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 847
    :cond_d
    const-string v1, "unavailable"

    goto/16 :goto_1

    .line 852
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 854
    .restart local v11       #dataEnabled:Z
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 870
    .restart local v5       #networkAvailable:Z
    .restart local v7       #defaultApn:Ljava/lang/String;
    .restart local v10       #connType:I
    :cond_10
    const/4 v10, 0x3

    goto/16 :goto_4

    .line 892
    .restart local v8       #agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .restart local v9       #apnName:Ljava/lang/String;
    :cond_11
    move-object v9, v7

    goto/16 :goto_5

    .line 919
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #isV4:Z
    .restart local v14       #isV6:Z
    .restart local v15       #la:Landroid/net/LinkAddress;
    .restart local v16       #las:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .restart local v17       #lp:Landroid/net/LinkProperties;
    :cond_12
    const/4 v1, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2102(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 920
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 948
    .end local v9           #apnName:Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #isV4:Z
    .end local v14           #isV6:Z
    .end local v15           #la:Landroid/net/LinkAddress;
    .end local v16           #las:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v17           #lp:Landroid/net/LinkProperties;
    :cond_13
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2300(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 949
    const-string v1, "GpsLocationProvider"

    const-string v2, "call native_agps_data_conn_failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    .line 953
    :cond_14
    const/4 v1, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2302(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    goto/16 :goto_7
.end method

.method private hasCapability(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    .line 2059
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized hibernate(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "alarmOffset"
    .parameter "alarmIntent"

    .prologue
    .line 2034
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2035
    monitor-exit p0

    return-void

    .line 2034
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hibernate_Locked(ILandroid/app/PendingIntent;)V
    .locals 7
    .parameter "alarmOffset"
    .parameter "alarmIntent"

    .prologue
    .line 2038
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hibernate alarmOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    if-ne p2, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 2041
    .local v0, silent:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating_Locked(Z)V

    .line 2043
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2044
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2045
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2047
    if-eqz p2, :cond_1

    .line 2048
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2052
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    if-eqz v1, :cond_2

    .line 2053
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateHibernate()V

    .line 2055
    :cond_2
    return-void

    .line 2040
    .end local v0           #silent:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 764
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 765
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 766
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    const-string v1, "com.android.internal.location.ALARM_MVMT_MON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 775
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 778
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 648
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private native native_agps_data_conn_closed(I)V
.end method

.method private native native_agps_data_conn_failed(I)V
.end method

.method private native native_agps_data_conn_open(ILjava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private static native native_has_ulp_capability()I
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_raw_command([BI)Z
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_send_network_location(DDF)V
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_engine_lock(I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_criteria(IIJFZII)Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native native_update_settings(IZZZZZZ)Z
.end method

.method private provideStatus(ZZ)V
    .locals 8
    .parameter "navigating"
    .parameter "skipIntent"

    .prologue
    .line 2329
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2330
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2331
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 2332
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2334
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    if-eqz p1, :cond_0

    .line 2335
    :try_start_1
    iget-object v5, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v5}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

    .line 2331
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2337
    :cond_0
    iget-object v5, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v5}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2339
    :catch_0
    move-exception v0

    .line 2340
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "GpsLocationProvider"

    const-string v7, "RemoteException in reportStatus"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2343
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2346
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2349
    if-nez p2, :cond_2

    .line 2351
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2352
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "enabled"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2353
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2355
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 2346
    .end local v1           #i:I
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method private reportAGpsStatus(III[B)V
    .locals 10
    .parameter "type"
    .parameter "status"
    .parameter "ipv4_addr"
    .parameter "ipv6_addr"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2437
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v0

    .line 2438
    .local v0, agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    if-nez v0, :cond_1

    .line 2439
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reportAGpsStatus agpsConnInfo is null for type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_0
    :goto_0
    return-void

    .line 2445
    :cond_1
    const/4 v4, 0x0

    .line 2446
    .local v4, wifiConnected:Z
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2447
    .local v1, mWifi:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2448
    const/4 v4, 0x1

    .line 2452
    :cond_2
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2454
    :pswitch_0
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    if-nez v4, :cond_3

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2300(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 2458
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v6

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    goto :goto_0

    .line 2464
    :cond_3
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2302(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2465
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    .line 2467
    .local v2, result:I
    const/4 v5, -0x1

    if-eq p3, v5, :cond_5

    .line 2468
    invoke-static {p3}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v5

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0, v5}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2402(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 2474
    :goto_1
    if-nez v2, :cond_7

    .line 2475
    const-string v5, "GpsLocationProvider"

    const-string v6, "Phone.APN_ALREADY_ACTIVE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 2477
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2400(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2480
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "agpsConnInfo.mIPv4Addr "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2400(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2200(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v6

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2400(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v3

    .line 2485
    .local v3, route_result:Z
    if-nez v3, :cond_4

    .line 2486
    const-string v5, "GpsLocationProvider"

    const-string v6, "call requestRouteToHostAddress failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    .end local v3           #route_result:Z
    :cond_4
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v6

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    .line 2490
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v9}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2302(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    goto/16 :goto_0

    .line 2471
    :cond_5
    const/4 v5, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0, v5}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2402(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    goto :goto_1

    .line 2492
    :cond_6
    const-string v5, "GpsLocationProvider"

    const-string v6, "agpsConnInfo.mAPN not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2302(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2495
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto/16 :goto_0

    .line 2497
    :cond_7
    if-ne v2, v7, :cond_8

    .line 2498
    const-string v5, "GpsLocationProvider"

    const-string v6, "Phone.APN_REQUEST_STARTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2501
    :cond_8
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startUsingNetworkFeature failed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2302(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2503
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto/16 :goto_0

    .line 2508
    .end local v2           #result:I
    :pswitch_1
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2300(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2510
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 2512
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed(I)V

    .line 2513
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$2302(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    goto/16 :goto_0

    .line 2517
    :pswitch_2
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2520
    :pswitch_3
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2523
    :pswitch_4
    const-string v5, "GpsLocationProvider"

    const-string v6, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJI[BZFLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"
    .parameter "positionSource"
    .parameter "rawData"
    .parameter "isIndoor"
    .parameter "floorNumber"
    .parameter "mapUrl"
    .parameter "mapIndex"

    .prologue
    .line 2069
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reportLocation lat: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " long: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " accuracy: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bearing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p9

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " speed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " altitude: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " timestamp: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p11

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " positionSource: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p13

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    and-int/lit8 v9, p1, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    move/from16 v0, p13

    if-ne v0, v9, :cond_1

    const/4 v3, 0x1

    .line 2079
    .local v3, hybridFix:Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v10

    .line 2080
    :try_start_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 2081
    and-int/lit8 v9, p1, 0x1

    const/4 v11, 0x1

    if-ne v9, v11, :cond_0

    .line 2082
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide v0, p2

    invoke-virtual {v9, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 2083
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 2084
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v9, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 2086
    :cond_0
    and-int/lit8 v9, p1, 0x2

    const/4 v11, 0x2

    if-ne v9, v11, :cond_2

    .line 2087
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v9, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 2091
    :goto_1
    and-int/lit8 v9, p1, 0x4

    const/4 v11, 0x4

    if-ne v9, v11, :cond_3

    .line 2092
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v9, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 2096
    :goto_2
    and-int/lit8 v9, p1, 0x8

    const/16 v11, 0x8

    if-ne v9, v11, :cond_4

    .line 2097
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v9, v0}, Landroid/location/Location;->setBearing(F)V

    .line 2101
    :goto_3
    and-int/lit8 v9, p1, 0x10

    const/16 v11, 0x10

    if-ne v9, v11, :cond_5

    .line 2102
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v9, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 2106
    :goto_4
    const-string v9, "GpsLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportLocation.flag:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    if-eqz v3, :cond_6

    .line 2112
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const-string v11, "hybrid"

    invoke-virtual {v9, v11}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 2113
    const-string v9, "GpsLocationProvider"

    const-string v11, "reportLocation. Location has source information. src -hybrid"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :goto_5
    move-object/from16 v0, p14

    array-length v9, v0

    if-lez v9, :cond_7

    .line 2121
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v11, "RawData"

    move-object/from16 v0, p14

    invoke-virtual {v9, v11, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2126
    :goto_6
    and-int/lit8 v9, p1, 0x40

    const/16 v11, 0x40

    if-ne v9, v11, :cond_8

    .line 2127
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v11, "isIndoor"

    move/from16 v0, p15

    invoke-virtual {v9, v11, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2132
    :goto_7
    and-int/lit16 v9, p1, 0x80

    const/16 v11, 0x80

    if-ne v9, v11, :cond_9

    .line 2133
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v11, "floorNumber"

    move/from16 v0, p16

    invoke-virtual {v9, v11, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2138
    :goto_8
    and-int/lit16 v9, p1, 0x100

    const/16 v11, 0x100

    if-ne v9, v11, :cond_a

    .line 2139
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v11, "mapUrl"

    move-object/from16 v0, p17

    invoke-virtual {v9, v11, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2144
    :goto_9
    and-int/lit16 v9, p1, 0x200

    const/16 v11, 0x200

    if-ne v9, v11, :cond_b

    .line 2145
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v11, "mapIndex"

    move-object/from16 v0, p18

    invoke-virtual {v9, v11, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2150
    :goto_a
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v9, v11}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 2154
    new-instance v7, Landroid/location/Location;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-direct {v7, v9}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2156
    .local v7, locationCopy:Landroid/location/Location;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    const/4 v11, 0x0

    invoke-interface {v9, v7, v11}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2160
    :goto_b
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 2164
    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    if-nez v9, :cond_d

    and-int/lit8 v9, p1, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 2165
    iget-wide v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v11, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 2166
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTFF: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10

    .line 2170
    :try_start_3
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2171
    .local v8, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    if-ge v4, v8, :cond_c

    .line 2172
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2174
    .local v6, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_4
    iget-object v9, v6, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v9, v11}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2171
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2076
    .end local v3           #hybridFix:Z
    .end local v4           #i:I
    .end local v6           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v7           #locationCopy:Landroid/location/Location;
    .end local v8           #size:I
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2089
    .restart local v3       #hybridFix:Z
    :cond_2
    :try_start_5
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_1

    .line 2160
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v9

    .line 2094
    :cond_3
    :try_start_6
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_2

    .line 2099
    :cond_4
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_3

    .line 2104
    :cond_5
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_4

    .line 2116
    :cond_6
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const-string v11, "gps"

    invoke-virtual {v9, v11}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 2117
    const-string v9, "GpsLocationProvider"

    const-string v11, "reportLocation. Location has source information. src -gnss"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2123
    :cond_7
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v11, "RawData"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2129
    :cond_8
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v11, "isIndoor"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2135
    :cond_9
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v11, "floorNumber"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2141
    :cond_a
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v11, "mapUrl"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2147
    :cond_b
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v11, "mapIndex"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2157
    .restart local v7       #locationCopy:Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 2158
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "GpsLocationProvider"

    const-string v11, "RemoteException calling reportLocation"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_b

    .line 2175
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v4       #i:I
    .restart local v6       #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v8       #size:I
    :catch_1
    move-exception v2

    .line 2176
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v9, "GpsLocationProvider"

    const-string v11, "RemoteException in stopNavigating"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2179
    add-int/lit8 v8, v8, -0x1

    goto :goto_d

    .line 2182
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v6           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_c
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2185
    .end local v4           #i:I
    .end local v8           #size:I
    :cond_d
    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 2187
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating(Z)V

    .line 2198
    :cond_e
    :goto_e
    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 2199
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingHybrid(Z)V

    .line 2202
    :cond_f
    if-nez v3, :cond_11

    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v9, :cond_11

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_11

    .line 2206
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v9

    if-nez v9, :cond_10

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v10, 0xea60

    if-ge v9, v10, :cond_10

    .line 2207
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2211
    :cond_10
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2212
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "enabled"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2213
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2214
    const/4 v9, 0x2

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2218
    .end local v5           #intent:Landroid/content/Intent;
    :cond_11
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v9

    if-nez v9, :cond_12

    if-nez v3, :cond_12

    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v9, :cond_12

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v10, 0x2710

    if-le v9, v10, :cond_12

    .line 2221
    const-string v9, "GpsLocationProvider"

    const-string v10, "got fix, hibernating"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V

    .line 2226
    :cond_12
    return-void

    .line 2182
    :catchall_1
    move-exception v9

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v9

    .line 2190
    :cond_13
    if-nez v3, :cond_e

    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    if-eqz v9, :cond_e

    .line 2193
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->monitor(Z)V

    goto :goto_e
.end method

.method private reportNmea(J)V
    .locals 9
    .parameter "timestamp"

    .prologue
    .line 2532
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2533
    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2534
    .local v5, size:I
    if-lez v5, :cond_0

    .line 2536
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v8, v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v2

    .line 2537
    .local v2, length:I
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8, v2}, Ljava/lang/String;-><init>([BII)V

    .line 2539
    .local v4, nmea:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 2540
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2542
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-object v6, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6, p1, p2, v4}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2539
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2543
    :catch_0
    move-exception v0

    .line 2544
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "GpsLocationProvider"

    const-string v8, "RemoteException in reportNmea"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2547
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2551
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #nmea:Ljava/lang/String;
    :cond_0
    monitor-exit v7

    .line 2552
    return-void

    .line 2551
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private reportStatus(I)V
    .locals 10
    .parameter "status"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 2232
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportStatus status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2235
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2238
    .local v5, wasNavigating:Z
    const/4 v2, 0x0

    .line 2242
    .local v2, skipIntent:Z
    const/4 v3, 0x0

    .line 2244
    .local v3, skipStatus:Z
    sparse-switch p1, :sswitch_data_0

    .line 2303
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v5, v6, :cond_3

    .line 2304
    if-nez v3, :cond_1

    .line 2305
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-direct {p0, v6, v2}, Lcom/android/server/location/GpsLocationProvider;->provideStatus(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2310
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 2311
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2312
    .local v4, uid:I
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v6, :cond_2

    .line 2313
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, v4}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2310
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2246
    .end local v1           #i:I
    .end local v4           #uid:I
    :sswitch_0
    :try_start_2
    const-string v6, "GpsLocationProvider"

    const-string v8, "GPS_STATUS_SESSION_BEGIN"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2248
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 2249
    const-string v6, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSilentCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    if-lez v6, :cond_0

    .line 2251
    const/4 v3, 0x1

    .line 2252
    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    goto :goto_0

    .line 2323
    .end local v2           #skipIntent:Z
    .end local v3           #skipStatus:Z
    .end local v5           #wasNavigating:Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 2256
    .restart local v2       #skipIntent:Z
    .restart local v3       #skipStatus:Z
    .restart local v5       #wasNavigating:Z
    :sswitch_1
    :try_start_3
    const-string v6, "GpsLocationProvider"

    const-string v8, "GPS_STATUS_SESSION_END"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2258
    const-string v6, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSilentCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    if-lez v6, :cond_0

    .line 2260
    const/4 v3, 0x1

    .line 2261
    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    goto/16 :goto_0

    .line 2265
    :sswitch_2
    const-string v6, "GpsLocationProvider"

    const-string v8, "GPS_STATUS_ENGINE_ON"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto/16 :goto_0

    .line 2269
    :sswitch_3
    const-string v6, "GpsLocationProvider"

    const-string v8, "GPS_STATUS_ENGINE_OFF"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 2271
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto/16 :goto_0

    .line 2277
    :sswitch_4
    const-string v6, "GpsLocationProvider"

    const-string v8, "GPS_STATUS_SESSION_BEGIN_GPS_NOP"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    const/4 v2, 0x1

    .line 2279
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2280
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 2281
    const/4 v2, 0x1

    .line 2282
    const-string v6, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSilentCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    if-lez v6, :cond_0

    .line 2284
    const/4 v3, 0x1

    .line 2285
    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    goto/16 :goto_0

    .line 2289
    :sswitch_5
    const-string v6, "GpsLocationProvider"

    const-string v8, "GPS_STATUS_SESSION_END_GPS_NOP"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    const/4 v2, 0x1

    .line 2291
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2292
    const-string v6, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSilentCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    if-lez v6, :cond_0

    .line 2294
    const/4 v3, 0x1

    .line 2295
    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2315
    .restart local v1       #i:I
    .restart local v4       #uid:I
    :cond_2
    :try_start_4
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, v4}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 2318
    .end local v1           #i:I
    .end local v4           #uid:I
    :catch_0
    move-exception v0

    .line 2319
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "GpsLocationProvider"

    const-string v8, "RemoteException in reportStatus"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2324
    return-void

    .line 2244
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
    .end sparse-switch
.end method

.method private reportSvStatus()V
    .locals 17

    .prologue
    .line 2363
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSaving:Z

    if-eqz v1, :cond_1

    .line 2364
    const-string v1, "GpsLocationProvider"

    const-string v3, "ignoring reportSvStatus in saving mode"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    :cond_0
    :goto_0
    return-void

    .line 2369
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v2

    .line 2371
    .local v2, svCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v15

    .line 2372
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2373
    .local v14, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v14, :cond_2

    .line 2374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2376
    .local v13, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-object v1, v13, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/16 v16, 0x2

    aget v9, v9, v16

    invoke-interface/range {v1 .. v9}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2373
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2379
    :catch_0
    move-exception v10

    .line 2380
    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2383
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 2386
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v13           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/location/GpsLocationProvider;->mLastSvTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    .line 2390
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sv count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " usedMask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ephemerisMask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " almanacMask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    const-string v1, "PRN "

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSvsString:Ljava/lang/String;

    .line 2395
    const-string v1, "SNR "

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrsString:Ljava/lang/String;

    .line 2396
    const-string v1, "ELE "

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mElevString:Ljava/lang/String;

    .line 2397
    const-string v1, "AZM "

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mAzimString:Ljava/lang/String;

    .line 2398
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v2, :cond_3

    .line 2399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvsString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%3d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSvsString:Ljava/lang/String;

    .line 2400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrsString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%3.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrsString:Ljava/lang/String;

    .line 2401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mElevString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%3.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mElevString:Ljava/lang/String;

    .line 2402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mAzimString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%3.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mAzimString:Ljava/lang/String;

    .line 2398
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 2386
    .end local v11           #i:I
    .end local v14           #size:I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2404
    .restart local v11       #i:I
    .restart local v14       #size:I
    :cond_3
    const-string v1, "GpsLocationProvider"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvsString:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    const-string v1, "GpsLocationProvider"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrsString:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    const-string v1, "GpsLocationProvider"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mElevString:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    const-string v1, "GpsLocationProvider"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mAzimString:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLastSvTime:J

    .line 2413
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2415
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 2418
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2419
    .local v12, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v12, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2421
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2425
    const-string v1, "GpsLocationProvider"

    const-string v3, "reportSvStatus(), calling updateNoFix()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    .line 2427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateNoFix()V

    goto/16 :goto_0
.end method

.method private requestNetworkLocation(III)V
    .locals 4
    .parameter "type"
    .parameter "interval"
    .parameter "source"

    .prologue
    .line 2765
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNetworkLocation. type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2767
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2768
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2769
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2770
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2771
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2772
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2773
    monitor-exit v2

    .line 2774
    return-void

    .line 2773
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestPhoneContext(II)V
    .locals 4
    .parameter "context_type"
    .parameter "request_type"

    .prologue
    .line 2749
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPhoneContext from native layer.context_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2752
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2753
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2754
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2755
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2756
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2757
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2758
    monitor-exit v2

    .line 2759
    return-void

    .line 2758
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestRefLocation(I)V
    .locals 10
    .parameter "flags"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x3

    .line 2780
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2782
    .local v8, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 2783
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 2784
    .local v6, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 2788
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2789
    .local v2, mcc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2790
    .local v3, mnc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 2791
    .local v7, networkType:I
    if-eq v7, v5, :cond_0

    const/16 v0, 0x8

    if-eq v7, v0, :cond_0

    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    const/16 v0, 0xa

    if-ne v7, v0, :cond_1

    .line 2795
    :cond_0
    const/4 v1, 0x2

    .line 2799
    .local v1, type:I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2808
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #networkType:I
    :goto_1
    return-void

    .line 2797
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    .restart local v6       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #networkType:I
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #type:I
    goto :goto_0

    .line 2802
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v7           #networkType:I
    :cond_2
    const-string v0, "GpsLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2806
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .parameter "flags"

    .prologue
    .line 2670
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2672
    .local v2, phone:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2673
    .local v3, type:I
    const-string v0, ""

    .line 2675
    .local v0, data:Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2676
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2677
    .local v1, data_temp:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2695
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2696
    return-void

    .line 2681
    .restart local v1       #data_temp:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 2682
    const/4 v3, 0x1

    goto :goto_0

    .line 2685
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2686
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2687
    .restart local v1       #data_temp:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2691
    move-object v0, v1

    .line 2692
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    .prologue
    .line 2740
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2741
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 5
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 2812
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2813
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    .line 2815
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2817
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2818
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2819
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2820
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2821
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2822
    monitor-exit v2

    .line 2823
    return-void

    .line 2822
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setEngineCapabilities(I)V
    .locals 3
    .parameter "capabilities"

    .prologue
    .line 2558
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEngineCapabilities "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 2561
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_0

    .line 2562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    .line 2563
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    .line 2565
    :cond_0
    return-void
.end method

.method private declared-synchronized startNavigating(ZZ)V
    .locals 1
    .parameter "singleShot"
    .parameter "silent"

    .prologue
    .line 1892
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->startNavigating_Locked(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1893
    monitor-exit p0

    return-void

    .line 1892
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startNavigating_Locked(ZZ)V
    .locals 9
    .parameter "singleShot"
    .parameter "silent"

    .prologue
    const v8, 0xea60

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1896
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating s: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSaving:Z

    if-nez v0, :cond_8

    .line 1899
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In startNavigating. singleShot "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mHybridStarted: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mGpsStarted: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 1903
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    .line 1904
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1907
    const-string v0, "persist.mot.gps.assisted"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1909
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1916
    :cond_0
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1918
    .local v3, interval:I
    :goto_1
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1919
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1921
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 1922
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    .end local v3           #interval:I
    :cond_1
    :goto_2
    return-void

    .line 1910
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1911
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 1916
    :cond_3
    const/16 v3, 0x3e8

    goto :goto_1

    .line 1930
    .restart local v3       #interval:I
    :cond_4
    if-eqz p2, :cond_5

    .line 1931
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    .line 1932
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating scount: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-nez v0, :cond_6

    .line 1941
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1942
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 1943
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1934
    :cond_5
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    .line 1935
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating: scount cleared."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1949
    :cond_6
    if-nez p2, :cond_1

    .line 1953
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1954
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1958
    invoke-direct {p0, v6, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1960
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1963
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    if-lt v0, v8, :cond_7

    .line 1964
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v4, 0xea60

    add-long/2addr v1, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1971
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1972
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v0, v8}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    .line 1977
    .end local v3           #interval:I
    :cond_8
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In startNavigating. singleShot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHybridStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mGpsStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private declared-synchronized stopNavigating(Z)V
    .locals 1
    .parameter "silent"

    .prologue
    .line 1984
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating_Locked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1985
    monitor-exit p0

    return-void

    .line 1984
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopNavigating_Locked(Z)V
    .locals 7
    .parameter "silent"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1988
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopNavigating s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    if-nez p1, :cond_0

    .line 1991
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    .line 1992
    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating: scount cleared."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v0, :cond_4

    .line 1997
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 1998
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    .line 2000
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-nez v0, :cond_3

    .line 2002
    if-eqz p1, :cond_1

    .line 2003
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    .line 2004
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopNavigating scount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSilentCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 2009
    if-eqz p1, :cond_3

    .line 2031
    :cond_2
    :goto_0
    return-void

    .line 2013
    :cond_3
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 2014
    iput-wide v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 2015
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 2018
    invoke-direct {p0, v4, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    goto :goto_0

    .line 2019
    :cond_4
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSaving:Z

    if-eqz v0, :cond_2

    .line 2020
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 2021
    iput-wide v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 2022
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 2024
    invoke-direct {p0, v3, v3}, Lcom/android/server/location/GpsLocationProvider;->provideStatus(ZZ)V

    .line 2027
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    if-eqz v0, :cond_2

    .line 2028
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    goto :goto_0
.end method

.method private updateEngineLock()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 613
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    if-nez v2, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineLock:I

    .line 618
    .local v1, oldLock:I
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mVzwEnabled:Z

    if-eqz v2, :cond_3

    .line 619
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineLock:I

    .line 628
    :goto_1
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineLock:I

    if-eq v1, v2, :cond_0

    .line 629
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineLock:I

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_engine_lock(I)V

    goto :goto_0

    .line 621
    :cond_3
    const-string v2, "persist.mot.gps.locktype"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 622
    .local v0, lock:I
    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    .line 623
    const/4 v0, 0x2

    .line 625
    :cond_4
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineLock:I

    goto :goto_1
.end method

.method private updateStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 1315
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 1316
    :cond_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1317
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1318
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1321
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    .line 2571
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2573
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1758
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1759
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1761
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1763
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1764
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1765
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1766
    monitor-exit v2

    .line 1767
    return-void

    .line 1766
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 1234
    const-string v1, "GpsLocationProvider"

    const-string v2, "disable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1236
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1237
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1238
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1239
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1243
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1244
    monitor-exit v2

    .line 1245
    return-void

    .line 1244
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 1181
    const-string v1, "GpsLocationProvider"

    const-string v2, "enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1184
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1185
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1186
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1190
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1191
    monitor-exit v2

    .line 1192
    return-void

    .line 1191
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableLocationTracking(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1329
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1330
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1331
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1332
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1333
    .local v0, m:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1337
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1338
    monitor-exit v2

    .line 1339
    return-void

    .line 1333
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1338
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 1172
    const/4 v0, 0x1

    return v0
.end method

.method public getCapability()I
    .locals 1

    .prologue
    .line 1311
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    return v0
.end method

.method getClientUids()Landroid/util/SparseIntArray;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getHybridProvider()Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;
    .locals 2

    .prologue
    .line 1842
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_has_ulp_capability()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1845
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    .line 1847
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1733
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    const-string v0, "gps"

    return-object v0
.end method

.method getNavigating()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    return v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 1154
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    .line 1305
    if-eqz p1, :cond_0

    .line 1306
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1308
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 1324
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 1114
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1301
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2
    .parameter "criteria"

    .prologue
    const/4 v0, 0x1

    .line 1162
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1788
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1789
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1791
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1793
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1794
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1795
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1796
    monitor-exit v2

    .line 1797
    return-void

    .line 1796
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 2611
    const-string v7, "GpsLocationProvider"

    const-string v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2626
    .local v6, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2627
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2628
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2629
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2630
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2631
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2632
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2633
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2634
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2635
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2636
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2640
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2642
    .local v1, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_0

    const-string p10, ""

    .line 2643
    :cond_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2646
    .local v4, extraProp:Ljava/util/Properties;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2653
    :goto_3
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2655
    .local v3, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2628
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4           #extraProp:Ljava/util/Properties;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2629
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 2630
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 2648
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #extraProp:Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 2650
    .local v2, e:Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2658
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2660
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2661
    return-void
.end method

.method public requestSingleShotFix()Z
    .locals 4

    .prologue
    .line 1407
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v1, :cond_0

    .line 1409
    const/4 v1, 0x0

    .line 1419
    :goto_0
    return v1

    .line 1411
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 1412
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1413
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1417
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1418
    monitor-exit v2

    .line 1419
    const/4 v1, 0x1

    goto :goto_0

    .line 1418
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 1105
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 1096
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1820
    .local v0, identity:J
    const/4 v2, 0x0

    .line 1822
    .local v2, result:Z
    const-string v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1823
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    .line 1837
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1838
    return v2

    .line 1824
    :cond_1
    const-string v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1825
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1826
    const/4 v2, 0x1

    goto :goto_0

    .line 1827
    :cond_2
    const-string v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1828
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_0

    .line 1829
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1830
    const/4 v2, 0x1

    goto :goto_0

    .line 1833
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1834
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 6
    .parameter "minTime"
    .parameter "ws"

    .prologue
    const/4 v2, 0x0

    .line 1437
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinTime "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 1440
    long-to-int v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1443
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateFixInterval()V

    .line 1448
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1449
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1451
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_1
    return-void
.end method

.method public setVzwLocationStatus(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 606
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mVzwEnabled:Z

    .line 607
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateEngineLock()V

    .line 608
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 1124
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 1134
    const/4 v0, 0x1

    return v0
.end method

.method public updateCriteria(IJFZLandroid/location/Criteria;)Z
    .locals 11
    .parameter "action"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "criteria"

    .prologue
    .line 1459
    const/4 v10, 0x0

    .line 1460
    .local v10, return_value:Z
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCriteria with action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "minTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minDistance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " singleShot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " criteria: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/GpsLocationProvider;->native_update_criteria(IIJFZII)Z

    move-result v10

    .line 1466
    return v10
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 1080
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1081
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .parameter "state"
    .parameter "info"

    .prologue
    .line 840
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 841
    return-void
.end method
