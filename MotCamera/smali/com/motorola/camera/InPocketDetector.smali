.class public Lcom/motorola/camera/InPocketDetector;
.super Ljava/lang/Object;
.source "InPocketDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/InPocketDetector$Callback;,
        Lcom/motorola/camera/InPocketDetector$MainHandler;
    }
.end annotation


# static fields
.field private static final DETECT_COMPLETE:I = 0x1

.field private static final DETECT_TIMEOUT:I = 0x2

.field private static final LIGHT_DARK_THRESHOLD:F = 10.0f

.field private static final PROX_NEAR_THRESHOLD:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "InPocket"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultAction:Z

.field private mHandler:Landroid/os/Handler;

.field private mInPocketSensor:Landroid/hardware/Sensor;

.field private mInPocketSensorType:I

.field private mIntent:Landroid/content/Intent;

.field private mLightAcquired:Z

.field private mLightData:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mProxAcquired:Z

.field private mProxData:Z

.field private mProxSensor:Landroid/hardware/Sensor;

.field mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorLength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 50
    iput-object v1, p0, Lcom/motorola/camera/InPocketDetector;->mProxSensor:Landroid/hardware/Sensor;

    .line 51
    iput-object v1, p0, Lcom/motorola/camera/InPocketDetector;->mLightSensor:Landroid/hardware/Sensor;

    .line 52
    iput-object v1, p0, Lcom/motorola/camera/InPocketDetector;->mInPocketSensor:Landroid/hardware/Sensor;

    .line 53
    iput v0, p0, Lcom/motorola/camera/InPocketDetector;->mInPocketSensorType:I

    .line 54
    iput-boolean v0, p0, Lcom/motorola/camera/InPocketDetector;->mLightAcquired:Z

    .line 55
    iput-boolean v0, p0, Lcom/motorola/camera/InPocketDetector;->mLightData:Z

    .line 56
    iput-boolean v0, p0, Lcom/motorola/camera/InPocketDetector;->mProxAcquired:Z

    .line 57
    iput-boolean v0, p0, Lcom/motorola/camera/InPocketDetector;->mProxData:Z

    .line 58
    iput-boolean v0, p0, Lcom/motorola/camera/InPocketDetector;->mDefaultAction:Z

    .line 94
    new-instance v0, Lcom/motorola/camera/InPocketDetector$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/InPocketDetector$MainHandler;-><init>(Lcom/motorola/camera/InPocketDetector;Lcom/motorola/camera/InPocketDetector$1;)V

    iput-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/motorola/camera/InPocketDetector$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/InPocketDetector$1;-><init>(Lcom/motorola/camera/InPocketDetector;)V

    iput-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 277
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/camera/InPocketDetector;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/motorola/camera/InPocketDetector;->mLightSensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/camera/InPocketDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/motorola/camera/InPocketDetector;->mLightAcquired:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/motorola/camera/InPocketDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/motorola/camera/InPocketDetector;->mLightAcquired:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/motorola/camera/InPocketDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/motorola/camera/InPocketDetector;->mProxAcquired:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/motorola/camera/InPocketDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/motorola/camera/InPocketDetector;->mProxAcquired:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/motorola/camera/InPocketDetector;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/motorola/camera/InPocketDetector;->isClose(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/motorola/camera/InPocketDetector;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/motorola/camera/InPocketDetector;->mInPocketSensorType:I

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mProxSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/camera/InPocketDetector;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/motorola/camera/InPocketDetector;->mProxSensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mInPocketSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/camera/InPocketDetector;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/motorola/camera/InPocketDetector;->mInPocketSensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/camera/InPocketDetector;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/camera/InPocketDetector;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/motorola/camera/InPocketDetector;->performAction(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/camera/InPocketDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/motorola/camera/InPocketDetector;->mLightData:Z

    return v0
.end method

.method static synthetic access$602(Lcom/motorola/camera/InPocketDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/motorola/camera/InPocketDetector;->mLightData:Z

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/camera/InPocketDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/motorola/camera/InPocketDetector;->mProxData:Z

    return v0
.end method

.method static synthetic access$702(Lcom/motorola/camera/InPocketDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/motorola/camera/InPocketDetector;->mProxData:Z

    return p1
.end method

.method static synthetic access$900(Lcom/motorola/camera/InPocketDetector;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/motorola/camera/InPocketDetector;->isDark(F)Z

    move-result v0

    return v0
.end method

.method private isClose(F)Z
    .locals 1
    .parameter "distance"

    .prologue
    .line 150
    const/high16 v0, 0x40a0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDark(F)Z
    .locals 1
    .parameter "lumens"

    .prologue
    .line 161
    const/high16 v0, 0x4120

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performAction(Z)V
    .locals 3
    .parameter "detected"

    .prologue
    .line 170
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InPocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensor data received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/motorola/camera/InPocketDetector;->mVibratorLength:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 180
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mContext:Landroid/content/Context;

    .line 181
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/BlurCheckin;->setInPocketDetected(Z)V

    .line 182
    return-void

    .line 178
    :cond_2
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/BlurCheckin;->setCameraNotLaunched(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public detect(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x2

    .line 191
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "InPocket"

    const-string v5, "detection started"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/InPocketDetector;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/motorola/camera/InPocketDetector;->mIntent:Landroid/content/Intent;

    .line 194
    const-string v4, "sensor"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 195
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_8

    .line 196
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 197
    .local v2, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 198
    .local v3, sensorsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .line 199
    .local v0, name:Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 201
    .local v1, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v4, "CT406 In Pocket sensor"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    iput-object v1, p0, Lcom/motorola/camera/InPocketDetector;->mInPocketSensor:Landroid/hardware/Sensor;

    .line 204
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/InPocketDetector;->mInPocketSensorType:I

    .line 205
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/motorola/camera/InPocketDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/motorola/camera/InPocketDetector;->mInPocketSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 207
    sget-boolean v4, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v4, :cond_2

    const-string v4, "InPocket"

    const-string v5, "in pocket sensor registered"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v1           #sensor:Landroid/hardware/Sensor;
    :cond_2
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mInPocketSensor:Landroid/hardware/Sensor;

    if-nez v4, :cond_5

    .line 213
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v9}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 214
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mProxSensor:Landroid/hardware/Sensor;

    .line 215
    :cond_3
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v8}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 216
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mLightSensor:Landroid/hardware/Sensor;

    .line 217
    :cond_4
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mProxSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_6

    .line 221
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/motorola/camera/InPocketDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/motorola/camera/InPocketDetector;->mProxSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 223
    sget-boolean v4, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v4, :cond_5

    const-string v4, "InPocket"

    const-string v5, "prox sensor registered"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v0           #name:Ljava/lang/String;
    .end local v2           #sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3           #sensorsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Sensor;>;"
    :cond_5
    :goto_0
    return-void

    .line 225
    .restart local v0       #name:Ljava/lang/String;
    .restart local v2       #sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v3       #sensorsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Sensor;>;"
    :cond_6
    sget-boolean v4, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v4, :cond_7

    const-string v4, "InPocket"

    const-string v5, "sensors not available"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_7
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 230
    .end local v0           #name:Ljava/lang/String;
    .end local v2           #sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3           #sensorsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Sensor;>;"
    :cond_8
    sget-boolean v4, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v4, :cond_9

    const-string v4, "InPocket"

    const-string v5, "sensor manager not available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_9
    iget-object v4, p0, Lcom/motorola/camera/InPocketDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public detect(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/Boolean;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "delay"
    .parameter "bool"

    .prologue
    .line 246
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/InPocketDetector;->mDefaultAction:Z

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/InPocketDetector;->detect(Landroid/content/Context;Landroid/content/Intent;)V

    .line 248
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 250
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector;->mHandler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    return-void
.end method

.method public setDelay(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 261
    return-void
.end method

.method public setVibration(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "length"

    .prologue
    .line 270
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/motorola/camera/InPocketDetector;->mVibrator:Landroid/os/Vibrator;

    .line 271
    iput p2, p0, Lcom/motorola/camera/InPocketDetector;->mVibratorLength:I

    .line 272
    return-void
.end method
