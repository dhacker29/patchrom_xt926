.class Lcom/motorola/camera/Device$PreviewDisplayOperation;
.super Landroid/os/AsyncTask;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewDisplayOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/view/SurfaceHolder;",
        "Ljava/lang/Void;",
        "Lcom/motorola/camera/Device$AsyncReturn",
        "<",
        "Landroid/view/SurfaceHolder;",
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
    .line 1051
    iput-object p1, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Lcom/motorola/camera/Device$PreviewDisplayOperation;-><init>(Lcom/motorola/camera/Device;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/view/SurfaceHolder;)Lcom/motorola/camera/Device$AsyncReturn;
    .locals 11
    .parameter "holders"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/SurfaceHolder;",
            ")",
            "Lcom/motorola/camera/Device$AsyncReturn",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1056
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1058
    sget-boolean v7, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MotoCameraKPI"

    const-string v9, "device: preview display async task: start"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_0
    const/4 v6, 0x0

    .line 1062
    .local v6, newHolder:Landroid/view/SurfaceHolder;
    :try_start_0
    iget-object v7, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v7}, Lcom/motorola/camera/Device;->access$1400(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1063
    new-instance v7, Lcom/motorola/camera/Device$AsyncReturn;

    iget-object v9, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    const/4 v10, 0x0

    invoke-direct {v7, v9, v6, v10}, Lcom/motorola/camera/Device$AsyncReturn;-><init>(Lcom/motorola/camera/Device;Ljava/lang/Object;Lcom/motorola/camera/Device$1;)V

    .line 1100
    :goto_0
    return-object v7

    .line 1066
    :cond_1
    iget-object v7, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v7}, Lcom/motorola/camera/Device;->access$1400(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v7

    sget-object v9, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v7, v9, :cond_2

    iget-object v7, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v7}, Lcom/motorola/camera/Device;->access$1400(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v7

    sget-object v9, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v7, v9, :cond_3

    .line 1068
    :cond_2
    iget-object v7, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v7}, Lcom/motorola/camera/Device;->access$1400(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    .line 1071
    :cond_3
    iget-object v7, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mStartPreviewTask:Landroid/os/AsyncTask;
    invoke-static {v7}, Lcom/motorola/camera/Device;->access$2000(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v7

    sget-object v9, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v7, v9, :cond_4

    iget-object v7, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mStartPreviewTask:Landroid/os/AsyncTask;
    invoke-static {v7}, Lcom/motorola/camera/Device;->access$2000(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v7

    sget-object v9, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v7, v9, :cond_5

    .line 1073
    :cond_4
    iget-object v7, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mStartPreviewTask:Landroid/os/AsyncTask;
    invoke-static {v7}, Lcom/motorola/camera/Device;->access$2000(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1083
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/Device$PreviewDisplayOperation;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v8

    goto :goto_0

    .line 1075
    :catch_0
    move-exception v2

    .line 1076
    .local v2, ex:Ljava/lang/InterruptedException;
    const-class v7, Lcom/motorola/camera/Device;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v9, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1077
    .end local v2           #ex:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 1078
    .local v2, ex:Ljava/util/concurrent/ExecutionException;
    const-class v7, Lcom/motorola/camera/Device;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v9, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1079
    .end local v2           #ex:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 1080
    .local v1, e:Ljava/util/concurrent/CancellationException;
    sget-boolean v7, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "MotoCameraDevice"

    const-string v9, "StartPreview task was canceled."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1084
    .end local v1           #e:Ljava/util/concurrent/CancellationException;
    :cond_6
    sget-boolean v7, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "MotoCameraKPI"

    const-string v9, "device: preview display async task: get connect device status"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_7
    move-object v0, p1

    .local v0, arr$:[Landroid/view/SurfaceHolder;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_8

    aget-object v3, v0, v4

    .line 1087
    .local v3, holder:Landroid/view/SurfaceHolder;
    move-object v6, v3

    .line 1086
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1091
    .end local v3           #holder:Landroid/view/SurfaceHolder;
    :cond_8
    :try_start_1
    iget-object v7, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    iget-object v7, v7, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v7, :cond_b

    .line 1092
    sget-boolean v7, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v7

    sget-object v9, Lcom/motorola/camera/CameraKpi$KPI;->SET_PREVIEW_DISPLAY:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v7, v9}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 1093
    :cond_9
    iget-object v7, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    invoke-static {v7, v6}, Lcom/motorola/camera/Device;->access$2100(Lcom/motorola/camera/Device;Landroid/view/SurfaceHolder;)V

    .line 1094
    sget-boolean v7, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v7

    sget-object v9, Lcom/motorola/camera/CameraKpi$KPI;->SET_PREVIEW_DISPLAY:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v7, v9}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 1095
    :cond_a
    sget-boolean v7, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "MotoCameraKPI"

    const-string v9, "device: preview display async task: set preview display complete"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_b
    new-instance v7, Lcom/motorola/camera/Device$AsyncReturn;

    iget-object v9, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    const/4 v10, 0x0

    invoke-direct {v7, v9, v6, v10}, Lcom/motorola/camera/Device$AsyncReturn;-><init>(Lcom/motorola/camera/Device;Ljava/lang/Object;Lcom/motorola/camera/Device$1;)V
    :try_end_1
    .catch Lcom/motorola/camera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 1098
    :catch_3
    move-exception v2

    .line 1099
    .local v2, ex:Lcom/motorola/camera/CameraHardwareException;
    const-class v7, Lcom/motorola/camera/Device;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v7, v9, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1100
    new-instance v7, Lcom/motorola/camera/Device$AsyncReturn;

    iget-object v9, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    invoke-direct {v7, v9, v2, v8}, Lcom/motorola/camera/Device$AsyncReturn;-><init>(Lcom/motorola/camera/Device;Ljava/lang/Exception;Lcom/motorola/camera/Device$1;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1051
    check-cast p1, [Landroid/view/SurfaceHolder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Device$PreviewDisplayOperation;->doInBackground([Landroid/view/SurfaceHolder;)Lcom/motorola/camera/Device$AsyncReturn;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/motorola/camera/Device$AsyncReturn;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/Device$AsyncReturn",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1106
    .local p1, result:Lcom/motorola/camera/Device$AsyncReturn;,"Lcom/motorola/camera/Device$AsyncReturn<Landroid/view/SurfaceHolder;>;"
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "device: preview display async task: async task completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Device$PreviewDisplayOperation;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->onPreviewCompleted(Lcom/motorola/camera/Device$AsyncReturn;)V
    invoke-static {v0, p1}, Lcom/motorola/camera/Device;->access$2200(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$AsyncReturn;)V

    .line 1108
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1051
    check-cast p1, Lcom/motorola/camera/Device$AsyncReturn;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Device$PreviewDisplayOperation;->onPostExecute(Lcom/motorola/camera/Device$AsyncReturn;)V

    return-void
.end method
