.class public Lcom/motorola/android/camera/Panorama;
.super Ljava/lang/Object;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/camera/Panorama$1;,
        Lcom/motorola/android/camera/Panorama$Parameters;,
        Lcom/motorola/android/camera/Panorama$Size;,
        Lcom/motorola/android/camera/Panorama$EventHandler;,
        Lcom/motorola/android/camera/Panorama$ShutterCallback;,
        Lcom/motorola/android/camera/Panorama$ErrorCallback;,
        Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;,
        Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;,
        Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;,
        Lcom/motorola/android/camera/Panorama$PictureCallback;,
        Lcom/motorola/android/camera/Panorama$PostviewCallback;
    }
.end annotation


# static fields
.field private static final CAMDIR_INFO_CALLBACK:I = 0x4

.field private static final ERROR_CALLBACK:I = 0x5

.field public static final PANORAMA_ERROR_CAMERA_FAIL:I = 0x3

.field public static final PANORAMA_ERROR_CAPTURE_FINISH:I = 0x64

.field public static final PANORAMA_ERROR_OUT_OF_MEMORY:I = 0x2

.field public static final PANORAMA_ERROR_STITCH_ENGINE_FAIL:I = 0x4

.field public static final PANORAMA_ERROR_UNKNOWN:I = 0x1

.field public static final PANORAMA_IMAGE_FORMAT_JPEG:I = 0x2

.field public static final PANORAMA_IMAGE_FORMAT_YUYV422I:I = 0x1

.field private static final PICTURE_CALLBACK:I = 0x2

.field private static final POSTVIEW_CALLBACK:I = 0x0

.field private static final SHUTTER_CALLBACK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Panorama"

.field private static final VF_INFO_CALLBACK:I = 0x3

.field private static mCam:Landroid/hardware/Camera;


# instance fields
.field private mCamDirInfoCallback:Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;

.field private mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;

.field private mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

.field private mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

.field private mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

.field private mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

.field private mVFInfoWithDirCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v1, 0x0

    sput-object v1, Lcom/motorola/android/camera/Panorama;->mCam:Landroid/hardware/Camera;

    .line 531
    :try_start_0
    const-string v1, "panorama_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 533
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 534
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "Panorama"

    const-string v2, "WARNING: Could not load libpanorama_jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    .line 111
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    .line 112
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    .line 113
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoWithDirCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;

    .line 114
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mCamDirInfoCallback:Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;

    .line 115
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    .line 116
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;

    .line 119
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 120
    new-instance v1, Lcom/motorola/android/camera/Panorama$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/motorola/android/camera/Panorama$EventHandler;-><init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    .line 131
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/motorola/android/camera/Panorama;->native_setup(Ljava/lang/Object;)V

    .line 132
    sget-object v1, Lcom/motorola/android/camera/Panorama;->mCam:Landroid/hardware/Camera;

    invoke-direct {p0, v1}, Lcom/motorola/android/camera/Panorama;->native_setCamera(Landroid/hardware/Camera;)V

    .line 133
    return-void

    .line 121
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    new-instance v1, Lcom/motorola/android/camera/Panorama$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/motorola/android/camera/Panorama$EventHandler;-><init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    goto :goto_0

    .line 124
    :cond_1
    iput-object v1, p0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "panType"

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v2, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    .line 80
    iput-object v2, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    .line 81
    iput-object v2, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    .line 82
    iput-object v2, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoWithDirCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;

    .line 83
    iput-object v2, p0, Lcom/motorola/android/camera/Panorama;->mCamDirInfoCallback:Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;

    .line 84
    iput-object v2, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    .line 85
    iput-object v2, p0, Lcom/motorola/android/camera/Panorama;->mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;

    .line 88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 89
    new-instance v2, Lcom/motorola/android/camera/Panorama$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Lcom/motorola/android/camera/Panorama$EventHandler;-><init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    .line 99
    :goto_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/motorola/android/camera/Panorama;->native_setup(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lcom/motorola/android/camera/Panorama;->getParameters()Lcom/motorola/android/camera/Panorama$Parameters;

    move-result-object v1

    .line 101
    .local v1, p:Lcom/motorola/android/camera/Panorama$Parameters;
    invoke-virtual {v1, p1}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaType(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/motorola/android/camera/Panorama;->setParameters(Lcom/motorola/android/camera/Panorama$Parameters;)V

    .line 104
    sget-object v2, Lcom/motorola/android/camera/Panorama;->mCam:Landroid/hardware/Camera;

    invoke-direct {p0, v2}, Lcom/motorola/android/camera/Panorama;->native_setCamera(Landroid/hardware/Camera;)V

    .line 105
    return-void

    .line 90
    .end local v1           #p:Lcom/motorola/android/camera/Panorama$Parameters;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    new-instance v2, Lcom/motorola/android/camera/Panorama$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Lcom/motorola/android/camera/Panorama$EventHandler;-><init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    goto :goto_0

    .line 93
    :cond_1
    iput-object v2, p0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PostviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoWithDirCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama;->mCamDirInfoCallback:Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama;->mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;

    return-object v0
.end method

.method public static init(Landroid/hardware/Camera;)Lcom/motorola/android/camera/Panorama;
    .locals 1
    .parameter "c"

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 72
    :cond_0
    sput-object p0, Lcom/motorola/android/camera/Panorama;->mCam:Landroid/hardware/Camera;

    .line 73
    new-instance v0, Lcom/motorola/android/camera/Panorama;

    invoke-direct {v0}, Lcom/motorola/android/camera/Panorama;-><init>()V

    goto :goto_0
.end method

.method public static init(Landroid/hardware/Camera;Ljava/lang/String;)Lcom/motorola/android/camera/Panorama;
    .locals 1
    .parameter "c"
    .parameter "panType"

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 65
    :cond_0
    sput-object p0, Lcom/motorola/android/camera/Panorama;->mCam:Landroid/hardware/Camera;

    .line 66
    new-instance v0, Lcom/motorola/android/camera/Panorama;

    invoke-direct {v0, p1}, Lcom/motorola/android/camera/Panorama;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final native native_cancelCapture()V
.end method

.method private final native native_enablePausePreview(I)V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_resumePreview()V
.end method

.method private final native native_setCamera(Landroid/hardware/Camera;)V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private final native native_stopCapture()V
.end method

.method private final native native_takePicture()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "pan_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 519
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/camera/Panorama;

    .line 520
    .local v0, c:Lcom/motorola/android/camera/Panorama;
    if-nez v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v2, v0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, v0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/motorola/android/camera/Panorama$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 525
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Lcom/motorola/android/camera/Panorama;->mEventHandler:Lcom/motorola/android/camera/Panorama$EventHandler;

    invoke-virtual {v2, v1}, Lcom/motorola/android/camera/Panorama$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public final cancelCapture()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_cancelCapture()V

    .line 284
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_release()V

    .line 310
    return-void
.end method

.method public getParameters()Lcom/motorola/android/camera/Panorama$Parameters;
    .locals 5

    .prologue
    .line 150
    new-instance v0, Lcom/motorola/android/camera/Panorama$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/motorola/android/camera/Panorama$Parameters;-><init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama$1;)V

    .line 151
    .local v0, p:Lcom/motorola/android/camera/Panorama$Parameters;
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, s:Ljava/lang/String;
    const-string v2, "Panorama"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_getParameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v0, v1}, Lcom/motorola/android/camera/Panorama$Parameters;->unflatten(Ljava/lang/String;)V

    .line 154
    return-object v0
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_release()V

    .line 328
    return-void
.end method

.method public final resumePreview()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_resumePreview()V

    .line 271
    return-void
.end method

.method public final setErrorCallback(Lcom/motorola/android/camera/Panorama$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama;->mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;

    .line 453
    return-void
.end method

.method public setParameters(Lcom/motorola/android/camera/Panorama$Parameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/motorola/android/camera/Panorama$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_setParameters(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public final stopCapture()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_stopCapture()V

    .line 305
    return-void
.end method

.method public final takePicture(Lcom/motorola/android/camera/Panorama$ShutterCallback;Lcom/motorola/android/camera/Panorama$PictureCallback;Lcom/motorola/android/camera/Panorama$PostviewCallback;Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "jpeg"
    .parameter "postview"
    .parameter "vfinfo"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    .line 181
    iput-object p3, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    .line 182
    iput-object p2, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    .line 183
    iput-object p4, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_enablePausePreview(I)V

    .line 185
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_takePicture()V

    .line 186
    return-void
.end method

.method public final takePicture(Lcom/motorola/android/camera/Panorama$ShutterCallback;Lcom/motorola/android/camera/Panorama$PictureCallback;Lcom/motorola/android/camera/Panorama$PostviewCallback;Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "jpeg"
    .parameter "postview"
    .parameter "vfinfo"
    .parameter "dirinfo"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    .line 200
    iput-object p3, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    .line 201
    iput-object p2, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    .line 202
    iput-object p4, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    .line 203
    iput-object p5, p0, Lcom/motorola/android/camera/Panorama;->mCamDirInfoCallback:Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_enablePausePreview(I)V

    .line 205
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_takePicture()V

    .line 206
    return-void
.end method

.method public final takePicture(Lcom/motorola/android/camera/Panorama$ShutterCallback;Lcom/motorola/android/camera/Panorama$PictureCallback;Lcom/motorola/android/camera/Panorama$PostviewCallback;Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;Z)V
    .locals 1
    .parameter "shutter"
    .parameter "jpeg"
    .parameter "postview"
    .parameter "vfinfo"
    .parameter "dirinfo"
    .parameter "isPausePreview"

    .prologue
    const/4 v0, 0x1

    .line 249
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    .line 250
    iput-object p3, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    .line 251
    iput-object p2, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    .line 252
    iput-object p4, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    .line 253
    iput-object p5, p0, Lcom/motorola/android/camera/Panorama;->mCamDirInfoCallback:Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;

    .line 254
    if-ne p6, v0, :cond_0

    .line 255
    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_enablePausePreview(I)V

    .line 258
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_takePicture()V

    .line 259
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_enablePausePreview(I)V

    goto :goto_0
.end method

.method public final takePicture(Lcom/motorola/android/camera/Panorama$ShutterCallback;Lcom/motorola/android/camera/Panorama$PictureCallback;Lcom/motorola/android/camera/Panorama$PostviewCallback;Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;Z)V
    .locals 1
    .parameter "shutter"
    .parameter "jpeg"
    .parameter "postview"
    .parameter "vfinfo"
    .parameter "isPausePreview"

    .prologue
    const/4 v0, 0x1

    .line 233
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    .line 234
    iput-object p3, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    .line 235
    iput-object p2, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    .line 236
    iput-object p4, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    .line 237
    if-ne p5, v0, :cond_0

    .line 238
    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_enablePausePreview(I)V

    .line 241
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_takePicture()V

    .line 242
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_enablePausePreview(I)V

    goto :goto_0
.end method

.method public final takePicture(Lcom/motorola/android/camera/Panorama$ShutterCallback;Lcom/motorola/android/camera/Panorama$PictureCallback;Lcom/motorola/android/camera/Panorama$PostviewCallback;Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "jpeg"
    .parameter "postview"
    .parameter "vfinfo"
    .parameter "dirinfo"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;

    .line 220
    iput-object p3, p0, Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;

    .line 221
    iput-object p2, p0, Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;

    .line 222
    iput-object p4, p0, Lcom/motorola/android/camera/Panorama;->mVFInfoWithDirCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;

    .line 223
    iput-object p5, p0, Lcom/motorola/android/camera/Panorama;->mCamDirInfoCallback:Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/camera/Panorama;->native_enablePausePreview(I)V

    .line 225
    invoke-direct {p0}, Lcom/motorola/android/camera/Panorama;->native_takePicture()V

    .line 226
    return-void
.end method
