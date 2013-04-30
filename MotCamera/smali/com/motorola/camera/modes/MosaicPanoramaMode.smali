.class public Lcom/motorola/camera/modes/MosaicPanoramaMode;
.super Lcom/motorola/camera/modes/PanoramaMode;
.source "MosaicPanoramaMode.java"

# interfaces
.implements Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;,
        Lcom/motorola/camera/modes/MosaicPanoramaMode$FrameProcessor;,
        Lcom/motorola/camera/modes/MosaicPanoramaMode$GetPreviewMosaicTask;
    }
.end annotation


# static fields
.field private static final PREFERRED_4_3_ASPECT_RATIO:Z = false

.field private static final PREFERRED_CAPTURE_PIXELS:I = 0xe1000

.field private static final PREFERRED_PREVIEW_HEIGHT:I = 0x2d0

.field private static final PREFERRED_PREVIEW_WIDTH:I = 0x500

.field private static final PREVIEW_CALLBACK_BUFFER_COUNT:I = 0x5

.field private static final PROCESS_FRAME_MODULUS:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFrameCounter:J

.field private mFrameProcessThread:Ljava/lang/Thread;

.field private final mFrameQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalViewAngle:F

.field private mMeasureFrames:Lcom/motorola/camera/modes/panorama/MeasureFrames;

.field private mMosaicFrameProcessorInitialized:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSaveHiResMosaicTask:Lcom/motorola/camera/modes/panorama/SaveMosaicTask;

.field private mTimeTaken:J

.field private mVerticalViewAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/motorola/camera/modes/MosaicPanoramaMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lcom/motorola/camera/modes/PanoramaMode;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mMosaicFrameProcessorInitialized:Z

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameCounter:J

    .line 66
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    .line 67
    iput-object v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mSaveHiResMosaicTask:Lcom/motorola/camera/modes/panorama/SaveMosaicTask;

    .line 68
    iput-object v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameProcessThread:Ljava/lang/Thread;

    .line 71
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/modes/MosaicPanoramaMode$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/modes/MosaicPanoramaMode$1;-><init>(Lcom/motorola/camera/modes/MosaicPanoramaMode;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/camera/modes/MosaicPanoramaMode;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/camera/modes/MosaicPanoramaMode;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/camera/modes/MosaicPanoramaMode;ZFFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->sendViewFinderInfo(ZFFFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/camera/modes/MosaicPanoramaMode;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameCounter:J

    return-wide v0
.end method

.method static synthetic access$408(Lcom/motorola/camera/modes/MosaicPanoramaMode;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameCounter:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/motorola/camera/modes/MosaicPanoramaMode;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/camera/modes/MosaicPanoramaMode;)Lcom/motorola/camera/modes/panorama/MeasureFrames;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mMeasureFrames:Lcom/motorola/camera/modes/panorama/MeasureFrames;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/camera/modes/MosaicPanoramaMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->saveHighResMosaic()V

    return-void
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mMosaicFrameProcessorInitialized:Z

    .line 216
    :cond_0
    return-void
.end method

.method private static findBestPreviewSize(Ljava/util/List;ZZLandroid/graphics/Point;)Z
    .locals 9
    .parameter
    .parameter "need4To3"
    .parameter "needSmaller"
    .parameter "newValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ",
            "Landroid/graphics/Point;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v4, 0xe1000

    .line 243
    .local v4, pixelsDiff:I
    const/4 v2, 0x0

    .line 244
    .local v2, hasFound:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 245
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 246
    .local v1, h:I
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    .line 248
    .local v6, w:I
    const v7, 0xe1000

    mul-int v8, v1, v6

    sub-int v0, v7, v8

    .line 249
    .local v0, d:I
    if-eqz p2, :cond_1

    if-ltz v0, :cond_0

    .line 252
    :cond_1
    if-eqz p1, :cond_2

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v6, 0x3

    if-ne v7, v8, :cond_0

    .line 255
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 256
    if-ge v0, v4, :cond_0

    .line 257
    invoke-virtual {p3, v6, v1}, Landroid/graphics/Point;->set(II)V

    .line 258
    move v4, v0

    .line 259
    const/4 v2, 0x1

    goto :goto_0

    .line 262
    .end local v0           #d:I
    .end local v1           #h:I
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #w:I
    :cond_3
    return v2
.end method

.method private getPreviewBufSize()I
    .locals 3

    .prologue
    .line 284
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 285
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getDeviceParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 288
    iget v1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mPreviewWidth:I

    iget v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method private getPreviewMosaic()V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Lcom/motorola/camera/modes/MosaicPanoramaMode$GetPreviewMosaicTask;

    iget-object v1, p0, Lcom/motorola/camera/modes/PanoramaMode;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/modes/MosaicPanoramaMode$GetPreviewMosaicTask;-><init>(Lcom/motorola/camera/modes/MosaicPanoramaMode;Lcom/motorola/camera/PanoramaManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/modes/MosaicPanoramaMode$GetPreviewMosaicTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mMosaicFrameProcessorInitialized:Z

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mPreviewWidth:I

    iget v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mPreviewHeight:I

    invoke-direct {p0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->getPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/MosaicFrameProcessor;->initialize(III)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mMosaicFrameProcessorInitialized:Z

    .line 224
    :cond_0
    return-void
.end method

.method private saveHighResMosaic()V
    .locals 7

    .prologue
    .line 305
    new-instance v6, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;

    new-instance v0, Lcom/motorola/camera/modes/panorama/ExifInfo;

    iget-object v1, p0, Lcom/motorola/camera/modes/AbstractMode;->mStorageLocation:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedLocation:Landroid/location/Location;

    iget v3, p0, Lcom/motorola/camera/modes/AbstractMode;->mCapturedOrientation:I

    iget-wide v4, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mTimeTaken:J

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/modes/panorama/ExifInfo;-><init>(Ljava/lang/String;Landroid/location/Location;IJ)V

    iget-object v1, p0, Lcom/motorola/camera/modes/PanoramaMode;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    invoke-direct {v6, v0, v1, p0}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;-><init>(Lcom/motorola/camera/modes/panorama/ExifInfo;Lcom/motorola/camera/PanoramaManager;Lcom/motorola/camera/modes/panorama/SaveMosaicTask$SaveMosaicTaskListener;)V

    iput-object v6, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mSaveHiResMosaicTask:Lcom/motorola/camera/modes/panorama/SaveMosaicTask;

    .line 308
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mSaveHiResMosaicTask:Lcom/motorola/camera/modes/panorama/SaveMosaicTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 309
    return-void
.end method

.method private sendViewFinderInfo(ZFFFF)V
    .locals 3
    .parameter "aborted"
    .parameter "accHorizontalAngle"
    .parameter "accVerticalAngle"
    .parameter "xPanningRate"
    .parameter "yPanningRate"

    .prologue
    .line 228
    iget-object v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 229
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "aborted"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    const-string v2, "progressX"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 232
    const-string v2, "progressY"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 233
    const-string v2, "panningRateX"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 234
    const-string v2, "panningRateY"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 235
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 236
    iget-object v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    return-void
.end method

.method public static setupPanoramaParams(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "parameters"

    .prologue
    const/4 v5, 0x0

    .line 266
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 267
    sget-object v3, Lcom/motorola/camera/modes/MosaicPanoramaMode;->TAG:Ljava/lang/String;

    const-string v4, "setupPanoramaParams"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 271
    .local v1, ok:Z
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 274
    .local v0, newSize:Landroid/graphics/Point;
    if-nez v1, :cond_1

    .line 275
    const/4 v3, 0x1

    invoke-static {v2, v5, v3, v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->findBestPreviewSize(Ljava/util/List;ZZLandroid/graphics/Point;)Z

    move-result v1

    .line 276
    :cond_1
    if-nez v1, :cond_2

    .line 277
    invoke-static {v2, v5, v5, v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->findBestPreviewSize(Ljava/util/List;ZZLandroid/graphics/Point;)Z

    move-result v1

    .line 279
    :cond_2
    sget-object v3, Lcom/motorola/camera/modes/MosaicPanoramaMode;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preview h = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , w = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 281
    return-void
.end method


# virtual methods
.method public capture()V
    .locals 4

    .prologue
    .line 92
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lcom/motorola/camera/modes/MosaicPanoramaMode;->TAG:Ljava/lang/String;

    const-string v2, "capture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getDeviceParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mHorizontalViewAngle:F

    .line 96
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getDeviceParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mVerticalViewAngle:F

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mTimeTaken:J

    .line 99
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/modes/MosaicPanoramaMode$2;

    invoke-direct {v2, p0}, Lcom/motorola/camera/modes/MosaicPanoramaMode$2;-><init>(Lcom/motorola/camera/modes/MosaicPanoramaMode;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 125
    new-instance v1, Lcom/motorola/camera/modes/panorama/MeasureFrames;

    invoke-direct {v1}, Lcom/motorola/camera/modes/panorama/MeasureFrames;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mMeasureFrames:Lcom/motorola/camera/modes/panorama/MeasureFrames;

    .line 127
    const-wide/16 v1, 0x3

    iput-wide v1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameCounter:J

    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 131
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->getPreviewBufSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/motorola/camera/Device;->addCallbackBuffer([B)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/motorola/camera/modes/MosaicPanoramaMode$FrameProcessor;

    iget-object v3, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/modes/MosaicPanoramaMode$FrameProcessor;-><init>(Lcom/motorola/camera/modes/MosaicPanoramaMode;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameProcessThread:Ljava/lang/Thread;

    .line 134
    iget-object v1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameProcessThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 136
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/modes/MosaicPanoramaMode$3;

    invoke-direct {v2, p0}, Lcom/motorola/camera/modes/MosaicPanoramaMode$3;-><init>(Lcom/motorola/camera/modes/MosaicPanoramaMode;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/Device;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 150
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 151
    sget-object v1, Lcom/motorola/camera/modes/MosaicPanoramaMode;->TAG:Ljava/lang/String;

    const-string v2, "capture end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    invoke-super {p0}, Lcom/motorola/camera/modes/PanoramaMode;->capture()V

    .line 154
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 176
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->TAG:Ljava/lang/String;

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mSaveHiResMosaicTask:Lcom/motorola/camera/modes/panorama/SaveMosaicTask;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mSaveHiResMosaicTask:Lcom/motorola/camera/modes/panorama/SaveMosaicTask;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/panorama/SaveMosaicTask;->cancelProcessing()V

    .line 183
    :goto_0
    invoke-super {p0}, Lcom/motorola/camera/modes/PanoramaMode;->cleanup()V

    .line 184
    return-void

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->clearMosaicFrameProcessorIfNeeded()V

    goto :goto_0
.end method

.method public cleanupForModeSwitch()V
    .locals 2

    .prologue
    .line 204
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->TAG:Ljava/lang/String;

    const-string v1, "cleanupForModeSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->clearMosaicFrameProcessorIfNeeded()V

    .line 208
    invoke-super {p0}, Lcom/motorola/camera/modes/PanoramaMode;->cleanupForModeSwitch()V

    .line 209
    return-void
.end method

.method public onCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 313
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->notifyClient(IIILjava/lang/Object;)V

    .line 314
    invoke-direct {p0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->clearMosaicFrameProcessorIfNeeded()V

    .line 315
    iput-object v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mSaveHiResMosaicTask:Lcom/motorola/camera/modes/panorama/SaveMosaicTask;

    .line 316
    return-void
.end method

.method public onDeviceConnected()V
    .locals 4

    .prologue
    .line 188
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 189
    sget-object v2, Lcom/motorola/camera/modes/MosaicPanoramaMode;->TAG:Ljava/lang/String;

    const-string v3, "onDeviceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/modes/PanoramaMode;->onDeviceConnected()V

    .line 193
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getDeviceParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 194
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 195
    .local v1, previewSize:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iput v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mPreviewHeight:I

    .line 196
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mPreviewWidth:I

    .line 198
    invoke-direct {p0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->initMosaicFrameProcessorIfNeeded()V

    .line 199
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 200
    return-void
.end method

.method public onFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->notifyClient(IIILjava/lang/Object;)V

    .line 321
    iput-object v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mSaveHiResMosaicTask:Lcom/motorola/camera/modes/panorama/SaveMosaicTask;

    .line 322
    return-void
.end method

.method public startInit(Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->TAG:Ljava/lang/String;

    const-string v1, "startInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/motorola/camera/modes/PanoramaMode;->startInit(Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;)V

    .line 88
    return-void
.end method

.method public stopCapture(Z)V
    .locals 6
    .parameter "aborted"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 158
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopCapture aborted:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameProcessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 162
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/Device;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 163
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 164
    if-nez p1, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->getPreviewMosaic()V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_1
    const/4 v1, 0x1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->sendViewFinderInfo(ZFFFF)V

    .line 170
    invoke-super {p0, p1}, Lcom/motorola/camera/modes/PanoramaMode;->stopCapture(Z)V

    goto :goto_0
.end method
