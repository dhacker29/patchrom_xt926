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

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;-><init>(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->propagate()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    return-void
.end method

.method static synthetic access$7002(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J

    return-wide p1
.end method

.method static synthetic access$7100(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    return v0
.end method

.method private broadcastSavings(Z)V
    .locals 2
    .parameter "savingsOn"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.location.GPS_SAVINGS_CHANGE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "savings_on"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private propagate()V
    .locals 8

    .prologue
    const-string v5, "GpsLocationProvider"

    const-string v6, "MovementMonitor propagate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const-string v5, "GpsLocationProvider"

    const-string v6, "propagate() called when not propagating!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .local v3, now:J
    iget-wide v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J

    sub-long v1, v3, v5

    .local v1, elapsed:J
    iput-wide v3, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J

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

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v5, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->access$6502(Lcom/android/server/location/GpsLocationProvider;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

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

    :catch_0
    move-exception v0

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

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    const v3, 0xea60

    if-lt v2, v3, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor start, fix interval too long"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

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

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-gt v1, v4, :cond_3

    const v1, 0x249f0

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

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

    const-string v0, "GpsLocationProvider"

    const-string v1, "Failed to register movement listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    goto :goto_1

    :cond_4
    const v1, 0x1d4c0

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    goto :goto_1

    :cond_5
    const-string v1, "GpsLocationProvider"

    const-string v2, "registered MovementListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mCharging:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "monitor() ignoring monitor for charging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor monitor, fix in mon fix state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

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

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$5800(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5700(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->start(Z)V

    goto :goto_0
.end method

.method public setNoFixAlarm(I)V
    .locals 6
    .parameter "triggerOffset"

    .prologue
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

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    invoke-virtual {v0, v1}, Lcom/motorola/sensorhub/SensorHub;->unregisterMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

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

    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mCharging:Z

    if-eq v1, p1, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v2, "stopping for charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/server/location/GpsLocationProvider;->startNavigating_Locked(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;ZZ)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    .end local v0           #changed:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

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

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    move-result-object v1

    const v3, 0xea60

    invoke-virtual {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mCharging:Z

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

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
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v0

    const v1, 0xea60

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor stopping for long fix interval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    :cond_0
    return-void
.end method

.method public updateHibernate()V
    .locals 2

    .prologue
    const-string v0, "GpsLocationProvider"

    const-string v1, "updateHibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "stopping for hibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    :cond_0
    return-void
.end method

.method public updateNoFix()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    if-eq v0, v1, :cond_0

    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    :cond_0
    return-void
.end method

.method public updateSavings(ZZ)Z
    .locals 1
    .parameter "savingsOn"
    .parameter "broadcast"

    .prologue
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSaving:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$6100(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mSaving:Z
    invoke-static {v0, p1}, Lcom/android/server/location/GpsLocationProvider;->access$6102(Lcom/android/server/location/GpsLocationProvider;Z)Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
