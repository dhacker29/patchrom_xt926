.class public Lcom/motorola/camera/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$ErrorCallback;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Lcom/motorola/camera/DeviceFaceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/Device$1;,
        Lcom/motorola/camera/Device$StopMediaRecorderThread;,
        Lcom/motorola/camera/Device$AsyncReturn;,
        Lcom/motorola/camera/Device$DeviceCBInterface;,
        Lcom/motorola/camera/Device$PreviewDisplayOperation;,
        Lcom/motorola/camera/Device$StartPreviewOperation;,
        Lcom/motorola/camera/Device$SetCameraParameters;,
        Lcom/motorola/camera/Device$ConnectDeviceOperation;,
        Lcom/motorola/camera/Device$FaceDetectionListener;,
        Lcom/motorola/camera/Device$AutoFocusCallback;,
        Lcom/motorola/camera/Device$FacesDetectedListener;,
        Lcom/motorola/camera/Device$DeviceErrorListener;,
        Lcom/motorola/camera/Device$FocusResultListener;,
        Lcom/motorola/camera/Device$StopPreviewListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MotoCameraDevice"

.field private static final THREAD_POOL_SIZE:I = 0x1


# instance fields
.field private mAutoFocusCallback:Lcom/motorola/camera/Device$AutoFocusCallback;

.field private mBackCameraId:I

.field private mCDAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/motorola/camera/Device$AsyncReturn",
            "<",
            "Landroid/hardware/Camera;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

.field protected mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mDeviceErrorListener:Lcom/motorola/camera/Device$DeviceErrorListener;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFaceDetectionListener:Lcom/motorola/camera/Device$FaceDetectionListener;

.field private mFacesDetectedListener:Lcom/motorola/camera/Device$FacesDetectedListener;

.field private mFocusResultListener:Lcom/motorola/camera/Device$FocusResultListener;

.field private mFrontCameraId:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field private final mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mMediaRecordStopAndReleaseObject:Ljava/lang/Object;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMotCameraDevice:Lcom/motorola/android/camera/CameraMotExt;

.field private mNewCameraID:I

.field private mNumberOfCameras:I

.field private mPreviewDisplayAsync:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/view/SurfaceHolder;",
            "Ljava/lang/Void;",
            "Lcom/motorola/camera/Device$AsyncReturn",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreviewSurfaceRecieved:Z

.field private mRecordingStartTime:J

.field private mResetRequired:Z

.field private mSetParametersTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mStartPreviewTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mStopPreviewListener:Lcom/motorola/camera/Device$StopPreviewListener;

.field private mTempHolder:Landroid/view/SurfaceHolder;

.field private taskCancelled:Z


# direct methods
.method protected constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v4, p0, Lcom/motorola/camera/Device;->mCameraId:I

    .line 69
    iput v4, p0, Lcom/motorola/camera/Device;->mBackCameraId:I

    iput v4, p0, Lcom/motorola/camera/Device;->mFrontCameraId:I

    .line 81
    iput-object v2, p0, Lcom/motorola/camera/Device;->mTempHolder:Landroid/view/SurfaceHolder;

    .line 82
    iput-boolean v5, p0, Lcom/motorola/camera/Device;->mResetRequired:Z

    .line 84
    new-instance v1, Lcom/motorola/camera/Device$AutoFocusCallback;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Device$AutoFocusCallback;-><init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V

    iput-object v1, p0, Lcom/motorola/camera/Device;->mAutoFocusCallback:Lcom/motorola/camera/Device$AutoFocusCallback;

    .line 85
    new-instance v1, Lcom/motorola/camera/Device$FaceDetectionListener;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Device$FaceDetectionListener;-><init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V

    iput-object v1, p0, Lcom/motorola/camera/Device;->mFaceDetectionListener:Lcom/motorola/camera/Device$FaceDetectionListener;

    .line 90
    iput-boolean v5, p0, Lcom/motorola/camera/Device;->taskCancelled:Z

    .line 93
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/Device;->mMediaRecordStopAndReleaseObject:Ljava/lang/Object;

    .line 137
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraDevice"

    const-string v2, "device constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/Device;->mNumberOfCameras:I

    .line 140
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/Device;->mNumberOfCameras:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppSettings;->setNumOfCameras(I)V

    .line 141
    iget v1, p0, Lcom/motorola/camera/Device;->mNumberOfCameras:I

    new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/motorola/camera/Device;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/motorola/camera/Device;->mNumberOfCameras:I

    if-ge v0, v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/motorola/camera/Device;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v2, v1, v0

    .line 144
    iget-object v1, p0, Lcom/motorola/camera/Device;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 145
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraKPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/Device;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    iget v1, p0, Lcom/motorola/camera/Device;->mBackCameraId:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/Device;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_2

    .line 147
    iput v0, p0, Lcom/motorola/camera/Device;->mBackCameraId:I

    .line 149
    :cond_2
    iget v1, p0, Lcom/motorola/camera/Device;->mFrontCameraId:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/Device;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v5, :cond_3

    .line 150
    iput v0, p0, Lcom/motorola/camera/Device;->mFrontCameraId:I

    .line 142
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_4
    iget v1, p0, Lcom/motorola/camera/Device;->mBackCameraId:I

    if-ne v1, v4, :cond_6

    .line 156
    iget v1, p0, Lcom/motorola/camera/Device;->mFrontCameraId:I

    iput v1, p0, Lcom/motorola/camera/Device;->mNewCameraID:I

    .line 160
    :goto_1
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoCameraKPI"

    const-string v2, "device: camera info done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_5
    return-void

    .line 158
    :cond_6
    iget v1, p0, Lcom/motorola/camera/Device;->mBackCameraId:I

    iput v1, p0, Lcom/motorola/camera/Device;->mNewCameraID:I

    goto :goto_1
.end method

.method static synthetic access$1100(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$AsyncReturn;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/motorola/camera/Device;->onDeviceConnected(Lcom/motorola/camera/Device$AsyncReturn;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/camera/Device;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/motorola/camera/Device;->onConnectDeviceCancelled()V

    return-void
.end method

.method static synthetic access$1300(Lcom/motorola/camera/Device;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/motorola/camera/Device;->mResetRequired:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/camera/Device;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/motorola/camera/Device;->setupCameraParameters()V

    return-void
.end method

.method static synthetic access$1600(Lcom/motorola/camera/Device;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/camera/Device;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/motorola/camera/Device;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/motorola/camera/Device;->onSetupParametersComplete()V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/camera/Device;->mSetParametersTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/motorola/camera/Device;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/motorola/camera/Device;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$FocusResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/camera/Device;->mFocusResultListener:Lcom/motorola/camera/Device$FocusResultListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/motorola/camera/Device;)Landroid/os/AsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/camera/Device;->mStartPreviewTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/motorola/camera/Device;Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/motorola/camera/Device;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$AsyncReturn;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/motorola/camera/Device;->onPreviewCompleted(Lcom/motorola/camera/Device$AsyncReturn;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/motorola/camera/Device;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/camera/Device;->mMediaRecordStopAndReleaseObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/motorola/camera/Device;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/motorola/camera/Device;->mRecordingStartTime:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/motorola/camera/Device;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/motorola/camera/Device;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$2600(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$DeviceCBInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$FacesDetectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/camera/Device;->mFacesDetectedListener:Lcom/motorola/camera/Device$FacesDetectedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/camera/Device;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/CameraHardwareException;,
            Lcom/motorola/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/motorola/camera/Device;->openCamera()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method private cancelAllAsyncTasks()V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/Device;->taskCancelled:Z

    .line 501
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Device;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Device;->cancelTask(Landroid/os/AsyncTask;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Device;->mSetParametersTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/Device;->mSetParametersTask:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Device;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/motorola/camera/Device;->mSetParametersTask:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Device;->cancelTask(Landroid/os/AsyncTask;)V

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/Device;->mStartPreviewTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/Device;->mStartPreviewTask:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Device;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/motorola/camera/Device;->mStartPreviewTask:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Device;->cancelTask(Landroid/os/AsyncTask;)V

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/Device;->mPreviewDisplayAsync:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/Device;->mPreviewDisplayAsync:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Device;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    iget-object v0, p0, Lcom/motorola/camera/Device;->mPreviewDisplayAsync:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Device;->cancelTask(Landroid/os/AsyncTask;)V

    .line 519
    :cond_3
    return-void
.end method

.method private cancelTask(Landroid/os/AsyncTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 523
    return-void
.end method

.method private isTaskRunning(Landroid/os/AsyncTask;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)Z"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onConnectDeviceCancelled()V
    .locals 1

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/motorola/camera/Device;->taskCancelled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/Device;->closeCamera()V

    .line 837
    :cond_0
    return-void
.end method

.method private onDeviceConnected(Lcom/motorola/camera/Device$AsyncReturn;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/Device$AsyncReturn",
            "<",
            "Landroid/hardware/Camera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Lcom/motorola/camera/Device$AsyncReturn;,"Lcom/motorola/camera/Device$AsyncReturn<Landroid/hardware/Camera;>;"
    const/4 v1, 0x0

    .line 822
    invoke-virtual {p1}, Lcom/motorola/camera/Device$AsyncReturn;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 823
    .local v0, ex:Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 824
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 825
    const-string v1, "MotoCameraDevice"

    const-string v2, "Camera Device Connection Failed. Exiting camera application"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    invoke-interface {v1, v0}, Lcom/motorola/camera/Device$DeviceCBInterface;->onError(Ljava/lang/Exception;)V

    .line 833
    :cond_1
    :goto_0
    return-void

    .line 832
    :cond_2
    iget-boolean v2, p0, Lcom/motorola/camera/Device;->taskCancelled:Z

    if-nez v2, :cond_1

    new-instance v2, Lcom/motorola/camera/Device$SetCameraParameters;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/Device$SetCameraParameters;-><init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Void;

    const/4 v5, 0x0

    check-cast v1, Ljava/lang/Void;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/Device$SetCameraParameters;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/Device;->mSetParametersTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onPreviewCompleted(Lcom/motorola/camera/Device$AsyncReturn;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/Device$AsyncReturn",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 868
    .local p1, result:Lcom/motorola/camera/Device$AsyncReturn;,"Lcom/motorola/camera/Device$AsyncReturn<Landroid/view/SurfaceHolder;>;"
    invoke-virtual {p1}, Lcom/motorola/camera/Device$AsyncReturn;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 869
    .local v0, ex:Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 870
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraDevice"

    const-string v2, "Set Preview Display Failed. Exiting camera application"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    invoke-interface {v1, v0}, Lcom/motorola/camera/Device$DeviceCBInterface;->onError(Ljava/lang/Exception;)V

    .line 881
    :goto_0
    return-void

    .line 875
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/Device$AsyncReturn;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceHolder;

    iput-object v1, p0, Lcom/motorola/camera/Device;->mHolder:Landroid/view/SurfaceHolder;

    .line 876
    iget-object v1, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    if-eqz v1, :cond_2

    .line 877
    iget-object v1, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    invoke-interface {v1}, Lcom/motorola/camera/Device$DeviceCBInterface;->onDeviceConnected()V

    .line 878
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    .line 880
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/Device;->mPreviewSurfaceRecieved:Z

    goto :goto_0
.end method

.method private onPreviewStarted()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 850
    iget-object v0, p0, Lcom/motorola/camera/Device;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/Device;->mPreviewSurfaceRecieved:Z

    if-nez v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    invoke-interface {v0}, Lcom/motorola/camera/Device$DeviceCBInterface;->onDeviceConnected()V

    .line 853
    iput-object v2, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    .line 856
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "device: onDeviceConnected: caller notify complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->previewUpdated()V

    .line 859
    iput-boolean v4, p0, Lcom/motorola/camera/Device;->mResetRequired:Z

    .line 861
    iget-boolean v0, p0, Lcom/motorola/camera/Device;->taskCancelled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/Device;->mPreviewSurfaceRecieved:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 862
    new-instance v0, Lcom/motorola/camera/Device$PreviewDisplayOperation;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/Device$PreviewDisplayOperation;-><init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/SurfaceHolder;

    iget-object v3, p0, Lcom/motorola/camera/Device;->mTempHolder:Landroid/view/SurfaceHolder;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Device$PreviewDisplayOperation;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/Device;->mPreviewDisplayAsync:Landroid/os/AsyncTask;

    .line 865
    :cond_2
    return-void
.end method

.method private onSetupParametersComplete()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 840
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraDevice"

    const-string v2, "onSetupParametersComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_0
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->initCameraComplete()V

    .line 842
    iget-boolean v1, p0, Lcom/motorola/camera/Device;->taskCancelled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 843
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraDevice"

    const-string v2, "StartPreviewOperation started from onSetupParametersComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_1
    new-instance v1, Lcom/motorola/camera/Device$StartPreviewOperation;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/Device$StartPreviewOperation;-><init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/Device$StartPreviewOperation;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/Device;->mStartPreviewTask:Landroid/os/AsyncTask;

    .line 846
    :cond_2
    return-void
.end method

.method private declared-synchronized openCamera()Landroid/hardware/Camera;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/CameraHardwareException;,
            Lcom/motorola/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 318
    :try_start_1
    iget-object v3, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->reconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :try_start_2
    iget v3, p0, Lcom/motorola/camera/Device;->mCameraId:I

    iget v4, p0, Lcom/motorola/camera/Device;->mNewCameraID:I

    if-eq v3, v4, :cond_1

    .line 326
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCameraDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releasing camera: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/camera/Device;->mCameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/camera/Device;->setEnvCallback(Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;)V

    .line 328
    invoke-virtual {p0}, Lcom/motorola/camera/Device;->stopPreview()V

    .line 329
    iget-object v3, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 332
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/motorola/camera/AppSettings;->setDeviceParameters(Landroid/hardware/Camera$Parameters;)V

    .line 333
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    .line 334
    const/4 v3, -0x1

    iput v3, p0, Lcom/motorola/camera/Device;->mCameraId:I

    .line 340
    :cond_1
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 342
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 343
    new-instance v2, Lcom/motorola/camera/CameraDisabledException;

    invoke-direct {v2}, Lcom/motorola/camera/CameraDisabledException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 321
    const-string v2, "MotoCameraDevice"

    const-string v3, "reconnect failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2
    new-instance v2, Lcom/motorola/camera/CameraHardwareException;

    invoke-direct {v2, v1}, Lcom/motorola/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 346
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_a

    .line 347
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/camera/Device;->mResetRequired:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    :try_start_4
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "MotoCameraDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/camera/Device;->mNewCameraID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_4
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 352
    :cond_5
    iget v3, p0, Lcom/motorola/camera/Device;->mNewCameraID:I

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    .line 353
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 355
    :cond_6
    iget v3, p0, Lcom/motorola/camera/Device;->mNewCameraID:I

    iput v3, p0, Lcom/motorola/camera/Device;->mCameraId:I

    .line 356
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "MotoCameraDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open camera success, id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/camera/Device;->mCameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_7
    iget-object v3, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 360
    :try_start_5
    const-string v3, "com.motorola.android.camera.CameraMotExt"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 361
    new-instance v3, Lcom/motorola/android/camera/CameraMotExt;

    iget-object v4, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v3, v4}, Lcom/motorola/android/camera/CameraMotExt;-><init>(Landroid/hardware/Camera;)V

    iput-object v3, p0, Lcom/motorola/camera/Device;->mMotCameraDevice:Lcom/motorola/android/camera/CameraMotExt;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 371
    :cond_8
    :goto_0
    :try_start_6
    invoke-direct {p0}, Lcom/motorola/camera/Device;->resetListeners()V

    .line 372
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->GET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 373
    :cond_9
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/camera/Device;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iget v5, p0, Lcom/motorola/camera/Device;->mCameraId:I

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/AppSettings;->initDeviceParameter(Landroid/hardware/Camera$Parameters;I)V

    .line 374
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->GET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 377
    :cond_a
    iget v3, p0, Lcom/motorola/camera/Device;->mCameraId:I

    if-eq v3, v6, :cond_b

    .line 378
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/Device;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    iget v5, p0, Lcom/motorola/camera/Device;->mCameraId:I

    aget-object v4, v4, v5

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v2, :cond_d

    :goto_1
    invoke-virtual {v3, v2}, Lcom/motorola/camera/BlurCheckin;->setFrontCameraUsed(Z)V

    .line 381
    :cond_b
    iget-object v2, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v2

    .line 362
    :catch_1
    move-exception v1

    .line 363
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :try_start_7
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "MotoCameraDevice"

    const-string v4, "MotCameraDevice interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 365
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 366
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_8
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "MotoCameraDevice"

    const-string v3, "fail to connect Camera"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    :cond_c
    new-instance v2, Lcom/motorola/camera/CameraHardwareException;

    invoke-direct {v2, v1}, Lcom/motorola/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 378
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_d
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    .line 719
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraDevice"

    const-string v1, "releaseMediaRecorder - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/Device;->mMediaRecordStopAndReleaseObject:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_3

    .line 722
    iget-object v0, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 723
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 725
    iget-object v0, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 726
    iget-object v0, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 727
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 728
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 729
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 730
    iget-object v0, p0, Lcom/motorola/camera/Device;->mMotCameraDevice:Lcom/motorola/android/camera/CameraMotExt;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->isShutterToneEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 731
    iget-object v0, p0, Lcom/motorola/camera/Device;->mMotCameraDevice:Lcom/motorola/android/camera/CameraMotExt;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/android/camera/CameraMotExt;->enableShutterSound(I)V

    .line 734
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/Device;->mMediaRecordStopAndReleaseObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 735
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCameraDevice"

    const-string v1, "releaseMediaRecorder - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_4
    return-void

    .line 735
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private resetListeners()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 389
    :cond_0
    return-void
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, ex:Ljava/io/IOException;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraDevice"

    const-string v2, "fail to setPreview Display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    :cond_0
    new-instance v1, Lcom/motorola/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/motorola/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupCameraParameters()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 228
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraDevice"

    const-string v1, "setupCameraParameters - device not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->parametersUpdate()V

    .line 233
    invoke-virtual {p0}, Lcom/motorola/camera/Device;->updateCameraParameters()V

    .line 236
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->parametersUpdate()V

    .line 237
    invoke-virtual {p0}, Lcom/motorola/camera/Device;->updateCameraParameters()V

    goto :goto_0
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 816
    :cond_0
    return-void
.end method

.method public autoFocus(Lcom/motorola/camera/Device$FocusResultListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/motorola/camera/Device;->mFocusResultListener:Lcom/motorola/camera/Device$FocusResultListener;

    .line 573
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/camera/Device;->mAutoFocusCallback:Lcom/motorola/camera/Device$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 574
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 581
    :cond_0
    return-void
.end method

.method public closeCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 452
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCameraDevice"

    const-string v3, "CloseCamera - Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/camera/Device;->taskCancelled:Z

    .line 456
    iget-object v2, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 466
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/motorola/camera/Device;->cancelAllAsyncTasks()V

    .line 468
    iget-object v2, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    .line 470
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 477
    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/motorola/camera/Device;->setEnvCallback(Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;)V

    .line 478
    invoke-virtual {p0}, Lcom/motorola/camera/Device;->stopPreview()V

    .line 479
    iget-object v2, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 480
    iput-object v4, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    .line 483
    :cond_3
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MotoCameraDevice"

    const-string v3, "CloseCamera - Exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_4
    return-void

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, ex:Ljava/lang/InterruptedException;
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCameraDevice"

    const-string v3, "Connected Device Interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 463
    .local v1, ex:Ljava/util/concurrent/ExecutionException;
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCameraDevice"

    const-string v3, "Connect Device task Excecution failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    .end local v1           #ex:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 472
    .local v0, e:Ljava/io/IOException;
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 473
    const-string v2, "MotoCameraDevice"

    const-string v3, "reconnect failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public connectDevice(Lcom/motorola/camera/Device$DeviceCBInterface;)V
    .locals 4
    .parameter "cb"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 174
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "device: start connect device async task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    .line 176
    iput-boolean v2, p0, Lcom/motorola/camera/Device;->taskCancelled:Z

    .line 177
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/Device;->mCameraId:I

    iget v1, p0, Lcom/motorola/camera/Device;->mNewCameraID:I

    if-eq v0, v1, :cond_5

    .line 178
    :cond_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_OPEN_TASK_RUNTIME:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 180
    :cond_2
    new-instance v0, Lcom/motorola/camera/Device$ConnectDeviceOperation;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/Device$ConnectDeviceOperation;-><init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Device$ConnectDeviceOperation;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    .line 190
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCameraKPI"

    const-string v1, "device: done starting connect device async task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_4
    return-void

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 182
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->hasPreviewSizeChanged()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/motorola/camera/Device;->mResetRequired:Z

    if-eqz v0, :cond_7

    .line 184
    :cond_6
    new-instance v0, Lcom/motorola/camera/Device$SetCameraParameters;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/Device$SetCameraParameters;-><init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Device$SetCameraParameters;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/Device;->mSetParametersTask:Landroid/os/AsyncTask;

    goto :goto_0

    .line 186
    :cond_7
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "MotoCameraDevice"

    const-string v1, "StartPreviewOperation started from connectDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_8
    new-instance v0, Lcom/motorola/camera/Device$StartPreviewOperation;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/Device$StartPreviewOperation;-><init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Device$StartPreviewOperation;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/Device;->mStartPreviewTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getDisplayOrientation()I
    .locals 5

    .prologue
    .line 531
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->getRotation()I

    move-result v2

    .line 532
    .local v2, rotation:I
    const/4 v0, 0x0

    .line 533
    .local v0, degrees:I
    packed-switch v2, :pswitch_data_0

    .line 548
    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/Device;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    iget v4, p0, Lcom/motorola/camera/Device;->mCameraId:I

    aget-object v3, v3, v4

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 549
    iget-object v3, p0, Lcom/motorola/camera/Device;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    iget v4, p0, Lcom/motorola/camera/Device;->mCameraId:I

    aget-object v3, v3, v4

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v1, v3, 0x168

    .line 550
    .local v1, result:I
    rsub-int v3, v1, 0x168

    rem-int/lit16 v1, v3, 0x168

    .line 554
    :goto_1
    return v1

    .line 535
    .end local v1           #result:I
    :pswitch_0
    const/4 v0, 0x0

    .line 536
    goto :goto_0

    .line 538
    :pswitch_1
    const/16 v0, 0x5a

    .line 539
    goto :goto_0

    .line 541
    :pswitch_2
    const/16 v0, 0xb4

    .line 542
    goto :goto_0

    .line 544
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 552
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/Device;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    iget v4, p0, Lcom/motorola/camera/Device;->mCameraId:I

    aget-object v3, v3, v4

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v1, v3, 0x168

    .restart local v1       #result:I
    goto :goto_1

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public isBackCamera()Z
    .locals 3

    .prologue
    .line 566
    iget v1, p0, Lcom/motorola/camera/Device;->mCameraId:I

    iget v2, p0, Lcom/motorola/camera/Device;->mBackCameraId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 567
    .local v0, result:Z
    :goto_0
    return v0

    .line 566
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 884
    const-string v1, "MotoCameraDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-direct {p0}, Lcom/motorola/camera/Device;->releaseMediaRecorder()V

    .line 886
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/Device;->taskCancelled:Z

    .line 888
    iget-object v1, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 898
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/motorola/camera/Device;->cancelAllAsyncTasks()V

    .line 900
    iget-object v1, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 901
    iget-object v1, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 902
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    .line 904
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/Device;->mDeviceErrorListener:Lcom/motorola/camera/Device$DeviceErrorListener;

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/motorola/camera/states/StateModeInterfaceData;->getErrorMsgId(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/motorola/camera/Device$DeviceErrorListener;->onError(I)V

    .line 905
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, ex:Ljava/lang/InterruptedException;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraDevice"

    const-string v2, "Connected Device Interrupted."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 894
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 895
    .local v0, ex:Ljava/util/concurrent/ExecutionException;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraDevice"

    const-string v2, "Connect Device task Excecution failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 908
    const-string v0, "MotoCameraDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-direct {p0}, Lcom/motorola/camera/Device;->releaseMediaRecorder()V

    .line 912
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 797
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraDevice"

    const-string v1, "recieved first preview frame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 801
    return-void
.end method

.method public prepareRecorder(Ljava/lang/String;ILandroid/location/Location;Landroid/media/MediaRecorder$OnInfoListener;)Z
    .locals 10
    .parameter "filename"
    .parameter "orientation"
    .parameter "location"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 623
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MotoCameraDevice"

    const-string v6, "prepareRecorder - Enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 627
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMotCameraDevice:Lcom/motorola/android/camera/CameraMotExt;

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/AppSettings;->isShutterToneEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 628
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMotCameraDevice:Lcom/motorola/android/camera/CameraMotExt;

    invoke-virtual {v5, v4}, Lcom/motorola/android/camera/CameraMotExt;->enableShutterSound(I)V

    .line 631
    :cond_1
    iget-object v5, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->unlock()V

    .line 632
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 634
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/AppSettings;->isTimeLapseMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 635
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 637
    :cond_2
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 640
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/AppSettings;->getMediaRecorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 643
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/AppSettings;->isTimeLapseMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 645
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/AppSettings;->getChannelsForAudioScene()I

    move-result v0

    .line 646
    .local v0, channelsInAudioScene:I
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/AppSettings;->getMediaRecorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v5

    iget v1, v5, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 652
    .local v1, channelsInProfile:I
    if-gt v0, v1, :cond_4

    .line 653
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "MotoCameraDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "overriding audio channels: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_3
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/AppSettings;->setAudioManagerSceneMode()V

    .line 656
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 661
    .end local v0           #channelsInAudioScene:I
    .end local v1           #channelsInProfile:I
    :cond_4
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "MotoCameraDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mediaRecorder output file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_5
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 665
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/AppSettings;->isTimeLapseMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 666
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v6, 0x408f400000000000L

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/camera/AppSettings;->getTimeBetweenTimeLapseCaptureMS()J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 671
    :cond_6
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/motorola/camera/Device;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 675
    :try_start_0
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, p2}, Landroid/media/MediaRecorder;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_7
    :goto_0
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/AppSettings;->getRecordingDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 683
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/AppSettings;->getVideoFilesize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 686
    if-eqz p3, :cond_8

    .line 688
    :try_start_1
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaRecorder;->setLocation(FF)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 695
    :cond_8
    :goto_1
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "MotoCameraKPI"

    const-string v6, "start Mediarecorder.prepare"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_9
    :try_start_2
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 698
    :cond_a
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V

    .line 699
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 700
    :cond_b
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, p4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 701
    iget-object v5, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 712
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "MotoCameraKPI"

    const-string v5, "done Mediarecorder.prepare"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_c
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "MotoCameraDevice"

    const-string v5, "prepareRecorder - Exit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_d
    :goto_2
    return v3

    .line 676
    :catch_0
    move-exception v2

    .line 677
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 678
    const-string v5, "MotoCameraDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mediaRecorder does not support orientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 691
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "MotoCameraDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 702
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 703
    .local v2, e:Ljava/lang/IllegalStateException;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_e

    const-string v3, "MotoCameraDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException preparing MediaRecorder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_e
    invoke-direct {p0}, Lcom/motorola/camera/Device;->releaseMediaRecorder()V

    move v3, v4

    .line 705
    goto :goto_2

    .line 706
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v2

    .line 707
    .local v2, e:Ljava/io/IOException;
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_f

    const-string v3, "MotoCameraDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException preparing MediaRecorder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_f
    invoke-direct {p0}, Lcom/motorola/camera/Device;->releaseMediaRecorder()V

    move v3, v4

    .line 709
    goto/16 :goto_2
.end method

.method public resetRequired(Z)V
    .locals 0
    .parameter "reset"

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/motorola/camera/Device;->mResetRequired:Z

    .line 419
    return-void
.end method

.method public setDisplayOrientation()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/motorola/camera/Device;->getDisplayOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 559
    return-void
.end method

.method public setEnvCallback(Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCDAsyncTask:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Device;->isTaskRunning(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/Device;->mMotCameraDevice:Lcom/motorola/android/camera/CameraMotExt;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getDeviceParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->isEnvironmentalSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/motorola/camera/Device;->mMotCameraDevice:Lcom/motorola/android/camera/CameraMotExt;

    invoke-virtual {v0, p1}, Lcom/motorola/android/camera/CameraMotExt;->setEnvDetectCallback(Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;)V

    .line 497
    :cond_0
    return-void
.end method

.method public setErrorListener(Lcom/motorola/camera/Device$DeviceErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/motorola/camera/Device;->mDeviceErrorListener:Lcom/motorola/camera/Device$DeviceErrorListener;

    .line 303
    return-void
.end method

.method public setFaceDetectionListener(Lcom/motorola/camera/Device$FacesDetectedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/motorola/camera/Device;->mFacesDetectedListener:Lcom/motorola/camera/Device$FacesDetectedListener;

    .line 600
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/camera/Device;->mFaceDetectionListener:Lcom/motorola/camera/Device$FaceDetectionListener;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 603
    :cond_0
    return-void
.end method

.method protected setParameters()V
    .locals 2

    .prologue
    .line 269
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getDeviceParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 271
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 272
    :cond_1
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 806
    :cond_0
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 811
    :cond_0
    return-void
.end method

.method public setStopPreviewListener(Lcom/motorola/camera/Device$StopPreviewListener;)V
    .locals 0
    .parameter "stopPreviewListener"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/motorola/camera/Device;->mStopPreviewListener:Lcom/motorola/camera/Device$StopPreviewListener;

    .line 254
    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;Lcom/motorola/camera/Device$DeviceCBInterface;)V
    .locals 1
    .parameter "holder"
    .parameter "cb"

    .prologue
    .line 408
    iput-object p2, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    .line 409
    iput-object p1, p0, Lcom/motorola/camera/Device;->mTempHolder:Landroid/view/SurfaceHolder;

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/Device;->mPreviewSurfaceRecieved:Z

    .line 411
    return-void
.end method

.method public startFaceDetection()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 588
    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->START_PREVIEW:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 282
    :cond_2
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCameraDevice"

    const-string v1, "device startPreview called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 285
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 286
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 288
    :cond_4
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "MotoCameraDevice"

    const-string v1, "device startPreview returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_5
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->START_PREVIEW:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_0
.end method

.method public startRecorder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/CameraOperationException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/Device;->mRecordingStartTime:J

    .line 749
    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_START:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 751
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_START:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :cond_1
    return-void

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/motorola/camera/Device;->releaseMediaRecorder()V

    .line 754
    new-instance v1, Lcom/motorola/camera/CameraOperationException;

    invoke-direct {v1, v0}, Lcom/motorola/camera/CameraOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 394
    :cond_0
    return-void
.end method

.method public stopFaceDetection()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 595
    :cond_0
    return-void
.end method

.method public stopMediaRecorderThread()V
    .locals 5

    .prologue
    .line 433
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraDevice"

    const-string v2, "stopMediaRecorderThread - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/Device;->mMediaRecordStopAndReleaseObject:Ljava/lang/Object;

    monitor-enter v2

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_2

    .line 436
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraDevice"

    const-string v3, "waiting on mMediaRecordStopAndReleaseObject"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/Device;->mMediaRecordStopAndReleaseObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCameraDevice"

    const-string v2, "stopMediaRecorderThread - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_3
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "MotoCameraDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception waiting on mMediaRecordStopAndReleaseObject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 423
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraDevice"

    const-string v1, "StopPreview - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Device;->mStopPreviewListener:Lcom/motorola/camera/Device$StopPreviewListener;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/motorola/camera/Device;->mStopPreviewListener:Lcom/motorola/camera/Device$StopPreviewListener;

    invoke-interface {v0}, Lcom/motorola/camera/Device$StopPreviewListener;->onStopPreviewCalled()V

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 428
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCameraDevice"

    const-string v1, "StopPreview - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_2
    return-void
.end method

.method public stopRecorder(Lcom/motorola/camera/Device$DeviceCBInterface;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 769
    if-eqz p1, :cond_0

    .line 770
    iput-object p1, p0, Lcom/motorola/camera/Device;->mCaller:Lcom/motorola/camera/Device$DeviceCBInterface;

    .line 773
    :cond_0
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCameraDevice"

    const-string v3, "stopRecorder started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_1
    new-instance v1, Lcom/motorola/camera/Device$StopMediaRecorderThread;

    iget-object v2, p0, Lcom/motorola/camera/Device;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Device$StopMediaRecorderThread;-><init>(Lcom/motorola/camera/Device;Landroid/media/MediaRecorder;)V

    .line 777
    .local v1, runner:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/motorola/camera/Device;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/Device;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 778
    :cond_2
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/Device;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 782
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/Device;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 791
    :goto_0
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MotoCameraDevice"

    const-string v3, "stopRecorder finished"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_4
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    const-string v2, "MotoCameraDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error executing StopMediaRecorder runnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 787
    .end local v0           #e:Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v0

    .line 788
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "MotoCameraDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error executing StopMediaRecorder runnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopSmoothZoom()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 399
    :cond_0
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 0

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/motorola/camera/Device;->stopPreview()V

    .line 415
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Lcom/motorola/camera/modes/RawPictureCallback;Lcom/motorola/camera/modes/PostViewPictureCallback;Lcom/motorola/camera/modes/JpegPictureCallback;)V
    .locals 2
    .parameter "shutterCallback"
    .parameter "rawPictureCallback"
    .parameter "postViewPictureCallback"
    .parameter "jpegPictureCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/CameraOperationException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->isShutterToneEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    const/4 p1, 0x0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/Device;->setParameters()V

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/Device;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/RuntimeException;
    new-instance v1, Lcom/motorola/camera/CameraOperationException;

    invoke-direct {v1, v0}, Lcom/motorola/camera/CameraOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toggleCamera()V
    .locals 2

    .prologue
    .line 562
    iget v0, p0, Lcom/motorola/camera/Device;->mCameraId:I

    iget v1, p0, Lcom/motorola/camera/Device;->mBackCameraId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/Device;->mFrontCameraId:I

    :goto_0
    iput v0, p0, Lcom/motorola/camera/Device;->mNewCameraID:I

    .line 563
    return-void

    .line 562
    :cond_0
    iget v0, p0, Lcom/motorola/camera/Device;->mBackCameraId:I

    goto :goto_0
.end method

.method public unsetFaceDetectionListener(Lcom/motorola/camera/Device$FacesDetectedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/motorola/camera/Device;->mFacesDetectedListener:Lcom/motorola/camera/Device$FacesDetectedListener;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/motorola/camera/Device;->mFacesDetectedListener:Lcom/motorola/camera/Device$FacesDetectedListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/Device;->mFacesDetectedListener:Lcom/motorola/camera/Device$FacesDetectedListener;

    .line 613
    :cond_0
    return-void
.end method

.method public updateCameraParameters()V
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/motorola/camera/Device;->setParameters()V

    .line 245
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->GET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 246
    :cond_0
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/Device;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->setDeviceParameters(Landroid/hardware/Camera$Parameters;)V

    .line 247
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->GET_PARAMS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 248
    :cond_1
    return-void
.end method
