.class public abstract Lcom/motorola/camera/modes/PanoramaMode;
.super Lcom/motorola/camera/modes/AbstractMode;
.source "PanoramaMode.java"


# static fields
.field public static final MOT_PANORAMA_PACKAGE:Ljava/lang/String; = "com.motorola.android.camera.Panorama"


# instance fields
.field protected mPanoramaManager:Lcom/motorola/camera/PanoramaManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/motorola/camera/modes/AbstractMode;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/modes/PanoramaMode;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    return-void
.end method


# virtual methods
.method public cleanupForModeSwitch()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/motorola/camera/modes/PanoramaMode;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    invoke-virtual {v0}, Lcom/motorola/camera/PanoramaManager;->reset()V

    .line 29
    invoke-super {p0}, Lcom/motorola/camera/modes/AbstractMode;->cleanupForModeSwitch()V

    .line 30
    return-void
.end method

.method public getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->PANORAMA:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

.method public isStopCaptureAllowed()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public preCapture()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/motorola/camera/modes/AbstractMode;->preCapture()V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/modes/PanoramaMode;->onPreCaptureComplete(I)V

    .line 44
    return-void
.end method

.method public startInit(Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/motorola/camera/modes/AbstractMode;->sAppSettings:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getPanoramaManager()Lcom/motorola/camera/PanoramaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/modes/PanoramaMode;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    .line 22
    invoke-super {p0, p1}, Lcom/motorola/camera/modes/AbstractMode;->startInit(Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;)V

    .line 23
    return-void
.end method
