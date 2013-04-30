.class Lcom/motorola/camera/InPocketDetector$1;
.super Ljava/lang/Object;
.source "InPocketDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/InPocketDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/InPocketDetector;


# direct methods
.method constructor <init>(Lcom/motorola/camera/InPocketDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 100
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 103
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 105
    .local v0, type:I
    sget-boolean v1, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "InPocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sensor event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 111
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    #calls: Lcom/motorola/camera/InPocketDetector;->isDark(F)Z
    invoke-static {v1, v2}, Lcom/motorola/camera/InPocketDetector;->access$900(Lcom/motorola/camera/InPocketDetector;F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #setter for: Lcom/motorola/camera/InPocketDetector;->mLightData:Z
    invoke-static {v1, v4}, Lcom/motorola/camera/InPocketDetector;->access$602(Lcom/motorola/camera/InPocketDetector;Z)Z

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #setter for: Lcom/motorola/camera/InPocketDetector;->mLightAcquired:Z
    invoke-static {v1, v4}, Lcom/motorola/camera/InPocketDetector;->access$1002(Lcom/motorola/camera/InPocketDetector;Z)Z

    .line 137
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mLightAcquired:Z
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$1000(Lcom/motorola/camera/InPocketDetector;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mProxAcquired:Z
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$1100(Lcom/motorola/camera/InPocketDetector;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$400(Lcom/motorola/camera/InPocketDetector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    :cond_2
    return-void

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$400(Lcom/motorola/camera/InPocketDetector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 117
    :cond_4
    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 118
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mProxAcquired:Z
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$1100(Lcom/motorola/camera/InPocketDetector;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    #calls: Lcom/motorola/camera/InPocketDetector;->isClose(F)Z
    invoke-static {v1, v2}, Lcom/motorola/camera/InPocketDetector;->access$1200(Lcom/motorola/camera/InPocketDetector;F)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #setter for: Lcom/motorola/camera/InPocketDetector;->mProxData:Z
    invoke-static {v1, v4}, Lcom/motorola/camera/InPocketDetector;->access$702(Lcom/motorola/camera/InPocketDetector;Z)Z

    .line 121
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$100(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    iget-object v2, v2, Lcom/motorola/camera/InPocketDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mLightSensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/motorola/camera/InPocketDetector;->access$000(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 126
    :goto_2
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #setter for: Lcom/motorola/camera/InPocketDetector;->mProxAcquired:Z
    invoke-static {v1, v4}, Lcom/motorola/camera/InPocketDetector;->access$1102(Lcom/motorola/camera/InPocketDetector;Z)Z

    goto :goto_1

    .line 124
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$400(Lcom/motorola/camera/InPocketDetector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 128
    :cond_6
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mInPocketSensorType:I
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$1300(Lcom/motorola/camera/InPocketDetector;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    .line 130
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #setter for: Lcom/motorola/camera/InPocketDetector;->mProxData:Z
    invoke-static {v1, v4}, Lcom/motorola/camera/InPocketDetector;->access$702(Lcom/motorola/camera/InPocketDetector;Z)Z

    .line 131
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #setter for: Lcom/motorola/camera/InPocketDetector;->mLightData:Z
    invoke-static {v1, v4}, Lcom/motorola/camera/InPocketDetector;->access$602(Lcom/motorola/camera/InPocketDetector;Z)Z

    .line 133
    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #setter for: Lcom/motorola/camera/InPocketDetector;->mLightAcquired:Z
    invoke-static {v1, v4}, Lcom/motorola/camera/InPocketDetector;->access$1002(Lcom/motorola/camera/InPocketDetector;Z)Z

    .line 134
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$1;->this$0:Lcom/motorola/camera/InPocketDetector;

    #setter for: Lcom/motorola/camera/InPocketDetector;->mProxAcquired:Z
    invoke-static {v1, v4}, Lcom/motorola/camera/InPocketDetector;->access$1102(Lcom/motorola/camera/InPocketDetector;Z)Z

    goto/16 :goto_1
.end method
