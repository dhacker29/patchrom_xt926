.class public Lcom/motorola/camera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;
.implements Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;
.implements Lcom/motorola/camera/EnvFeedbackManager$FocusFeedback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/FocusManager$1;,
        Lcom/motorola/camera/FocusManager$FacesDetectedCallback;,
        Lcom/motorola/camera/FocusManager$StopPreviewListener;,
        Lcom/motorola/camera/FocusManager$FocusResultCallback;,
        Lcom/motorola/camera/FocusManager$MainHandler;,
        Lcom/motorola/camera/FocusManager$CAF_STATUS;,
        Lcom/motorola/camera/FocusManager$FOCUS_MODE;
    }
.end annotation


# static fields
.field private static final AUTO_FOCUS_COMPLETE:I = 0x2

.field public static final CAF_UPDATE_DATA:Ljava/lang/String; = "caf-update"

.field private static final CAPTURE_FOCUS_TIMEOUT:I = 0x7d0

.field private static final FACES_DETECTED:I = 0x4

.field private static final FINISH_CAPTURE_FOCUS:I = 0x1

.field private static final FOCUS_BRACKET_MDPI_SIZE:I = 0x50

.field public static final FOCUS_CHANGE:Ljava/lang/String; = "focus-change"

.field private static final LOW_LIGHT_DETECTED:I = 0x3

.field public static final LOW_LIGHT_UPDATE_DATA:Ljava/lang/String; = "low-light"

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "FocusManager"

.field public static mFocusIconResultTag:Ljava/lang/String;

.field public static mFocusIconUpdateTag:Ljava/lang/String;

.field public static mFocusIconUpdateVisibilityTag:Ljava/lang/String;

.field public static mFocusViewFacesTag:Ljava/lang/String;

.field public static mFocusViewSetAreaTag:Ljava/lang/String;

.field public static mFocusViewSetRegionTag:Ljava/lang/String;

.field public static mFocusViewUpdateAreaTag:Ljava/lang/String;

.field public static mFocusViewUpdateRegionTag:Ljava/lang/String;

.field public static mFocusViewUpdateTag:Ljava/lang/String;

.field public static mFocusViewUpdateVisibilityTag:Ljava/lang/String;

.field private static sFocusManager:Lcom/motorola/camera/FocusManager;


# instance fields
.field private volatile mCAFFailed:Z

.field private mCaptureState:Z

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mDeviceFaceInterface:Lcom/motorola/camera/DeviceFaceInterface;

.field private mFaceDetectMatrix:Landroid/graphics/Matrix;

.field private volatile mFaceDetectStarted:Z

.field private mFacesDetectedCallback:Lcom/motorola/camera/FocusManager$FacesDetectedCallback;

.field private mFocusArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusFailed:Z

.field private mFocusMode:Ljava/lang/String;

.field private mFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusResultCallback:Lcom/motorola/camera/FocusManager$FocusResultCallback;

.field private mFocusTone:Landroid/media/MediaPlayer;

.field private mFocusToneFd:Landroid/content/res/AssetFileDescriptor;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private volatile mLowLight:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mNumFaces:I

.field private mPreviewFrame:Landroid/view/View;

.field private mPreviewHeight:I

.field private mPreviewLeft:I

.field private volatile mPreviewRunning:Z

.field private mPreviewTop:I

.field private mPreviewWidth:I

.field private mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

.field private mStateCallback:Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;

.field private mStopPreviewListener:Lcom/motorola/camera/FocusManager$StopPreviewListener;

.field private mTapToFocusCount:I

.field private volatile mUpdateFaceUI:Z

.field private mVideoAutoFocusRegionRect:Landroid/graphics/Rect;

.field private mVideoAutoFocused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "FOCUS_VIEW_UPDATE"

    sput-object v0, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    .line 118
    const-string v0, "FOCUS_VIEW_SET_REGION"

    sput-object v0, Lcom/motorola/camera/FocusManager;->mFocusViewSetRegionTag:Ljava/lang/String;

    .line 119
    const-string v0, "FOCUS_VIEW_UPDATE_REGION"

    sput-object v0, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateRegionTag:Ljava/lang/String;

    .line 120
    const-string v0, "FOCUS_VIEW_SET_AREA"

    sput-object v0, Lcom/motorola/camera/FocusManager;->mFocusViewSetAreaTag:Ljava/lang/String;

    .line 121
    const-string v0, "FOCUS_VIEW_UPDATE_AREA"

    sput-object v0, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateAreaTag:Ljava/lang/String;

    .line 122
    const-string v0, "FOCUS_VIEW_UPDATE_VISIBILITY"

    sput-object v0, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateVisibilityTag:Ljava/lang/String;

    .line 123
    const-string v0, "FOCUS_ICON_UPDATE"

    sput-object v0, Lcom/motorola/camera/FocusManager;->mFocusIconUpdateTag:Ljava/lang/String;

    .line 124
    const-string v0, "FOCUS_ICON_UPDATE_RESULT"

    sput-object v0, Lcom/motorola/camera/FocusManager;->mFocusIconResultTag:Ljava/lang/String;

    .line 125
    const-string v0, "FOCUS_ICON_UPDATE_VISIBILITY"

    sput-object v0, Lcom/motorola/camera/FocusManager;->mFocusIconUpdateVisibilityTag:Ljava/lang/String;

    .line 126
    const-string v0, "FOCUS_VIEW_FACES"

    sput-object v0, Lcom/motorola/camera/FocusManager;->mFocusViewFacesTag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 240
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/motorola/camera/FocusManager;->mInitialized:Z

    .line 65
    iput-boolean v1, p0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    .line 86
    sget-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_IDLE:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mFaceDetectMatrix:Landroid/graphics/Matrix;

    .line 105
    iput-boolean v1, p0, Lcom/motorola/camera/FocusManager;->mFocusAreaSupported:Z

    .line 112
    new-instance v0, Lcom/motorola/camera/FocusManager$FocusResultCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/FocusManager$FocusResultCallback;-><init>(Lcom/motorola/camera/FocusManager;Lcom/motorola/camera/FocusManager$1;)V

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusResultCallback:Lcom/motorola/camera/FocusManager$FocusResultCallback;

    .line 113
    new-instance v0, Lcom/motorola/camera/FocusManager$StopPreviewListener;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/FocusManager$StopPreviewListener;-><init>(Lcom/motorola/camera/FocusManager;Lcom/motorola/camera/FocusManager$1;)V

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mStopPreviewListener:Lcom/motorola/camera/FocusManager$StopPreviewListener;

    .line 114
    new-instance v0, Lcom/motorola/camera/FocusManager$FacesDetectedCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/FocusManager$FacesDetectedCallback;-><init>(Lcom/motorola/camera/FocusManager;Lcom/motorola/camera/FocusManager$1;)V

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mFacesDetectedCallback:Lcom/motorola/camera/FocusManager$FacesDetectedCallback;

    .line 131
    iput-boolean v1, p0, Lcom/motorola/camera/FocusManager;->mLowLight:Z

    .line 241
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 242
    new-instance v0, Lcom/motorola/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/FocusManager$MainHandler;-><init>(Lcom/motorola/camera/FocusManager;Lcom/motorola/camera/FocusManager$1;)V

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 243
    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/camera/FocusManager;)Lcom/motorola/camera/FocusManager$FOCUS_MODE;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mUpdateFaceUI:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/motorola/camera/FocusManager;[Landroid/hardware/Camera$Face;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/motorola/camera/FocusManager;->updateFaceUI([Landroid/hardware/Camera$Face;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/motorola/camera/FocusManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/motorola/camera/FocusManager;->mNumFaces:I

    return p1
.end method

.method static synthetic access$1500(Lcom/motorola/camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mCAFFailed:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/motorola/camera/FocusManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/motorola/camera/FocusManager;->mFocusFailed:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/motorola/camera/FocusManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->resetFocusManager()V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->stopFaceDetect()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    return v0
.end method

.method static synthetic access$402(Lcom/motorola/camera/FocusManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    return p1
.end method

.method static synthetic access$500(Lcom/motorola/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->startFaceDetect()V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->capture()V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/camera/FocusManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/motorola/camera/FocusManager;->autoFocusComplete(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mPreviewRunning:Z

    return v0
.end method

.method static synthetic access$902(Lcom/motorola/camera/FocusManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/motorola/camera/FocusManager;->mPreviewRunning:Z

    return p1
.end method

.method private autoFocus(Z)V
    .locals 4
    .parameter "snapOnFinish"

    .prologue
    .line 622
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING_SNAP_ON_FINISH:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-ne v0, v1, :cond_3

    .line 627
    :cond_1
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus called on invalid state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_2
    :goto_0
    return-void

    .line 631
    :cond_3
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 632
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 635
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 636
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_4
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFocusResultCallback:Lcom/motorola/camera/FocusManager$FocusResultCallback;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Device;->autoFocus(Lcom/motorola/camera/Device$FocusResultListener;)V

    .line 638
    if-eqz p1, :cond_5

    .line 639
    sget-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING_SNAP_ON_FINISH:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 643
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 648
    :goto_2
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus finished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    :cond_5
    sget-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    goto :goto_1

    .line 646
    :cond_6
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFocusResultCallback:Lcom/motorola/camera/FocusManager$FocusResultCallback;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Device;->autoFocus(Lcom/motorola/camera/Device$FocusResultListener;)V

    goto :goto_2
.end method

.method private autoFocusComplete(Z)V
    .locals 18
    .parameter "focusState"

    .prologue
    .line 978
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 979
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoFocusComplete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v2, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING_SNAP_ON_FINISH:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-ne v1, v2, :cond_8

    .line 981
    if-eqz p1, :cond_3

    .line 982
    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_SUCCESS:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 983
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/FocusManager;->capture()V

    .line 1069
    :cond_1
    :goto_0
    const/4 v1, 0x3

    new-array v10, v1, [Z

    .line 1070
    .local v10, booleanArray:[Z
    const/4 v1, 0x0

    aput-boolean p1, v10, v1

    .line 1071
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v10, v1

    .line 1072
    const/4 v1, 0x2

    aput-boolean p1, v10, v1

    .line 1073
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1074
    .local v11, bundle:Landroid/os/Bundle;
    sget-object v1, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v2, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    sget-object v1, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateAreaTag:Ljava/lang/String;

    invoke-virtual {v11, v1, v10}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 1076
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1, v2, v11}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 1078
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoFocusComplete finished:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_2
    return-void

    .line 985
    .end local v10           #booleanArray:[Z
    .end local v11           #bundle:Landroid/os/Bundle;
    :cond_3
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 986
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FocusManager"

    const-string v2, "autoFocus failed before taking picture. Change mode to auto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_4
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFaceDetectStarted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/motorola/camera/FocusManager;->mFaceDetectStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_5
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/Device;->cancelAutoFocus()V

    .line 990
    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_IDLE:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/FocusManager;->stopFaceDetect()V

    .line 994
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    .line 995
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    .line 996
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    .line 998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    :cond_6
    const/4 v14, 0x0

    .line 1001
    .local v14, focusWidth:F
    const/4 v13, 0x0

    .line 1002
    .local v13, focusHeight:F
    const/4 v15, 0x0

    .line 1003
    .local v15, left:F
    const/16 v17, 0x0

    .line 1004
    .local v17, top:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v5, v1, 0x2

    .line 1005
    .local v5, newx:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v6, v1, 0x2

    .line 1007
    .local v6, newy:I
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v12, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1008
    .local v12, density:F
    const/high16 v1, 0x42a0

    mul-float v14, v1, v12

    .line 1009
    const/high16 v1, 0x42a0

    mul-float v13, v1, v12

    .line 1013
    float-to-int v2, v14

    float-to-int v3, v13

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/motorola/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 1015
    float-to-int v2, v14

    float-to-int v3, v13

    const/high16 v4, 0x3fc0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/motorola/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 1018
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/FocusManager;->mPreviewLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    float-to-int v2, v14

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/camera/FocusManager;->mPreviewLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/camera/FocusManager;->mPreviewLeft:I

    add-int/2addr v3, v4

    float-to-int v4, v14

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/motorola/camera/FocusManager;->clamp(III)I

    move-result v1

    int-to-float v15, v1

    .line 1020
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/FocusManager;->mPreviewTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    float-to-int v2, v13

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/camera/FocusManager;->mPreviewTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/camera/FocusManager;->mPreviewTop:I

    add-int/2addr v3, v4

    float-to-int v4, v13

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/motorola/camera/FocusManager;->clamp(III)I

    move-result v1

    int-to-float v0, v1

    move/from16 v17, v0

    .line 1023
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/motorola/camera/FocusManager;->mCAFFailed:Z

    .line 1025
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppSettings;->setFocusAreas(Ljava/util/ArrayList;)V

    .line 1026
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppSettings;->setMeteringAreas(Ljava/util/ArrayList;)V

    .line 1027
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppSettings;->setFocusMode(Ljava/lang/String;)V

    .line 1028
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/Device;->updateCameraParameters()V

    .line 1029
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/camera/FocusManager;->autoFocus(Z)V

    .line 1030
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoFocus again with focus mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1034
    .end local v5           #newx:I
    .end local v6           #newy:I
    .end local v12           #density:F
    .end local v13           #focusHeight:F
    .end local v14           #focusWidth:F
    .end local v15           #left:F
    .end local v17           #top:F
    :cond_7
    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FAIL:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 1035
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/FocusManager;->capture()V

    goto/16 :goto_0

    .line 1038
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v2, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-ne v1, v2, :cond_e

    .line 1042
    if-eqz p1, :cond_d

    .line 1043
    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_SUCCESS:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 1044
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->isShutterToneEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    if-nez v1, :cond_9

    .line 1045
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_c

    .line 1046
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 1058
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    if-eqz v1, :cond_1

    .line 1059
    :cond_a
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "FocusManager"

    const-string v2, "sending RESET_TOUCH_FOCUS_DELAY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 1062
    .local v16, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1049
    .end local v16           #msg:Landroid/os/Message;
    :cond_c
    const-string v1, "FocusManager"

    const-string v2, "FocusTone is null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1054
    :cond_d
    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FAIL:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    goto :goto_1

    .line 1064
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v2, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_IDLE:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-ne v1, v2, :cond_1

    goto/16 :goto_0
.end method

.method private calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 888
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 889
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 890
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/motorola/camera/FocusManager;->clamp(III)I

    move-result v3

    .line 891
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/motorola/camera/FocusManager;->clamp(III)I

    move-result v5

    .line 893
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 894
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/motorola/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 895
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/motorola/camera/FocusManager;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 896
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 653
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->resetTouchFocus()V

    .line 659
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->cancelAutoFocus()V

    .line 661
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->setFocusModeParameters()V

    .line 662
    sget-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_IDLE:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 663
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    :goto_0
    return-void

    .line 666
    :cond_1
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->cancelAutoFocus()V

    .line 667
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->setFocusModeParameters()V

    .line 668
    sget-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_IDLE:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 669
    iput-boolean v2, p0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    goto :goto_0
.end method

.method private capture()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 859
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 860
    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mStateCallback:Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;

    if-eqz v2, :cond_1

    .line 866
    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mStateCallback:Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;

    const/4 v3, 0x1

    sget-object v4, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->FOCUS_COMPLETE:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    invoke-virtual {v4}, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v5, v5, v4}, Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;->requestCompletedOrError(IIILjava/lang/Object;)V

    .line 870
    :cond_1
    sget-object v2, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_IDLE:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    iput-object v2, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 872
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v1

    .line 873
    .local v1, mode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->CAMCORDER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SERVICE_VIDEO:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-eq v1, v2, :cond_2

    .line 875
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->resetFaceUI()V

    .line 876
    iput-boolean v5, p0, Lcom/motorola/camera/FocusManager;->mUpdateFaceUI:Z

    .line 877
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 878
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_VISIBILITY:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateVisibilityTag:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 880
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 883
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 884
    return-void
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 959
    if-le p0, p2, :cond_0

    .line 961
    .end local p2
    :goto_0
    return p2

    .line 960
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 961
    goto :goto_0
.end method

.method private getFocusMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 921
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocusMode current focus mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    if-eqz v0, :cond_7

    .line 924
    :cond_2
    const-string v0, "auto"

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 928
    :goto_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gtFocusMode auto or default:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 933
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current focus mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-string v0, "auto"

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 936
    const-string v0, "auto"

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 941
    :cond_4
    :goto_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocusMode returned value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_5
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocusMode from app settings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    return-object v0

    .line 926
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 938
    :cond_8
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getInstance()Lcom/motorola/camera/FocusManager;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/motorola/camera/FocusManager;->sFocusManager:Lcom/motorola/camera/FocusManager;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/motorola/camera/FocusManager;

    invoke-direct {v0}, Lcom/motorola/camera/FocusManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/FocusManager;->sFocusManager:Lcom/motorola/camera/FocusManager;

    .line 233
    :cond_0
    sget-object v0, Lcom/motorola/camera/FocusManager;->sFocusManager:Lcom/motorola/camera/FocusManager;

    return-object v0
.end method

.method private initializeFocusParameters()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 385
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "auto"

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mFocusAreaSupported:Z

    .line 387
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusModes:Ljava/util/List;

    .line 389
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supported focus modes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/FocusManager;->mFocusModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusMode():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    .line 393
    iput-boolean v1, p0, Lcom/motorola/camera/FocusManager;->mInitialized:Z

    .line 395
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 396
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeFocusParameters defaultFocusMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_2
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FM_FOCUS_PARAM_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 402
    return-void

    .line 385
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private initializeFocusTone()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 421
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusToneFd:Landroid/content/res/AssetFileDescriptor;

    if-nez v0, :cond_0

    .line 422
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusToneFd:Landroid/content/res/AssetFileDescriptor;

    .line 425
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    .line 426
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFocusToneFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mFocusToneFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/motorola/camera/FocusManager;->mFocusToneFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 429
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 430
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v6

    .line 434
    .local v6, ex:Ljava/lang/IllegalStateException;
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initializeFocusTone() - failed to load audio for focus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 436
    iput-object v7, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 438
    .end local v6           #ex:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    .line 439
    .local v6, ex:Ljava/io/IOException;
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initializeFocusTone() - failed to load audio for focus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 441
    iput-object v7, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 443
    .end local v6           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 444
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initializeFocusTone() - failed to load audio for focus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 446
    iput-object v7, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private initializeMatrix(ZI)V
    .locals 4
    .parameter "mirror"
    .parameter "orientation"

    .prologue
    .line 411
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeMatrix:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 413
    .local v0, matrix:Landroid/graphics/Matrix;
    iget v1, p0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    iget v2, p0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    invoke-static {v0, p1, p2, v1, v2}, Lcom/motorola/camera/FocusManager;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 417
    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 418
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 947
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 4

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 912
    .local v0, focusMode:Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needAutoFocusCall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_0
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareFaceDetectMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 6
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 1153
    invoke-static {p1, p2, p3, p4, p5}, Lcom/motorola/camera/FocusManager;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 1156
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->getRawSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1157
    .local v0, displaySize:Landroid/graphics/Point;
    const/4 v1, 0x0

    .line 1158
    .local v1, dx:I
    const/4 v2, 0x0

    .line 1159
    .local v2, dy:I
    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ne v3, p4, :cond_1

    .line 1160
    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p5

    shr-int/lit8 v2, v3, 0x1

    .line 1164
    :goto_0
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FocusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(dx; dy): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1166
    return-void

    .line 1162
    :cond_1
    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p4

    shr-int/lit8 v1, v3, 0x1

    goto :goto_0
.end method

.method private static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 901
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 903
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 906
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 907
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 908
    return-void

    :cond_0
    move v0, v1

    .line 901
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 970
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 971
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 972
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 973
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 974
    return-void
.end method

.method private resetFaceUI()V
    .locals 4

    .prologue
    .line 1129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1130
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FACES:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const/4 v2, 0x0

    new-array v1, v2, [I

    .line 1132
    .local v1, intArray:[I
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewFacesTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1133
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 1134
    return-void
.end method

.method private resetFocusManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 842
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    const-string v1, "device cancelAutoFocus from resetFocusManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFaceDetectStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/camera/FocusManager;->mFaceDetectStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_1
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->cancelAutoFocus()V

    .line 845
    sget-object v0, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_IDLE:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    iput-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    .line 846
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 847
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 848
    iput-object v3, p0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    .line 849
    iput-object v3, p0, Lcom/motorola/camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    .line 850
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/AppSettings;->setFocusAreas(Ljava/util/ArrayList;)V

    .line 851
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/AppSettings;->setMeteringAreas(Ljava/util/ArrayList;)V

    .line 852
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->updateCameraParameters()V

    .line 854
    :cond_2
    return-void
.end method

.method private resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 679
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FocusManager"

    const-string v3, "resetTouchFocus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/camera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_1

    .line 706
    :goto_0
    return-void

    .line 682
    :cond_1
    const/4 v1, 0x0

    .line 684
    .local v1, bundle:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #bundle:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 685
    .restart local v1       #bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->RESET_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 689
    const/4 v2, 0x3

    new-array v0, v2, [Z

    .line 690
    .local v0, booleanArray:[Z
    aput-boolean v4, v0, v4

    .line 691
    const/4 v2, 0x1

    aput-boolean v4, v0, v2

    .line 692
    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 693
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #bundle:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 694
    .restart local v1       #bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateAreaTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 696
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 699
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #bundle:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 700
    .restart local v1       #bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_VISIBILITY:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateVisibilityTag:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 702
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 704
    iput-object v5, p0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    .line 705
    iput-object v5, p0, Lcom/motorola/camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private setFocusModeParameters()V
    .locals 3

    .prologue
    .line 604
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    const-string v1, "setFocusModeParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFaceDetectStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/camera/FocusManager;->mFaceDetectStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    .line 608
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->setFocusAreas(Ljava/util/ArrayList;)V

    .line 610
    :cond_2
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_3

    .line 612
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->setMeteringAreas(Ljava/util/ArrayList;)V

    .line 614
    :cond_3
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->setFocusMode(Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->updateCameraParameters()V

    .line 618
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FM_FOCUS_PARAM_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 619
    return-void
.end method

.method private startFaceDetect()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1082
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSettings.getInstance().getMaxNumDetectedFaces():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getMaxNumDetectedFaces()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_0
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_3

    .line 1084
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1085
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mFaceDetectStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mPreviewRunning:Z

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mDeviceFaceInterface:Lcom/motorola/camera/DeviceFaceInterface;

    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFacesDetectedCallback:Lcom/motorola/camera/FocusManager$FacesDetectedCallback;

    invoke-interface {v0, v1}, Lcom/motorola/camera/DeviceFaceInterface;->setFaceDetectionListener(Lcom/motorola/camera/Device$FacesDetectedListener;)V

    .line 1087
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mDeviceFaceInterface:Lcom/motorola/camera/DeviceFaceInterface;

    invoke-interface {v0}, Lcom/motorola/camera/DeviceFaceInterface;->startFaceDetection()V

    .line 1088
    iput-boolean v3, p0, Lcom/motorola/camera/FocusManager;->mFaceDetectStarted:Z

    .line 1089
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FocusManager"

    const-string v1, "face detection started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FocusManager"

    const-string v1, "face detection is already running or preview has not started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_2
    iput-boolean v3, p0, Lcom/motorola/camera/FocusManager;->mUpdateFaceUI:Z

    .line 1095
    :cond_3
    return-void
.end method

.method private stopFaceDetect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1098
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mFaceDetectStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mPreviewRunning:Z

    if-eqz v0, :cond_1

    .line 1099
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->resetFaceUI()V

    .line 1100
    iput-boolean v1, p0, Lcom/motorola/camera/FocusManager;->mUpdateFaceUI:Z

    .line 1101
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mDeviceFaceInterface:Lcom/motorola/camera/DeviceFaceInterface;

    invoke-interface {v0}, Lcom/motorola/camera/DeviceFaceInterface;->stopFaceDetection()V

    .line 1102
    iput-boolean v1, p0, Lcom/motorola/camera/FocusManager;->mFaceDetectStarted:Z

    .line 1103
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mDeviceFaceInterface:Lcom/motorola/camera/DeviceFaceInterface;

    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFacesDetectedCallback:Lcom/motorola/camera/FocusManager$FacesDetectedCallback;

    invoke-interface {v0, v1}, Lcom/motorola/camera/DeviceFaceInterface;->unsetFaceDetectionListener(Lcom/motorola/camera/Device$FacesDetectedListener;)V

    .line 1104
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    const-string v1, "face detection stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    const-string v1, "face detection was not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFaceUI([Landroid/hardware/Camera$Face;)V
    .locals 10
    .parameter "faces"

    .prologue
    .line 1112
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1113
    .local v1, bundle:Landroid/os/Bundle;
    sget-object v8, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v9, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FACES:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    array-length v8, p1

    mul-int/lit8 v8, v8, 0x4

    new-array v5, v8, [I

    .line 1115
    .local v5, intArray:[I
    const/4 v3, 0x0

    .line 1116
    .local v3, i:I
    move-object v0, p1

    .local v0, arr$:[Landroid/hardware/Camera$Face;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    .line 1117
    .local v2, face:Landroid/hardware/Camera$Face;
    iget-object v8, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Lcom/motorola/camera/FocusManager;->convertCameraRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1118
    .local v7, r:Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->left:I

    aput v8, v5, v3

    .line 1119
    add-int/lit8 v8, v3, 0x1

    iget v9, v7, Landroid/graphics/Rect;->top:I

    aput v9, v5, v8

    .line 1120
    add-int/lit8 v8, v3, 0x2

    iget v9, v7, Landroid/graphics/Rect;->right:I

    aput v9, v5, v8

    .line 1121
    add-int/lit8 v8, v3, 0x3

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    aput v9, v5, v8

    .line 1122
    add-int/lit8 v3, v3, 0x4

    .line 1116
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1124
    .end local v2           #face:Landroid/hardware/Camera$Face;
    .end local v7           #r:Landroid/graphics/Rect;
    :cond_0
    sget-object v8, Lcom/motorola/camera/FocusManager;->mFocusViewFacesTag:Ljava/lang/String;

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1125
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v8, v9, v1}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 1126
    return-void
.end method


# virtual methods
.method public cancelFocus()V
    .locals 3

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_2
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_SUCCESS:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FAIL:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-ne v0, v1, :cond_0

    .line 731
    :cond_3
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 803
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 804
    const-string v1, "FocusManager"

    const-string v2, "cleanup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    iput-boolean v3, p0, Lcom/motorola/camera/FocusManager;->mInitialized:Z

    .line 807
    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 808
    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 809
    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 810
    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 811
    iput-object v4, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFocusToneFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_2

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFocusToneFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 817
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/FocusManager;->mFocusToneFd:Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/motorola/camera/FocusManager;->mCaptureState:Z

    .line 825
    iput-boolean v3, p0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    .line 826
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/AppSettings;->unregisterPreviewSizeChangeListener(Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;)V

    .line 827
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/AppSettings;->removeOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 829
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->stopFaceDetect()V

    .line 831
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "FocusManager"

    const-string v2, "Error closing focus tone file descriptor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public convertCameraRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter "rect"

    .prologue
    .line 1142
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1143
    .local v0, r:Landroid/graphics/RectF;
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1144
    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFaceDetectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1145
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public doSnap(Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;)V
    .locals 6
    .parameter "callback"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 757
    iget-boolean v1, p0, Lcom/motorola/camera/FocusManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSnap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_2
    iput-boolean v5, p0, Lcom/motorola/camera/FocusManager;->mCaptureState:Z

    .line 763
    iput-object p1, p0, Lcom/motorola/camera/FocusManager;->mStateCallback:Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;

    .line 764
    iput-boolean v4, p0, Lcom/motorola/camera/FocusManager;->mCAFFailed:Z

    .line 766
    const/4 v0, 0x0

    .line 768
    .local v0, autoFocusModeUsed:Z
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 769
    const/4 v0, 0x1

    .line 771
    :cond_3
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/BlurCheckin;->setAutoFocusModeUsed(Z)V

    .line 772
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/FocusManager;->mTapToFocusCount:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/BlurCheckin;->setTaptoFocusCount(I)V

    .line 773
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/camera/FocusManager;->mFaceDetectStarted:Z

    invoke-virtual {v1, v2}, Lcom/motorola/camera/BlurCheckin;->setFaceDetect(Z)V

    .line 774
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/FocusManager;->mNumFaces:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/BlurCheckin;->setNumFacesDetected(I)V

    .line 775
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/camera/FocusManager;->mLowLight:Z

    invoke-virtual {v1, v2}, Lcom/motorola/camera/BlurCheckin;->setLowLight(Z)V

    .line 776
    iput v4, p0, Lcom/motorola/camera/FocusManager;->mTapToFocusCount:I

    .line 777
    iput v4, p0, Lcom/motorola/camera/FocusManager;->mNumFaces:I

    .line 782
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v2, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_SUCCESS:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v2, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FAIL:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-eq v1, v2, :cond_4

    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    if-eqz v1, :cond_5

    .line 785
    :cond_4
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->capture()V

    goto/16 :goto_0

    .line 786
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v2, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-ne v1, v2, :cond_6

    .line 790
    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING_SNAP_ON_FINISH:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    iput-object v1, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    goto/16 :goto_0

    .line 791
    :cond_6
    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v2, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_IDLE:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-ne v1, v2, :cond_0

    .line 798
    invoke-direct {p0, v5}, Lcom/motorola/camera/FocusManager;->autoFocus(Z)V

    goto/16 :goto_0
.end method

.method public focus()V
    .locals 3

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_2
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_SUCCESS:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v1, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FAIL:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-eq v0, v1, :cond_0

    .line 716
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/FocusManager;->autoFocus(Z)V

    goto :goto_0
.end method

.method public getCAFFailureStatus()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mCAFFailed:Z

    return v0
.end method

.method public getFocusFailureStatus()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mFocusFailed:Z

    return v0
.end method

.method public isCAFStatusValid()Z
    .locals 3

    .prologue
    .line 1217
    const/4 v0, 0x0

    .line 1218
    .local v0, result:Z
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/FocusManager;->mLowLight:Z

    if-eqz v1, :cond_1

    .line 1220
    :cond_0
    const/4 v0, 0x1

    .line 1222
    :cond_1
    return v0
.end method

.method public onFocusEnvChangeEvent(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .parameter "event"
    .parameter "eventData"

    .prologue
    const/4 v3, 0x0

    .line 1227
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1229
    .local v1, outgoingData:Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1244
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FM_CAF_LOWLIGHT_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 1245
    return-void

    .line 1231
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/motorola/camera/FocusManager;->mLowLight:Z

    .line 1232
    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1233
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1234
    const-string v2, "low-light"

    iget-boolean v3, p0, Lcom/motorola/camera/FocusManager;->mLowLight:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v2, v3

    .line 1231
    goto :goto_1

    .line 1237
    :pswitch_2
    const-string v2, "caf-update"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1239
    iput-boolean v3, p0, Lcom/motorola/camera/FocusManager;->mLowLight:Z

    .line 1240
    const-string v2, "low-light"

    iget-boolean v3, p0, Lcom/motorola/camera/FocusManager;->mLowLight:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 379
    return-void
.end method

.method public onPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 3
    .parameter "prefGroup"
    .parameter "keys"

    .prologue
    .line 344
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    const-string v1, "onPreferenceGroupChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    if-eqz p1, :cond_2

    .line 347
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    if-eqz v0, :cond_2

    .line 348
    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->resetTouchFocus()V

    .line 349
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->resetFocusManager()V

    .line 353
    :cond_2
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->initializeFocusParameters()V

    .line 354
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 355
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->startFaceDetect()V

    .line 366
    :goto_0
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusModes:Ljava/util/List;

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 369
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->setFocusMode(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->updateCameraParameters()V

    .line 371
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed focus mode to CAF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_3
    return-void

    .line 358
    :cond_4
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->stopFaceDetect()V

    goto :goto_0
.end method

.method public onPreviewSizeChanged(Landroid/graphics/Point;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 263
    iget v2, p1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    .line 264
    iget v2, p1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    .line 265
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 266
    const-string v2, "FocusManager"

    const-string v5, "onPreviewSizeChanged"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v2, "FocusManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPreviewWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v2, "FocusManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPreviewHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/FocusManager;->mDeviceFaceInterface:Lcom/motorola/camera/DeviceFaceInterface;

    .line 272
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v2

    iget-object v5, p0, Lcom/motorola/camera/FocusManager;->mStopPreviewListener:Lcom/motorola/camera/FocusManager$StopPreviewListener;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/Device;->setStopPreviewListener(Lcom/motorola/camera/Device$StopPreviewListener;)V

    .line 274
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/Device;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/Device;->getDisplayOrientation()I

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/motorola/camera/FocusManager;->initializeMatrix(ZI)V

    .line 276
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v5, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->INIT_FOCUS_VIEW:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 279
    .local v1, intArray:[I
    iget v2, p0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    aput v2, v1, v4

    .line 280
    iget v2, p0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    aput v2, v1, v3

    .line 281
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewSetRegionTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 282
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 284
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .restart local v0       #bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_VISIBILITY:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateVisibilityTag:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 289
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v3, v3, 0x4

    iget v5, p0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v7, v7, 0x4

    iget v8, p0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocusRegionRect:Landroid/graphics/Rect;

    .line 294
    iput v4, p0, Lcom/motorola/camera/FocusManager;->mPreviewLeft:I

    .line 295
    iput v4, p0, Lcom/motorola/camera/FocusManager;->mPreviewTop:I

    .line 296
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 297
    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewSizeChanged mDefaultFocusMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewSizeChanged from settings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/AppSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewSizeChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewSizeChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    return-void

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intArray:[I
    :cond_2
    move v2, v4

    .line 274
    goto/16 :goto_0
.end method

.method public resetFocus()V
    .locals 3

    .prologue
    .line 737
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_2

    .line 751
    :cond_1
    :goto_0
    return-void

    .line 743
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mCaptureState:Z

    .line 745
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoAutoFocused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_3
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    if-eqz v0, :cond_5

    .line 747
    :cond_4
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->cancelAutoFocus()V

    .line 750
    :cond_5
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetFocus done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 246
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "FocusManager"

    const-string v1, "start called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/AppSettings;->registerPreviewSizeChangeListener(Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;)V

    .line 251
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/AppSettings;->addOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 252
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 253
    const-string v0, "FocusManager"

    const-string v1, "start finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    return-void
.end method

.method public startPreviewDone()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 306
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "FocusManager"

    const-string v1, "startPreviewDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iput-boolean v2, p0, Lcom/motorola/camera/FocusManager;->mPreviewRunning:Z

    .line 313
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_2

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    .line 318
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->initializeFocusTone()V

    .line 325
    :cond_3
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->stopFaceDetect()V

    .line 326
    invoke-direct {p0}, Lcom/motorola/camera/FocusManager;->startFaceDetect()V

    .line 328
    iget-boolean v0, p0, Lcom/motorola/camera/FocusManager;->mFaceDetectStarted:Z

    if-eqz v0, :cond_4

    .line 329
    iget-object v1, p0, Lcom/motorola/camera/FocusManager;->mFaceDetectMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->getDisplayOrientation()I

    move-result v3

    iget v4, p0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    iget v5, p0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/FocusManager;->prepareFaceDetectMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 337
    :cond_4
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 338
    const-string v0, "FocusManager"

    const-string v1, "startPreviewDone finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public touchEvent(Landroid/view/MotionEvent;II)V
    .locals 22
    .parameter "e"
    .parameter "previewLeft"
    .parameter "previewTop"

    .prologue
    .line 458
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/motorola/camera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/FocusManager;->needAutoFocusCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/motorola/camera/FocusManager;->mCaptureState:Z

    if-nez v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "continuous-video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    if-eqz v2, :cond_3

    .line 468
    :cond_2
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FocusManager"

    const-string v3, "touch event received in non capture state in video caf!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/motorola/camera/FocusManager;->mCaptureState:Z

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "continuous-video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    if-nez v2, :cond_4

    .line 474
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FocusManager"

    const-string v3, "touch event received in capture state in picture caf!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :cond_4
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touchEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_5
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "previewLeft:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_6
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "previewTop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_7
    const/4 v12, 0x0

    .line 485
    .local v12, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/camera/FocusManager;->mPreviewLeft:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/camera/FocusManager;->mPreviewTop:I

    move/from16 v0, p3

    if-eq v0, v2, :cond_9

    .line 486
    :cond_8
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 487
    .local v17, intArray:[I
    const/4 v2, 0x0

    aput p2, v17, v2

    .line 488
    const/4 v2, 0x1

    aput p3, v17, v2

    .line 489
    new-instance v12, Landroid/os/Bundle;

    .end local v12           #bundle:Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 490
    .restart local v12       #bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_REGION:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateRegionTag:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 492
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v12}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 493
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v3, v3, 0x4

    add-int v3, v3, p2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v4, v4, 0x4

    add-int v4, v4, p3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v5, v5, 0x4

    add-int v5, v5, p2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v8, v8, 0x4

    add-int v8, v8, p3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocusRegionRect:Landroid/graphics/Rect;

    .line 501
    .end local v17           #intArray:[I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 502
    .local v20, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 504
    .local v21, y:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/motorola/camera/FocusManager;->mCaptureState:Z

    if-eqz v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "continuous-video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    if-eqz v2, :cond_b

    .line 506
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocusRegionRect:Landroid/graphics/Rect;

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_b

    .line 507
    const-string v2, "FocusManager"

    const-string v3, "user tapped outside the focus rectangle. No auto focus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 512
    :cond_b
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/camera/FocusManager;->mPreviewLeft:I

    .line 513
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/camera/FocusManager;->mPreviewTop:I

    .line 514
    const/16 v16, 0x0

    .line 515
    .local v16, focusWidth:F
    const/4 v15, 0x0

    .line 516
    .local v15, focusHeight:F
    const/16 v18, 0x0

    .line 517
    .local v18, left:F
    const/16 v19, 0x0

    .line 519
    .local v19, top:F
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "continuous-video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    if-nez v2, :cond_11

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v3, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING_SNAP_ON_FINISH:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-eq v2, v3, :cond_0

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v3, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FOCUSING:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v3, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_SUCCESS:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mState:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    sget-object v3, Lcom/motorola/camera/FocusManager$FOCUS_MODE;->STATE_FAIL:Lcom/motorola/camera/FocusManager$FOCUS_MODE;

    if-ne v2, v3, :cond_d

    .line 527
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/FocusManager;->cancelAutoFocus()V

    .line 530
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 531
    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/camera/FocusManager;->mTapToFocusCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/camera/FocusManager;->mTapToFocusCount:I

    .line 534
    :cond_e
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v13, v2, Landroid/util/DisplayMetrics;->density:F

    .line 536
    .local v13, density:F
    const/high16 v2, 0x42a0

    mul-float v16, v2, v13

    .line 537
    const/high16 v2, 0x42a0

    mul-float v15, v2, v13

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-nez v2, :cond_f

    .line 540
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/camera/FocusManager;->mPreviewLeft:I

    sub-int v6, v20, v2

    .line 547
    .local v6, newx:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/camera/FocusManager;->mPreviewTop:I

    sub-int v7, v21, v2

    .line 552
    .local v7, newy:I
    move/from16 v0, v16

    float-to-int v3, v0

    float-to-int v4, v15

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v8, v0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/motorola/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 554
    move/from16 v0, v16

    float-to-int v3, v0

    float-to-int v4, v15

    const/high16 v5, 0x3fc0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/motorola/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 557
    move/from16 v0, v16

    float-to-int v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v20, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/camera/FocusManager;->mPreviewLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/camera/FocusManager;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/camera/FocusManager;->mPreviewLeft:I

    add-int/2addr v4, v5

    move/from16 v0, v16

    float-to-int v5, v0

    sub-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/motorola/camera/FocusManager;->clamp(III)I

    move-result v2

    int-to-float v0, v2

    move/from16 v18, v0

    .line 559
    float-to-int v2, v15

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v21, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/camera/FocusManager;->mPreviewTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/camera/FocusManager;->mPreviewHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/camera/FocusManager;->mPreviewTop:I

    add-int/2addr v4, v5

    float-to-int v5, v15

    sub-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/motorola/camera/FocusManager;->clamp(III)I

    move-result v2

    int-to-float v0, v2

    move/from16 v19, v0

    .line 571
    .end local v6           #newx:I
    .end local v7           #newy:I
    .end local v13           #density:F
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/FocusManager;->stopFaceDetect()V

    .line 572
    const/4 v2, 0x4

    new-array v14, v2, [F

    .line 573
    .local v14, floatArray:[F
    const/4 v2, 0x0

    aput v18, v14, v2

    .line 574
    const/4 v2, 0x1

    aput v19, v14, v2

    .line 575
    const/4 v2, 0x2

    add-float v3, v18, v16

    aput v3, v14, v2

    .line 576
    const/4 v2, 0x3

    add-float v3, v19, v15

    aput v3, v14, v2

    .line 577
    new-instance v12, Landroid/os/Bundle;

    .end local v12           #bundle:Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 578
    .restart local v12       #bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewSetAreaTag:Ljava/lang/String;

    invoke-virtual {v12, v2, v14}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 579
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->SET_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v12}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 582
    const/4 v2, 0x3

    new-array v11, v2, [Z

    .line 583
    .local v11, booleanArray:[Z
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v11, v2

    .line 584
    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v11, v2

    .line 585
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-boolean v3, v11, v2

    .line 586
    new-instance v12, Landroid/os/Bundle;

    .end local v12           #bundle:Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 587
    .restart local v12       #bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_AREA:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateAreaTag:Ljava/lang/String;

    invoke-virtual {v12, v2, v11}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 589
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v12}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 591
    new-instance v12, Landroid/os/Bundle;

    .end local v12           #bundle:Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 592
    .restart local v12       #bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateTag:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->UPDATE_FOCUS_VISIBILITY:Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    sget-object v2, Lcom/motorola/camera/FocusManager;->mFocusViewUpdateVisibilityTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, v12}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 597
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/motorola/camera/FocusManager;->mFocusAreaSupported:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    if-eqz v2, :cond_0

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/FocusManager;->setFocusModeParameters()V

    .line 599
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/motorola/camera/FocusManager;->autoFocus(Z)V

    goto/16 :goto_0

    .line 563
    .end local v11           #booleanArray:[Z
    .end local v14           #floatArray:[F
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocusRegionRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocusRegionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v16, v0

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocusRegionRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocusRegionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v15, v2

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocusRegionRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocusRegionRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v2

    move/from16 v19, v0

    .line 567
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/motorola/camera/FocusManager;->mVideoAutoFocused:Z

    goto/16 :goto_1
.end method
