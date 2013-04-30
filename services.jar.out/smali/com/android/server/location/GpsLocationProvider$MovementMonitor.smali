.class public final Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MovementMonitor"
.end annotation


# static fields
.field public static final EXTRA_GPS_SAVINGS_ON:Ljava/lang/String; = "savings_on"

.field public static final GPS_SAVINGS_CHANGE_ACTION:Ljava/lang/String; = "com.motorola.location.GPS_SAVINGS_CHANGE_ACTION"

.field private static final MIN_PROPAGATION_INTERVAL:I = 0x1388

.field private static final NO_FIX_MVMT_MON_RESET_TIMEOUT:I = 0xea60

.field private static final NO_MVMT_FIX_TIMEOUT:I = 0x249f0

.field private static final NO_MVMT_NO_FIX_TIMEOUT:I = 0x1d4c0

.field private static final STATE_MON_FIX:I = 0x2

.field private static final STATE_MON_NO_FIX:I = 0x1

.field private static final STATE_PROPAGATE:I = 0x3

.field private static final STATE_SLEEP:I = 0x4

.field private static final STATE_STOP:I


# instance fields
.field private mCharging:Z

.field private mEndDuration:I

.field private mExpectEnd:Z

.field private mFirstCb:Z

.field private final mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

.field private final mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

.field private mPropInterval:I

.field private mPropagateTime:J

.field private mState:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;Lcom/motorola/sensorhub/SensorHub;)V
    .locals 2
    .parameter
    .parameter "mvmtMgr"

    .prologue
    const/4 v1, 0x0

    .line 3042
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3228
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;-><init>(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    .line 3043
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    .line 3044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    .line 3045
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    .line 3046
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    .line 3047
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    .line 3048
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    .line 3049
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3007
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->propagate()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3007
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3007
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3007
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3007
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3007
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3007
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3007
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    return-void
.end method

.method static synthetic access$7002(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3007
    iput-wide p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J

    return-wide p1
.end method

.method static synthetic access$7100(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3007
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3007
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    return v0
.end method

.method private broadcastSavings(Z)V
    .locals 2
    .parameter "savingsOn"

    .prologue
    .line 3133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.location.GPS_SAVINGS_CHANGE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3134
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "savings_on"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3135
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3136
    return-void
.end method

.method private propagate()V
    .locals 8

    .prologue
    .line 3207
    const-string v5, "GpsLocationProvider"

    const-string v6, "MovementMonitor propagate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    iget v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 3209
    const-string v5, "GpsLocationProvider"

    const-string v6, "propagate() called when not propagating!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :goto_0
    return-void

    .line 3215
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3216
    .local v3, now:J
    iget-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J

    sub-long v1, v3, v5

    .line 3217
    .local v1, elapsed:J
    iput-wide v3, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J

    .line 3218
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/Location;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    add-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 3219
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$6400(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/ILocationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/Location;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V

    .line 3220
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v5, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->access$6502(Lcom/android/server/location/GpsLocationProvider;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3225
    .end local v1           #elapsed:J
    .end local v3           #now:J
    :goto_1
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$5700(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v7

    #calls: Lcom/android/server/location/GpsLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V
    invoke-static {v5, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->access$400(Lcom/android/server/location/GpsLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 3221
    :catch_0
    move-exception v0

    .line 3222
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "GpsLocationProvider"

    const-string v6, "RemoteException calling reportLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized start(Z)V
    .locals 6
    .parameter "fix"

    .prologue
    const v4, 0x249f0

    const/16 v1, 0x1388

    const/4 v0, 0x1

    .line 3158
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3159
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    .line 3164
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    const v3, 0xea60

    if-lt v2, v3, :cond_1

    .line 3165
    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor start, fix interval too long"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3193
    :goto_0
    monitor-exit p0

    return-void

    .line 3169
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    if-le v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    :cond_2
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    .line 3171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    .line 3173
    if-eqz p1, :cond_4

    .line 3174
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-gt v1, v4, :cond_3

    .line 3175
    const v1, 0x249f0

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    .line 3183
    :goto_1
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MovementMonitor start, prop interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    div-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/motorola/sensorhub/SensorHub;->registerMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;IILandroid/os/Looper;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3188
    const-string v0, "GpsLocationProvider"

    const-string v1, "Failed to register movement listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3177
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    goto :goto_1

    .line 3180
    :cond_4
    const v1, 0x1d4c0

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    goto :goto_1

    .line 3190
    :cond_5
    const-string v1, "GpsLocationProvider"

    const-string v2, "registered MovementListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    if-eqz p1, :cond_6

    const/4 v0, 0x2

    :cond_6
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public isMonitoring()Z
    .locals 1

    .prologue
    .line 3058
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropagating()Z
    .locals 2

    .prologue
    .line 3062
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitor(Z)V
    .locals 3
    .parameter "fix"

    .prologue
    .line 3139
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mCharging:Z

    if-eqz v0, :cond_0

    .line 3140
    const-string v0, "GpsLocationProvider"

    const-string v1, "monitor() ignoring monitor for charging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :goto_0
    return-void

    .line 3144
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3146
    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor monitor, fix in mon fix state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3150
    :cond_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MovementMonitor monitor, fix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fix interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$5800(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5700(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3154
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->start(Z)V

    goto :goto_0
.end method

.method public setNoFixAlarm(I)V
    .locals 6
    .parameter "triggerOffset"

    .prologue
    .line 3052
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$5800(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$5700(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3055
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 3197
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3204
    :goto_0
    monitor-exit p0

    return-void

    .line 3201
    :cond_0
    :try_start_1
    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    .line 3203
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    invoke-virtual {v0, v1}, Lcom/motorola/sensorhub/SensorHub;->unregisterMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCharging(Z)V
    .locals 6
    .parameter "charging"

    .prologue
    const/4 v5, 0x0

    .line 3089
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mCharging:Z

    if-eq v1, p1, :cond_2

    .line 3090
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3091
    const-string v1, "GpsLocationProvider"

    const-string v2, "stopping for charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    .line 3095
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

    .line 3097
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 3100
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/server/location/GpsLocationProvider;->startNavigating_Locked(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;ZZ)V

    .line 3101
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3104
    if-eqz v0, :cond_0

    .line 3105
    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    .line 3109
    .end local v0           #changed:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

    .line 3110
    if-nez p1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6000(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3112
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    move-result-object v1

    const v3, 0xea60

    invoke-virtual {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    .line 3114
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3116
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mCharging:Z

    .line 3118
    :cond_2
    return-void

    .line 3101
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3114
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public updateFixInterval()V
    .locals 2

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v0

    const v1, 0xea60

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3067
    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor stopping for long fix interval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    .line 3070
    :cond_0
    return-void
.end method

.method public updateHibernate()V
    .locals 2

    .prologue
    .line 3073
    const-string v0, "GpsLocationProvider"

    const-string v1, "updateHibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3075
    const-string v0, "GpsLocationProvider"

    const-string v1, "stopping for hibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    .line 3078
    :cond_0
    return-void
.end method

.method public updateNoFix()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3082
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    if-eq v0, v1, :cond_0

    .line 3083
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    .line 3084
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    .line 3086
    :cond_0
    return-void
.end method

.method public updateSavings(ZZ)Z
    .locals 1
    .parameter "savingsOn"
    .parameter "broadcast"

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSaving:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$6100(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 3123
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mSaving:Z
    invoke-static {v0, p1}, Lcom/android/server/location/GpsLocationProvider;->access$6102(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 3124
    if-eqz p2, :cond_0

    .line 3125
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    .line 3127
    :cond_0
    const/4 v0, 0x1

    .line 3129
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
