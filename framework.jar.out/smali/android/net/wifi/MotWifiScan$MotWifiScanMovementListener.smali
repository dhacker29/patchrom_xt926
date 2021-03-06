.class Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;
.super Ljava/lang/Object;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotWifiScanMovementListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotWifiScanMovementListener"


# instance fields
.field private isMovementRegistered:Z

.field private mContext:Landroid/content/Context;

.field private final mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

.field private mScanIntervalSet:Z

.field private final mWiFiMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

.field final synthetic this$0:Landroid/net/wifi/MotWifiScan;


# direct methods
.method public constructor <init>(Landroid/net/wifi/MotWifiScan;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1271
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    iput-boolean v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->isMovementRegistered:Z

    .line 1269
    iput-boolean v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mScanIntervalSet:Z

    .line 1320
    new-instance v0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;-><init>(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;)V

    iput-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    .line 1272
    iput-object p2, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mContext:Landroid/content/Context;

    .line 1274
    const-string/jumbo v0, "sensorhub"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/sensorhub/SensorHub;

    iput-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    .line 1276
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    if-nez v0, :cond_0

    .line 1277
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "MotWifiScanMovementListener mWiFiMvmtMgr = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_0
    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1262
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mScanIntervalSet:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1262
    iput-boolean p1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mScanIntervalSet:Z

    return p1
.end method


# virtual methods
.method public startMovementMonitor(I)Z
    .locals 5
    .parameter "mEndDuration"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1282
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    if-nez v2, :cond_0

    .line 1303
    :goto_0
    return v0

    .line 1285
    :cond_0
    iget-boolean v2, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->isMovementRegistered:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 1286
    goto :goto_0

    .line 1294
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v1, p1, v4}, Lcom/motorola/sensorhub/SensorHub;->registerMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;IILandroid/os/Looper;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1297
    iput-boolean v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->isMovementRegistered:Z

    .line 1298
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "Failed to register movement listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :goto_1
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->isMovementRegistered:Z

    goto :goto_0

    .line 1300
    :cond_2
    iput-boolean v1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->isMovementRegistered:Z

    goto :goto_1
.end method

.method public stopMovementMonitor()V
    .locals 3

    .prologue
    .line 1307
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    if-nez v0, :cond_0

    .line 1318
    :goto_0
    return-void

    .line 1310
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->isMovementRegistered:Z

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    invoke-virtual {v0, v1}, Lcom/motorola/sensorhub/SensorHub;->unregisterMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;)V

    .line 1313
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->isMovementRegistered:Z

    goto :goto_0

    .line 1315
    :cond_1
    const-string v0, "MotWifiScanMovementListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister movement listener, isMovementRegistered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->isMovementRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
