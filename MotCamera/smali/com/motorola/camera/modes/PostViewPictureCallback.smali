.class public Lcom/motorola/camera/modes/PostViewPictureCallback;
.super Ljava/lang/Object;
.source "PostViewPictureCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostViewPictureCallback"


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
    iput-object p1, p0, Lcom/motorola/camera/modes/PostViewPictureCallback;->mMode:Lcom/motorola/camera/modes/AbstractMode;

    .line 46
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 50
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PostViewPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method
