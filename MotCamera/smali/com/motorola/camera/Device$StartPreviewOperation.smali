.class Lcom/motorola/camera/Device$StartPreviewOperation;
.super Landroid/os/AsyncTask;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPreviewOperation"
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
    .line 1010
    iput-object p1, p0, Lcom/motorola/camera/Device$StartPreviewOperation;->this$0:Lcom/motorola/camera/Device;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1010
    invoke-direct {p0, p1}, Lcom/motorola/camera/Device$StartPreviewOperation;-><init>(Lcom/motorola/camera/Device;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1010
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Device$StartPreviewOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "paramss"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1015
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1017
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCameraKPI"

    const-string v4, "device: StartPreview async task started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/Device$StartPreviewOperation;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mSetParametersTask:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/motorola/camera/Device;->access$1800(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/Device$StartPreviewOperation;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mSetParametersTask:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/motorola/camera/Device;->access$1800(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_1

    .line 1021
    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/Device$StartPreviewOperation;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mSetParametersTask:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/motorola/camera/Device;->access$1800(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1034
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoCameraDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCancelled():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/motorola/camera/Device$StartPreviewOperation;->isCancelled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/Device$StartPreviewOperation;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v2, Ljava/lang/Void;

    .line 1039
    :goto_1
    return-object v2

    .line 1022
    :catch_0
    move-exception v1

    .line 1023
    .local v1, ex:Ljava/lang/InterruptedException;
    const-class v3, Lcom/motorola/camera/Device;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1024
    invoke-virtual {p0, v5}, Lcom/motorola/camera/Device$StartPreviewOperation;->cancel(Z)Z

    goto :goto_0

    .line 1025
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 1026
    .local v1, ex:Ljava/util/concurrent/ExecutionException;
    const-class v3, Lcom/motorola/camera/Device;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1027
    invoke-virtual {p0, v5}, Lcom/motorola/camera/Device$StartPreviewOperation;->cancel(Z)Z

    goto :goto_0

    .line 1028
    .end local v1           #ex:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 1029
    .local v0, e:Ljava/util/concurrent/CancellationException;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoCameraDevice"

    const-string v4, "SetParameters task was canceled."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_3
    invoke-virtual {p0, v5}, Lcom/motorola/camera/Device$StartPreviewOperation;->cancel(Z)Z

    goto :goto_0

    .line 1036
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    :cond_4
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MotoCameraDevice"

    const-string v4, "startPreview called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/Device$StartPreviewOperation;->this$0:Lcom/motorola/camera/Device;

    invoke-virtual {v3}, Lcom/motorola/camera/Device;->startPreview()V

    .line 1038
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "MotoCameraKPI"

    const-string v4, "device: StartPreview device async task:start preview complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_6
    check-cast v2, Ljava/lang/Void;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1010
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Device$StartPreviewOperation;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "voids"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/motorola/camera/Device$StartPreviewOperation;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->onPreviewStarted()V
    invoke-static {v0}, Lcom/motorola/camera/Device;->access$1900(Lcom/motorola/camera/Device;)V

    .line 1045
    return-void
.end method
