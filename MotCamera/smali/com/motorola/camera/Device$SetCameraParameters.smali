.class Lcom/motorola/camera/Device$SetCameraParameters;
.super Landroid/os/AsyncTask;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetCameraParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/Device;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/Device;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/motorola/camera/Device$SetCameraParameters;-><init>(Lcom/motorola/camera/Device;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 959
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Device$SetCameraParameters;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 964
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 966
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCameraDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mResetRequired"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mResetRequired:Z
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$1300(Lcom/motorola/camera/Device;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/motorola/camera/Device;->access$1400(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/motorola/camera/Device;->access$1400(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_1

    .line 970
    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/motorola/camera/Device;->access$1400(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 982
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/Device$SetCameraParameters;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/Void;

    .line 1002
    :goto_1
    return-object v2

    .line 971
    :catch_0
    move-exception v1

    .line 972
    .local v1, ex:Ljava/lang/InterruptedException;
    const-string v3, "MotoCameraDevice"

    const-string v4, "Connected Device Interrupted."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {p0, v6}, Lcom/motorola/camera/Device$SetCameraParameters;->cancel(Z)Z

    goto :goto_0

    .line 974
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 975
    .local v1, ex:Ljava/util/concurrent/ExecutionException;
    const-string v3, "MotoCameraDevice"

    const-string v4, "Connect Device task Excecution failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-virtual {p0, v6}, Lcom/motorola/camera/Device$SetCameraParameters;->cancel(Z)Z

    goto :goto_0

    .line 977
    .end local v1           #ex:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 978
    .local v0, e:Ljava/util/concurrent/CancellationException;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoCameraDevice"

    const-string v4, "Connect Device task was canceled."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 984
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    invoke-virtual {v3}, Lcom/motorola/camera/Device;->stopPreview()V

    .line 985
    iget-object v3, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    iget-object v3, v3, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_4

    .line 986
    iget-object v3, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->setupCameraParameters()V
    invoke-static {v3}, Lcom/motorola/camera/Device;->access$1500(Lcom/motorola/camera/Device;)V

    .line 988
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 989
    const-string v3, "MotoCameraKPI"

    const-string v4, "device: connect device async task:setup parameters complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    invoke-virtual {v3}, Lcom/motorola/camera/Device;->setDisplayOrientation()V

    .line 995
    :try_start_1
    iget-object v3, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    iget-object v3, v3, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v4}, Lcom/motorola/camera/Device;->access$1600(Lcom/motorola/camera/Device;)Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1001
    :cond_4
    :goto_2
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MotoCameraKPI"

    const-string v4, "device: StartPreview async task:set preview display complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_5
    check-cast v2, Ljava/lang/Void;

    goto :goto_1

    .line 996
    :catch_3
    move-exception v1

    .line 997
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "MotoCameraDevice"

    const-string v4, "setPreviewDisplay failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 959
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Device$SetCameraParameters;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "voids"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/motorola/camera/Device$SetCameraParameters;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->onSetupParametersComplete()V
    invoke-static {v0}, Lcom/motorola/camera/Device;->access$1700(Lcom/motorola/camera/Device;)V

    .line 1007
    return-void
.end method
