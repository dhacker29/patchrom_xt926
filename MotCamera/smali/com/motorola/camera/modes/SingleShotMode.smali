.class public Lcom/motorola/camera/modes/SingleShotMode;
.super Lcom/motorola/camera/modes/StillMode;
.source "SingleShotMode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleShot"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/motorola/camera/modes/StillMode;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SINGLESHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

.method public preCapture()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/motorola/camera/modes/StillMode;->preCapture()V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/modes/SingleShotMode;->onPreCaptureComplete(I)V

    .line 45
    return-void
.end method
