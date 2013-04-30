.class public Lcom/motorola/android/camera/MotCamera;
.super Landroid/hardware/Camera;
.source "MotCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/camera/MotCamera$MotParameters;,
        Lcom/motorola/android/camera/MotCamera$Region;,
        Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;,
        Lcom/motorola/android/camera/MotCamera$MotEventHandler;
    }
.end annotation


# static fields
.field private static final CAMERA_MSG_FACE_DETECTION:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "MotCamera"


# instance fields
.field private mFaceDetectCallback:Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;

.field private mMotEventHandler:Lcom/motorola/android/camera/MotCamera$MotEventHandler;


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;-><init>(IZ)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/camera/MotCamera;->mFaceDetectCallback:Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;

    .line 63
    new-instance v0, Lcom/motorola/android/camera/MotCamera$MotEventHandler;

    invoke-direct {v0, p0, p0}, Lcom/motorola/android/camera/MotCamera$MotEventHandler;-><init>(Lcom/motorola/android/camera/MotCamera;Lcom/motorola/android/camera/MotCamera;)V

    iput-object v0, p0, Lcom/motorola/android/camera/MotCamera;->mMotEventHandler:Lcom/motorola/android/camera/MotCamera$MotEventHandler;

    .line 64
    iget-object v0, p0, Lcom/motorola/android/camera/MotCamera;->mMotEventHandler:Lcom/motorola/android/camera/MotCamera$MotEventHandler;

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/MotCamera;->setExtEventHandler(Landroid/hardware/Camera$ExtEventHandler;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/camera/MotCamera;)Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/android/camera/MotCamera;->mFaceDetectCallback:Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;

    return-object v0
.end method

.method public static open()Lcom/motorola/android/camera/MotCamera;
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/motorola/android/camera/MotCamera;->getNumberOfCameras()I

    move-result v2

    .line 45
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 46
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 47
    invoke-static {v1, v0}, Lcom/motorola/android/camera/MotCamera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 48
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 49
    new-instance v3, Lcom/motorola/android/camera/MotCamera;

    invoke-direct {v3, v1}, Lcom/motorola/android/camera/MotCamera;-><init>(I)V

    .line 52
    :goto_1
    return-object v3

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Lcom/motorola/android/camera/MotCamera;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 34
    new-instance v0, Lcom/motorola/android/camera/MotCamera;

    invoke-direct {v0, p0}, Lcom/motorola/android/camera/MotCamera;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final setFaceDetectCallback(Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/motorola/android/camera/MotCamera;->mFaceDetectCallback:Lcom/motorola/android/camera/MotCamera$FaceDetectCallback;

    .line 99
    return-void
.end method
