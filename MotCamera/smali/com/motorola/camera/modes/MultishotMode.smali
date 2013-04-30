.class public Lcom/motorola/camera/modes/MultishotMode;
.super Lcom/motorola/camera/modes/StillMode;
.source "MultishotMode.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBurstCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/motorola/camera/modes/StillMode;-><init>()V

    .line 19
    const-string v0, "Multishot"

    iput-object v0, p0, Lcom/motorola/camera/modes/MultishotMode;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public capture()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getBurstCount()I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/modes/MultishotMode;->mBurstCount:I

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    new-instance v2, Lcom/motorola/camera/modes/ShutterCallback;

    invoke-direct {v2, p0}, Lcom/motorola/camera/modes/ShutterCallback;-><init>(Lcom/motorola/camera/modes/AbstractMode;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/motorola/camera/modes/JpegPictureCallback;

    invoke-direct {v5, p0}, Lcom/motorola/camera/modes/JpegPictureCallback;-><init>(Lcom/motorola/camera/modes/AbstractMode;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/motorola/camera/Device;->takePicture(Landroid/hardware/Camera$ShutterCallback;Lcom/motorola/camera/modes/RawPictureCallback;Lcom/motorola/camera/modes/PostViewPictureCallback;Lcom/motorola/camera/modes/JpegPictureCallback;)V
    :try_end_0
    .catch Lcom/motorola/camera/CameraOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, ex:Lcom/motorola/camera/CameraOperationException;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v6, v1, v2}, Lcom/motorola/camera/modes/MultishotMode;->jpegComplete([BJ)V

    goto :goto_0
.end method

.method public getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->MULTISHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

.method public jpegComplete([BJ)V
    .locals 10
    .parameter "data"
    .parameter "date"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 51
    iget v0, p0, Lcom/motorola/camera/modes/StillMode;->capturePics:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/modes/StillMode;->capturePics:I

    .line 53
    if-eqz p1, :cond_2

    .line 54
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    iget-object v4, p0, Lcom/motorola/camera/modes/AbstractMode;->mStorageLocation:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    iget v6, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedOrientation:I

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/saving/SaveHelper;->saveImage([BJLjava/lang/String;Landroid/location/Location;I)V

    .line 63
    iget v0, p0, Lcom/motorola/camera/modes/StillMode;->capturePics:I

    iget v1, p0, Lcom/motorola/camera/modes/MultishotMode;->mBurstCount:I

    if-ne v0, v1, :cond_0

    .line 64
    iput v7, p0, Lcom/motorola/camera/modes/StillMode;->capturePics:I

    .line 65
    invoke-virtual {p0, v8, v7, v7, v9}, Lcom/motorola/camera/modes/MultishotMode;->notifyClient(IIILjava/lang/Object;)V

    .line 67
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/modes/MultishotMode;->TAG:Ljava/lang/String;

    const-string v1, "modes: jpegComplete exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    iput v7, p0, Lcom/motorola/camera/modes/StillMode;->capturePics:I

    .line 58
    invoke-virtual {p0, v8, v7, v7, v9}, Lcom/motorola/camera/modes/MultishotMode;->notifyClient(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public preCapture()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/motorola/camera/modes/StillMode;->preCapture()V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/modes/MultishotMode;->onPreCaptureComplete(I)V

    .line 36
    return-void
.end method
