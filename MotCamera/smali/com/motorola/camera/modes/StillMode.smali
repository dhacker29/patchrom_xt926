.class public abstract Lcom/motorola/camera/modes/StillMode;
.super Lcom/motorola/camera/modes/AbstractMode;
.source "StillMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StillMode"


# instance fields
.field private final AVG_PICTURE_SIZE:I

.field protected final PICS_PER_CAPTURE:I

.field protected capturePics:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/motorola/camera/modes/AbstractMode;-><init>()V

    .line 40
    const v0, 0x4c4b40

    iput v0, p0, Lcom/motorola/camera/modes/StillMode;->AVG_PICTURE_SIZE:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/modes/StillMode;->PICS_PER_CAPTURE:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/modes/StillMode;->capturePics:I

    return-void
.end method


# virtual methods
.method public capture()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 48
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "StillMode"

    const-string v2, "capture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->JPEG_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 51
    :cond_1
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/modes/AbstractMode;->mDevice:Lcom/motorola/camera/Device;

    new-instance v2, Lcom/motorola/camera/modes/ShutterCallback;

    invoke-direct {v2, p0}, Lcom/motorola/camera/modes/ShutterCallback;-><init>(Lcom/motorola/camera/modes/AbstractMode;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/motorola/camera/modes/JpegPictureCallback;

    invoke-direct {v5, p0}, Lcom/motorola/camera/modes/JpegPictureCallback;-><init>(Lcom/motorola/camera/modes/AbstractMode;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/motorola/camera/Device;->takePicture(Landroid/hardware/Camera$ShutterCallback;Lcom/motorola/camera/modes/RawPictureCallback;Lcom/motorola/camera/modes/PostViewPictureCallback;Lcom/motorola/camera/modes/JpegPictureCallback;)V

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/modes/StillMode;->capturePics:I
    :try_end_0
    .catch Lcom/motorola/camera/CameraOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, ex:Lcom/motorola/camera/CameraOperationException;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "StillMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modes: capture failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v6, v1, v2}, Lcom/motorola/camera/modes/StillMode;->jpegComplete([BJ)V

    goto :goto_0
.end method

.method public getPicNum()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public getPicSize()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x4c4b40

    return v0
.end method

.method public jpegComplete([BJ)V
    .locals 8
    .parameter "data"
    .parameter "date"

    .prologue
    const/4 v7, 0x0

    .line 65
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->JPEG_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 67
    :cond_0
    iget v0, p0, Lcom/motorola/camera/modes/StillMode;->capturePics:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/modes/StillMode;->capturePics:I

    .line 69
    iget v0, p0, Lcom/motorola/camera/modes/StillMode;->capturePics:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    if-eqz p1, :cond_3

    .line 72
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    iget-object v4, p0, Lcom/motorola/camera/modes/AbstractMode;->mStorageLocation:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    iget v6, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedOrientation:I

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/saving/SaveHelper;->saveImage([BJLjava/lang/String;Landroid/location/Location;I)V

    .line 78
    :cond_3
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v7, v7, v1}, Lcom/motorola/camera/modes/StillMode;->notifyClient(IIILjava/lang/Object;)V

    .line 79
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "StillMode"

    const-string v1, "modes: jpegComplete exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
