.class public Lcom/motorola/camera/modes/SingleShotService;
.super Lcom/motorola/camera/modes/SingleShotMode;
.source "SingleShotService.java"


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/motorola/camera/modes/SingleShotMode;-><init>()V

    .line 22
    const-string v0, "SingleShotService"

    iput-object v0, p0, Lcom/motorola/camera/modes/SingleShotService;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/motorola/camera/modes/SingleShotMode;->cleanup()V

    .line 68
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SingleShotService"

    const-string v1, " cleanUp() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveHelper;->removeSaveListener(Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;)V

    .line 70
    return-void
.end method

.method public getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SERVICE_PICTURE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

.method public jpegComplete([BJ)V
    .locals 8
    .parameter "data"
    .parameter "date"

    .prologue
    const/4 v7, 0x0

    .line 49
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    iget-object v4, p0, Lcom/motorola/camera/modes/AbstractMode;->mStorageLocation:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    iget v6, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedOrientation:I

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/saving/SaveHelper;->saveImage([BJLjava/lang/String;Landroid/location/Location;I)V

    .line 52
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v7, v7, v1}, Lcom/motorola/camera/modes/SingleShotService;->notifyClient(IIILjava/lang/Object;)V

    .line 54
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SingleShotService"

    const-string v1, "modes: jpegComplete exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    return-void
.end method

.method public onSaveComplete(Lcom/motorola/camera/CameraRoll$CameraData;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 59
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SingleShotService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveComplete: uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraRoll$CameraData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraRoll$CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->mUri:Landroid/net/Uri;

    .line 62
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/camera/modes/AbstractMode;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/camera/modes/SingleShotService;->notifyClient(IIILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public startInit(Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/motorola/camera/modes/SingleShotMode;->startInit(Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;)V

    .line 31
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SingleShotService"

    const-string v1, " startInit() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveHelper;->addSaveListener(Lcom/motorola/camera/saving/SaveHelper$SavingCompleteNotifier;)V

    .line 33
    return-void
.end method

.method public stopCapture(Z)V
    .locals 2
    .parameter "aborted"

    .prologue
    .line 43
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SingleShotService"

    const-string v1, "This mode does not support stop capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method
