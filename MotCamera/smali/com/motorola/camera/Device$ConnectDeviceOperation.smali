.class Lcom/motorola/camera/Device$ConnectDeviceOperation;
.super Landroid/os/AsyncTask;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectDeviceOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/motorola/camera/Device$AsyncReturn",
        "<",
        "Landroid/hardware/Camera;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/Device;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/Device;)V
    .locals 0
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/motorola/camera/Device$ConnectDeviceOperation;->this$0:Lcom/motorola/camera/Device;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 920
    invoke-direct {p0, p1}, Lcom/motorola/camera/Device$ConnectDeviceOperation;-><init>(Lcom/motorola/camera/Device;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/motorola/camera/Device$AsyncReturn;
    .locals 6
    .parameter "voids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/motorola/camera/Device$AsyncReturn",
            "<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 925
    const/4 v2, -0x2

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 927
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCameraKPI"

    const-string v3, "device: connect device async task: start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    const/4 v0, 0x0

    .line 931
    .local v0, cameraDevice:Landroid/hardware/Camera;
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/Device$ConnectDeviceOperation;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->openCamera()Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/camera/Device;->access$800(Lcom/motorola/camera/Device;)Landroid/hardware/Camera;

    move-result-object v0

    .line 932
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCameraKPI"

    const-string v3, "device: connect device async task:open camera complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_1
    new-instance v2, Lcom/motorola/camera/Device$AsyncReturn;

    iget-object v3, p0, Lcom/motorola/camera/Device$ConnectDeviceOperation;->this$0:Lcom/motorola/camera/Device;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/motorola/camera/Device$AsyncReturn;-><init>(Lcom/motorola/camera/Device;Ljava/lang/Object;Lcom/motorola/camera/Device$1;)V
    :try_end_0
    .catch Lcom/motorola/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 937
    :goto_0
    return-object v2

    .line 934
    :catch_0
    move-exception v1

    .line 935
    .local v1, ex:Lcom/motorola/camera/CameraHardwareException;
    new-instance v2, Lcom/motorola/camera/Device$AsyncReturn;

    iget-object v3, p0, Lcom/motorola/camera/Device$ConnectDeviceOperation;->this$0:Lcom/motorola/camera/Device;

    invoke-direct {v2, v3, v1, v5}, Lcom/motorola/camera/Device$AsyncReturn;-><init>(Lcom/motorola/camera/Device;Ljava/lang/Exception;Lcom/motorola/camera/Device$1;)V

    goto :goto_0

    .line 936
    .end local v1           #ex:Lcom/motorola/camera/CameraHardwareException;
    :catch_1
    move-exception v1

    .line 937
    .local v1, ex:Lcom/motorola/camera/CameraDisabledException;
    new-instance v2, Lcom/motorola/camera/Device$AsyncReturn;

    iget-object v3, p0, Lcom/motorola/camera/Device$ConnectDeviceOperation;->this$0:Lcom/motorola/camera/Device;

    invoke-direct {v2, v3, v1, v5}, Lcom/motorola/camera/Device$AsyncReturn;-><init>(Lcom/motorola/camera/Device;Ljava/lang/Exception;Lcom/motorola/camera/Device$1;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 920
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Device$ConnectDeviceOperation;->doInBackground([Ljava/lang/Void;)Lcom/motorola/camera/Device$AsyncReturn;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 952
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "device: onPostExecute: async task cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Device$ConnectDeviceOperation;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->onConnectDeviceCancelled()V
    invoke-static {v0}, Lcom/motorola/camera/Device;->access$1200(Lcom/motorola/camera/Device;)V

    .line 954
    return-void
.end method

.method protected onPostExecute(Lcom/motorola/camera/Device$AsyncReturn;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/Device$AsyncReturn",
            "<",
            "Landroid/hardware/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 944
    .local p1, result:Lcom/motorola/camera/Device$AsyncReturn;,"Lcom/motorola/camera/Device$AsyncReturn<Landroid/hardware/Camera;>;"
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "device: ConnectDeviceOperation:onPostExecute: async task completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_OPEN_TASK_RUNTIME:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/Device$ConnectDeviceOperation;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->onDeviceConnected(Lcom/motorola/camera/Device$AsyncReturn;)V
    invoke-static {v0, p1}, Lcom/motorola/camera/Device;->access$1100(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$AsyncReturn;)V

    .line 948
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 920
    check-cast p1, Lcom/motorola/camera/Device$AsyncReturn;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Device$ConnectDeviceOperation;->onPostExecute(Lcom/motorola/camera/Device$AsyncReturn;)V

    return-void
.end method
