.class public abstract Lcom/motorola/camera/modes/VideoMode;
.super Lcom/motorola/camera/modes/AbstractMode;
.source "VideoMode.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field private MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I

.field private final TAG:Ljava/lang/String;

.field private mAllowVideoSnapshot:Z

.field protected mCurrentFileName:Ljava/lang/String;

.field protected mCurrentVideoValues:Landroid/content/ContentValues;

.field private mHandler:Landroid/os/Handler;

.field protected mStartTime:J

.field protected mVideoTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/motorola/camera/modes/AbstractMode;-><init>()V

    .line 56
    const-string v0, "VideoMode"

    iput-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/modes/VideoMode;->mAllowVideoSnapshot:Z

    .line 67
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/motorola/camera/modes/VideoMode;->MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public canCapture()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->hasLowBattery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v4, 0x7f0b0089

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 82
    :goto_0
    return v1

    .line 77
    :cond_0
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 78
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 79
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v4, 0x7f0b008b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public capture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VideoMode"

    const-string v2, "Calling device start record"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    invoke-virtual {v1}, Lcom/motorola/camera/Device;->startRecorder()V
    :try_end_0
    .catch Lcom/motorola/camera/CameraOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 131
    .local v0, ex:Lcom/motorola/camera/CameraOperationException;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/motorola/camera/modes/VideoMode;->notifyClient(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public captureVideoSnapshot()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 183
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "VideoMode"

    const-string v3, "captureVideoSnapshot() +"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/camera/modes/VideoMode;->mAllowVideoSnapshot:Z

    if-eqz v2, :cond_1

    .line 186
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/camera/modes/VideoMode;->mAllowVideoSnapshot:Z

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->VIDEO_SNAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/motorola/camera/modes/JpegPictureCallback;

    invoke-direct {v6, p0}, Lcom/motorola/camera/modes/JpegPictureCallback;-><init>(Lcom/motorola/camera/modes/AbstractMode;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/motorola/camera/Device;->takePicture(Landroid/hardware/Camera$ShutterCallback;Lcom/motorola/camera/modes/RawPictureCallback;Lcom/motorola/camera/modes/PostViewPictureCallback;Lcom/motorola/camera/modes/JpegPictureCallback;)V
    :try_end_0
    .catch Lcom/motorola/camera/CameraOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 196
    .restart local v0       #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Lcom/motorola/camera/CameraOperationException;
    const-string v2, "VideoMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video snapshot capture failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v7, v2, v3}, Lcom/motorola/camera/modes/VideoMode;->jpegComplete([BJ)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 144
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VideoMode"

    const-string v1, "cleanup entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->muteMicrophone(Z)V

    .line 146
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->stopMediaRecorderThread()V

    .line 147
    invoke-super {p0}, Lcom/motorola/camera/modes/AbstractMode;->cleanup()V

    .line 148
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VideoMode"

    const-string v1, "cleanup exited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    return-void
.end method

.method public isStopCaptureAllowed()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public jpegComplete([BJ)V
    .locals 8
    .parameter "data"
    .parameter "date"

    .prologue
    .line 209
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VideoMode"

    const-string v1, "jpegComplete - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    if-eqz p1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    iget-object v4, p0, Lcom/motorola/camera/modes/AbstractMode;->mStorageLocation:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    iget v6, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedOrientation:I

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/saving/SaveHelper;->saveImage([BJLjava/lang/String;Landroid/location/Location;I)V

    .line 215
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "enabled"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->VIDEO_SNAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, v7}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/modes/VideoMode;->mAllowVideoSnapshot:Z

    .line 220
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x0

    .line 243
    const/16 v1, 0x320

    if-eq p2, v1, :cond_0

    const/16 v1, 0x321

    if-ne p2, v1, :cond_2

    .line 245
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/motorola/camera/modes/VideoMode;->notifyClient(IIILjava/lang/Object;)V

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    iget v1, p0, Lcom/motorola/camera/modes/VideoMode;->MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I

    if-ne p2, v1, :cond_1

    .line 248
    move v0, p3

    .line 249
    .local v0, value:I
    iget-object v1, p0, Lcom/motorola/camera/modes/VideoMode;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/modes/VideoMode$1;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/modes/VideoMode$1;-><init>(Lcom/motorola/camera/modes/VideoMode;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onMediaRecorderStopped(Lcom/motorola/camera/CameraOperationException;J)V
    .locals 8
    .parameter "ex"
    .parameter "duration"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 155
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "VideoMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMediaRecorderStopped entered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, file:Ljava/io/File;
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "VideoMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_3

    .line 160
    iget-object v2, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    iget-object v2, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "duration"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "output"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 164
    .local v1, intentOutput:Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3}, Lcom/motorola/camera/saving/SaveHelper;->updateMediaStore(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 169
    .end local v1           #intentOutput:Landroid/net/Uri;
    :goto_0
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/motorola/camera/BlurCheckin;->setCapturedDuration(J)V

    .line 170
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/motorola/camera/AppSettings;->muteMicrophone(Z)V

    .line 172
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->onSaveComplete()V

    .line 174
    iput-object v7, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 175
    iput-object v7, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    .line 177
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v6, v6, v7}, Lcom/motorola/camera/modes/VideoMode;->notifyClient(IIILjava/lang/Object;)V

    .line 178
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "VideoMode"

    const-string v3, "onMediaRecorderStopped exited"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    return-void

    .line 166
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public preCapture()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 87
    invoke-super {p0}, Lcom/motorola/camera/modes/AbstractMode;->preCapture()V

    .line 88
    iput-boolean v11, p0, Lcom/motorola/camera/modes/VideoMode;->mAllowVideoSnapshot:Z

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 90
    .local v9, time:J
    iput-wide v9, p0, Lcom/motorola/camera/modes/VideoMode;->mStartTime:J

    .line 91
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->getVideoTitle(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mVideoTitle:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "output"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 95
    .local v1, intentOutput:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mVideoTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/Util;->createVideoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    .line 108
    :goto_0
    invoke-virtual {p0, v9, v10}, Lcom/motorola/camera/modes/VideoMode;->setupContentValues(J)V

    .line 109
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    iget-object v3, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    iget v4, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedOrientation:I

    iget-object v5, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    invoke-virtual {v0, v3, v4, v5, p0}, Lcom/motorola/camera/Device;->prepareRecorder(Ljava/lang/String;ILandroid/location/Location;Landroid/media/MediaRecorder$OnInfoListener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 112
    .local v8, result:Ljava/lang/Boolean;
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->stopBackgroundMusic(Landroid/content/Context;)V

    .line 116
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/motorola/camera/AppSettings;->muteMicrophone(Z)V

    .line 117
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v11

    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/modes/VideoMode;->onPreCaptureComplete(I)V

    .line 119
    return-void

    .line 97
    .end local v8           #result:Ljava/lang/Boolean;
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "file:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_1
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v12

    .line 101
    .local v2, projection:[Ljava/lang/String;
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 103
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 104
    .local v7, index:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    goto :goto_0

    .line 117
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #index:I
    .restart local v8       #result:Ljava/lang/Boolean;
    :cond_2
    const/16 v0, 0x64

    goto :goto_1
.end method

.method protected setupContentValues(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 228
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 229
    iget-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "title"

    iget-object v2, p0, Lcom/motorola/camera/modes/VideoMode;->mVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_display_name"

    iget-object v2, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "datetaken"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    iget-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getMimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    iget-object v2, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "resolution"

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getCurrentVideoResSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "latitude"

    iget-object v2, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 238
    iget-object v0, p0, Lcom/motorola/camera/modes/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "longitude"

    iget-object v2, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 240
    :cond_0
    return-void
.end method

.method public stopCapture(Z)V
    .locals 2
    .parameter "aborted"

    .prologue
    .line 137
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VideoMode"

    const-string v1, "stopCapture entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/Device;->stopRecorder(Lcom/motorola/camera/Device$DeviceCBInterface;)V

    .line 139
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VideoMode"

    const-string v1, "stopCapture exited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    return-void
.end method

.method public toggleMute(Z)V
    .locals 1
    .parameter "mute"

    .prologue
    .line 204
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/AppSettings;->muteMicrophone(Z)V

    .line 205
    return-void
.end method
