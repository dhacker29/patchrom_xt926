.class public abstract Lcom/motorola/camera/modes/AbstractMode;
.super Ljava/lang/Object;
.source "AbstractMode.java"

# interfaces
.implements Lcom/motorola/camera/Device$DeviceCBInterface;
.implements Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/modes/AbstractMode$1;,
        Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    }
.end annotation


# static fields
.field public static mFileStoreTag:Ljava/lang/String;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mCapturedLocation:Landroid/location/Location;

.field protected mCapturedOrientation:I

.field protected mContext:Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;

.field protected mDevice:Lcom/motorola/camera/Device;

.field protected mHolder:Landroid/view/SurfaceHolder;

.field protected mStorageLocation:Ljava/lang/String;

.field protected mUri:Landroid/net/Uri;

.field protected sAppSettings:Lcom/motorola/camera/AppSettings;

.field protected sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "FILE_STORE_PROGRESS"

    sput-object v0, Lcom/motorola/camera/modes/AbstractMode;->mFileStoreTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "AbstractMode"

    iput-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    .line 65
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->sAppSettings:Lcom/motorola/camera/AppSettings;

    .line 315
    return-void
.end method


# virtual methods
.method public canCapture()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public cancelCaptureRequest()V
    .locals 2

    .prologue
    .line 138
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    const-string v1, "Not yet implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    return-void
.end method

.method public capture()V
    .locals 2

    .prologue
    .line 127
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    const-string v1, "This mode does not support capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    return-void
.end method

.method public captureVideoSnapshot()V
    .locals 2

    .prologue
    .line 134
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    const-string v1, "This mode does not support video snapshot capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mContext:Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;

    .line 164
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->closeCamera()V

    .line 165
    return-void
.end method

.method public cleanupForModeSwitch()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Device;->resetRequired(Z)V

    .line 177
    return-void
.end method

.method protected connectDevice()V
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    .line 190
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "modes: connect device device acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/Device;->connectDevice(Lcom/motorola/camera/Device$DeviceCBInterface;)V

    .line 193
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "modes: connect device device started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    return-void
.end method

.method public abstract getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
.end method

.method public getPicNum()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public getPicSize()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public isStopCaptureAllowed()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public jpegComplete([BJ)V
    .locals 2
    .parameter "data"
    .parameter "date"

    .prologue
    .line 264
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    const-string v1, " This mode doesn\'t supoort jpegComplete "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    return-void
.end method

.method protected notifyClient(IIILjava/lang/Object;)V
    .locals 2
    .parameter "messageId"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mContext:Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mContext:Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;->requestCompletedOrError(IIILjava/lang/Object;)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    const-string v1, "State Machine MISSING???"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDeviceConnected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/motorola/camera/modes/AbstractMode;->notifyClient(IIILjava/lang/Object;)V

    .line 237
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "modes: ondeviceconnected device connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 4
    .parameter "ex"

    .prologue
    const/4 v3, 0x0

    .line 242
    const/16 v0, 0x64

    .line 244
    .local v0, result:I
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.camera.CameraDisabledException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    const/16 v0, 0x66

    .line 249
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/motorola/camera/modes/AbstractMode;->notifyClient(IIILjava/lang/Object;)V

    .line 250
    return-void

    .line 246
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.camera.CameraDisabledException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/16 v0, 0x65

    goto :goto_0
.end method

.method public onMediaRecorderStopped(Lcom/motorola/camera/CameraOperationException;J)V
    .locals 2
    .parameter "ex"
    .parameter "duration"

    .prologue
    .line 255
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    const-string v1, "This mode does not support onMediaRecorderStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    return-void
.end method

.method public onPreCaptureComplete(I)V
    .locals 2
    .parameter "messageData"

    .prologue
    const/4 v1, 0x0

    .line 226
    sget-object v0, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->MODE_COMPLETE:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    invoke-virtual {v0}, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/motorola/camera/modes/AbstractMode;->notifyClient(IIILjava/lang/Object;)V

    .line 227
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    const-string v1, "modes: onPreCaptureComplete exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    return-void
.end method

.method public onSaveComplete(Lcom/motorola/camera/CameraRoll$CameraData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/motorola/camera/CameraRoll$CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mUri:Landroid/net/Uri;

    .line 292
    return-void
.end method

.method public preCapture()V
    .locals 4

    .prologue
    .line 101
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    const-string v1, "preCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    .line 107
    :goto_0
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/saving/SaveHelper;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mStorageLocation:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/OrientationEvent;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->getCorrectedOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedOrientation:I

    .line 112
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    iget v2, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/AppSettings;->setExifInfo(Landroid/location/Location;I)V

    .line 114
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/BlurCheckin;->setCapturedOrientation(I)V

    .line 115
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location: lat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    return-void

    .line 105
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    goto :goto_0
.end method

.method public setDisplayOrientation()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->setDisplayOrientation()V

    .line 219
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->updatePreviewSize()V

    .line 220
    return-void
.end method

.method public setParameters()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->updateCameraParameters()V

    .line 211
    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/Device;->setSurface(Landroid/view/SurfaceHolder;Lcom/motorola/camera/Device$DeviceCBInterface;)V

    .line 203
    return-void
.end method

.method public startInit(Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/motorola/camera/modes/AbstractMode;->mContext:Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;

    .line 87
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "modes: startinit enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/modes/AbstractMode;->connectDevice()V

    .line 89
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "modes: startinit exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    return-void
.end method

.method public stopCapture(Z)V
    .locals 3
    .parameter "aborted"

    .prologue
    const/4 v2, 0x0

    .line 153
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    const-string v1, "This mode does not support stop capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/motorola/camera/modes/AbstractMode;->notifyClient(IIILjava/lang/Object;)V

    .line 155
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->surfaceDestroyed()V

    .line 207
    return-void
.end method

.method public toggleCamera()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->toggleCamera()V

    .line 215
    return-void
.end method

.method public toggleMute(Z)V
    .locals 2
    .parameter "mute"

    .prologue
    .line 146
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->TAG:Ljava/lang/String;

    const-string v1, "This mode does not support video snapshot capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    return-void
.end method
