.class public Lcom/motorola/camera/modes/JpegPictureCallback;
.super Ljava/lang/Object;
.source "JpegPictureCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "JpegPictureCallback"


# instance fields
.field private mMode:Lcom/motorola/camera/modes/AbstractMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/modes/AbstractMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/motorola/camera/modes/JpegPictureCallback;->mMode:Lcom/motorola/camera/modes/AbstractMode;

    .line 46
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 50
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "JpegPictureCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    .local v0, capturedDate:J
    iget-object v2, p0, Lcom/motorola/camera/modes/JpegPictureCallback;->mMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v2, p1, v0, v1}, Lcom/motorola/camera/modes/AbstractMode;->jpegComplete([BJ)V

    .line 53
    return-void
.end method
