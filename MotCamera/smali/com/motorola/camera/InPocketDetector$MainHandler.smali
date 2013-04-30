.class Lcom/motorola/camera/InPocketDetector$MainHandler;
.super Landroid/os/Handler;
.source "InPocketDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/InPocketDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/InPocketDetector;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/InPocketDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/InPocketDetector;Lcom/motorola/camera/InPocketDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/motorola/camera/InPocketDetector$MainHandler;-><init>(Lcom/motorola/camera/InPocketDetector;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 70
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mLightSensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$000(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$100(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    iget-object v2, v2, Lcom/motorola/camera/InPocketDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mLightSensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/motorola/camera/InPocketDetector;->access$000(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 72
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #setter for: Lcom/motorola/camera/InPocketDetector;->mLightSensor:Landroid/hardware/Sensor;
    invoke-static {v1, v4}, Lcom/motorola/camera/InPocketDetector;->access$002(Lcom/motorola/camera/InPocketDetector;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mProxSensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$200(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$100(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    iget-object v2, v2, Lcom/motorola/camera/InPocketDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mProxSensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/motorola/camera/InPocketDetector;->access$200(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 76
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #setter for: Lcom/motorola/camera/InPocketDetector;->mProxSensor:Landroid/hardware/Sensor;
    invoke-static {v1, v4}, Lcom/motorola/camera/InPocketDetector;->access$202(Lcom/motorola/camera/InPocketDetector;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mInPocketSensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$300(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$100(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    iget-object v2, v2, Lcom/motorola/camera/InPocketDetector;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mInPocketSensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/motorola/camera/InPocketDetector;->access$300(Lcom/motorola/camera/InPocketDetector;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 80
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #setter for: Lcom/motorola/camera/InPocketDetector;->mInPocketSensor:Landroid/hardware/Sensor;
    invoke-static {v1, v4}, Lcom/motorola/camera/InPocketDetector;->access$302(Lcom/motorola/camera/InPocketDetector;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$400(Lcom/motorola/camera/InPocketDetector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/InPocketDetector;->access$400(Lcom/motorola/camera/InPocketDetector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 89
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    iget-object v2, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mLightData:Z
    invoke-static {v2}, Lcom/motorola/camera/InPocketDetector;->access$600(Lcom/motorola/camera/InPocketDetector;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    #getter for: Lcom/motorola/camera/InPocketDetector;->mProxData:Z
    invoke-static {v2}, Lcom/motorola/camera/InPocketDetector;->access$700(Lcom/motorola/camera/InPocketDetector;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    #calls: Lcom/motorola/camera/InPocketDetector;->performAction(Z)V
    invoke-static {v1, v0}, Lcom/motorola/camera/InPocketDetector;->access$500(Lcom/motorola/camera/InPocketDetector;Z)V

    .line 91
    :goto_1
    return-void

    .line 86
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/camera/InPocketDetector$MainHandler;->this$0:Lcom/motorola/camera/InPocketDetector;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #calls: Lcom/motorola/camera/InPocketDetector;->performAction(Z)V
    invoke-static {v1, v0}, Lcom/motorola/camera/InPocketDetector;->access$500(Lcom/motorola/camera/InPocketDetector;Z)V

    goto :goto_1

    .line 89
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
