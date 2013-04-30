.class Lcom/motorola/camera/Device$StopMediaRecorderThread;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopMediaRecorderThread"
.end annotation


# instance fields
.field mMediaRecorder:Landroid/media/MediaRecorder;

.field final synthetic this$0:Lcom/motorola/camera/Device;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Device;Landroid/media/MediaRecorder;)V
    .locals 0
    .parameter
    .parameter "mediaRecorder"

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1166
    iput-object p2, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1167
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1171
    const-wide/16 v2, 0x0

    .line 1172
    .local v2, duration:J
    const/4 v0, 0x0

    .line 1173
    .local v0, camException:Lcom/motorola/camera/CameraOperationException;
    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mMediaRecordStopAndReleaseObject:Ljava/lang/Object;
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$2300(Lcom/motorola/camera/Device;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1175
    :try_start_0
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MotoCameraDevice"

    const-string v7, "Entering StopMediaRecorderThread"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_0
    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v5, :cond_1

    .line 1178
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    sget-object v7, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_STOP:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v5, v7}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 1179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mRecordingStartTime:J
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$2400(Lcom/motorola/camera/Device;)J

    move-result-wide v9

    sub-long v2, v7, v9

    .line 1180
    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->stop()V

    .line 1182
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    sget-object v7, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_STOP:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v5, v7}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 1184
    :cond_1
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MotoCameraDevice"

    const-string v7, "mediaRecorder stopped"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1195
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->releaseMediaRecorder()V
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$2500(Lcom/motorola/camera/Device;)V

    .line 1196
    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$2600(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$DeviceCBInterface;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$2600(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$DeviceCBInterface;

    move-result-object v5

    invoke-interface {v5, v0, v2, v3}, Lcom/motorola/camera/Device$DeviceCBInterface;->onMediaRecorderStopped(Lcom/motorola/camera/CameraOperationException;J)V

    .line 1198
    :cond_3
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1200
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "MotoCameraDevice"

    const-string v6, "Exiting StopMediaRecorderThread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_4
    return-void

    .line 1185
    :catch_0
    move-exception v4

    .line 1186
    .local v4, e:Ljava/lang/IllegalStateException;
    :try_start_2
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "MotoCameraDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopRecorder failure: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_5
    new-instance v1, Lcom/motorola/camera/CameraOperationException;

    invoke-direct {v1, v4}, Lcom/motorola/camera/CameraOperationException;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1188
    .end local v0           #camException:Lcom/motorola/camera/CameraOperationException;
    .local v1, camException:Lcom/motorola/camera/CameraOperationException;
    const-wide/16 v2, 0x0

    .line 1195
    :try_start_3
    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->releaseMediaRecorder()V
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$2500(Lcom/motorola/camera/Device;)V

    .line 1196
    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$2600(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$DeviceCBInterface;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$2600(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$DeviceCBInterface;

    move-result-object v5

    invoke-interface {v5, v1, v2, v3}, Lcom/motorola/camera/Device$DeviceCBInterface;->onMediaRecorderStopped(Lcom/motorola/camera/CameraOperationException;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v1

    .end local v1           #camException:Lcom/motorola/camera/CameraOperationException;
    .restart local v0       #camException:Lcom/motorola/camera/CameraOperationException;
    goto :goto_0

    .line 1189
    .end local v4           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v4

    .line 1190
    .local v4, e:Ljava/lang/RuntimeException;
    :try_start_4
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "MotoCameraDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopRecorder failure: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_6
    new-instance v1, Lcom/motorola/camera/CameraOperationException;

    invoke-direct {v1, v4}, Lcom/motorola/camera/CameraOperationException;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1192
    .end local v0           #camException:Lcom/motorola/camera/CameraOperationException;
    .restart local v1       #camException:Lcom/motorola/camera/CameraOperationException;
    const-wide/16 v2, 0x0

    .line 1195
    :try_start_5
    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->releaseMediaRecorder()V
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$2500(Lcom/motorola/camera/Device;)V

    .line 1196
    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$2600(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$DeviceCBInterface;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;
    invoke-static {v5}, Lcom/motorola/camera/Device;->access$2600(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$DeviceCBInterface;

    move-result-object v5

    invoke-interface {v5, v1, v2, v3}, Lcom/motorola/camera/Device$DeviceCBInterface;->onMediaRecorderStopped(Lcom/motorola/camera/CameraOperationException;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v0, v1

    .end local v1           #camException:Lcom/motorola/camera/CameraOperationException;
    .restart local v0       #camException:Lcom/motorola/camera/CameraOperationException;
    goto/16 :goto_0

    .line 1195
    .end local v4           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    :try_start_6
    iget-object v7, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #calls: Lcom/motorola/camera/Device;->releaseMediaRecorder()V
    invoke-static {v7}, Lcom/motorola/camera/Device;->access$2500(Lcom/motorola/camera/Device;)V

    .line 1196
    iget-object v7, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;
    invoke-static {v7}, Lcom/motorola/camera/Device;->access$2600(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$DeviceCBInterface;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/motorola/camera/Device$StopMediaRecorderThread;->this$0:Lcom/motorola/camera/Device;

    #getter for: Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;
    invoke-static {v7}, Lcom/motorola/camera/Device;->access$2600(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$DeviceCBInterface;

    move-result-object v7

    invoke-interface {v7, v0, v2, v3}, Lcom/motorola/camera/Device$DeviceCBInterface;->onMediaRecorderStopped(Lcom/motorola/camera/CameraOperationException;J)V

    :cond_7
    throw v5

    .line 1198
    :catchall_1
    move-exception v5

    :goto_1
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    .end local v0           #camException:Lcom/motorola/camera/CameraOperationException;
    .restart local v1       #camException:Lcom/motorola/camera/CameraOperationException;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1           #camException:Lcom/motorola/camera/CameraOperationException;
    .restart local v0       #camException:Lcom/motorola/camera/CameraOperationException;
    goto :goto_1

    .end local v0           #camException:Lcom/motorola/camera/CameraOperationException;
    .restart local v1       #camException:Lcom/motorola/camera/CameraOperationException;
    :cond_8
    move-object v0, v1

    .end local v1           #camException:Lcom/motorola/camera/CameraOperationException;
    .restart local v0       #camException:Lcom/motorola/camera/CameraOperationException;
    goto/16 :goto_0
.end method
