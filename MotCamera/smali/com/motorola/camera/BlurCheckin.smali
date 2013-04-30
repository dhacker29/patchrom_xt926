.class public Lcom/motorola/camera/BlurCheckin;
.super Ljava/lang/Object;
.source "BlurCheckin.java"

# interfaces
.implements Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;
.implements Lcom/motorola/camera/CameraKpi$CameraKpiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/BlurCheckin$1;,
        Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;,
        Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;,
        Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;,
        Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;,
        Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;,
        Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;,
        Lcom/motorola/camera/BlurCheckin$CheckinObject;,
        Lcom/motorola/camera/BlurCheckin$CheckinThread;
    }
.end annotation


# static fields
.field private static BLUR_CHECKIN_TAG:Ljava/lang/String; = null

.field public static final CAMERA_READY:Ljava/lang/String; = "CAMERA_READY"

.field public static final FALSE_LAUNCH:Ljava/lang/String; = "FALSE_LAUNCH"

.field private static final LANDSCAPE:Ljava/lang/String; = "LAND"

.field private static final LAUNCHED_FROM_APP_TRAY:Ljava/lang/String; = "TRAY"

.field private static final LAUNCHED_FROM_CAMERA_BUTTON:Ljava/lang/String; = "BTN"

.field private static final LAUNCHED_FROM_GESTURE:Ljava/lang/String; = "GSTR"

.field private static final LAUNCHED_FROM_INSTANT_ON:Ljava/lang/String; = "INST"

.field private static final PORTRAIT:Ljava/lang/String; = "PORT"

.field public static final POST_CAPTURE:Ljava/lang/String; = "POST_CAPTURE"

.field public static final SHOT_TO_SHOT:Ljava/lang/String; = "SHOT_TO_SHOT"

.field private static TAG:Ljava/lang/String; = null

.field private static final THREAD_POOL_SIZE:I = 0x1

.field public static final TIMED_OUT:Ljava/lang/String; = "TIMED_OUT"

.field public static final USER_EXITED_APP:Ljava/lang/String; = "USER_EXITED_APP"

.field private static sBlurCheckin:Lcom/motorola/camera/BlurCheckin;


# instance fields
.field private volatile mAutoFocusModeUsed:Z

.field private mBlurCheckinExists:Z

.field private mCameraAppCloseTime:J

.field private mCameraAppOpenTime:J

.field private mCameraAppTimedOut:Z

.field private mCameraLaunchAction:Ljava/lang/String;

.field private volatile mCapturedDuration:J

.field private volatile mCapturedOrientation:I

.field private mEvents:[Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile mFacDetectEnabled:Z

.field private volatile mFrontCameraUsed:Z

.field private volatile mHDRDialogPreference:Z

.field private volatile mHDRDialogPreferenceClicked:Z

.field private mHDRModeSelected:I

.field private mHDRRecommendationAccepted:I

.field private mHDRRecommendationOn:Z

.field private mHDRRecommended:I

.field private volatile mInPocketDetected:Z

.field private mInstantButtonDownTime:J

.field private mInstantButtonUpTime:J

.field private mKpiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraKpi$KPI;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLowLight:Z

.field private volatile mNumFacesDetected:I

.field private mOtherKeys:[Ljava/lang/String;

.field private mPicturesCapturedInSession:I

.field private mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

.field private mShottoshotTime:J

.field private mStartupTime:J

.field private final mSynchronizedCameraLaunchActionObject:Ljava/lang/Object;

.field private final mSynchronizedCameraStopObject:Ljava/lang/Object;

.field private final mSynchronizedHDRRecommendationOnObject:Ljava/lang/Object;

.field private final mSynchronizedHDRRecommendedObject:Ljava/lang/Object;

.field private final mSynchronizedPreferenceGroupObject:Ljava/lang/Object;

.field private final mSynchronizedShottoshotObject:Ljava/lang/Object;

.field private final mSynchronizedStartupTimeObject:Ljava/lang/Object;

.field private final mSynchronizedVolKeyUsedObject:Ljava/lang/Object;

.field private final mSynchronizedmHDRDialogPreferenceClickedObject:Ljava/lang/Object;

.field private volatile mTapToFocusCount:I

.field private volatile mTimeToFocus:J

.field private volatile mTimeToSave:J

.field private volatile mTimeToShutterCallback:J

.field private volatile mUseCase:Ljava/lang/String;

.field private mUserChangedSettings:Z

.field private mVolumeKeyUsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "BlurCheckin"

    sput-object v0, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "MOT_CAMERA_STATS"

    sput-object v0, Lcom/motorola/camera/BlurCheckin;->BLUR_CHECKIN_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 307
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedPreferenceGroupObject:Ljava/lang/Object;

    .line 36
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedStartupTimeObject:Ljava/lang/Object;

    .line 37
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedShottoshotObject:Ljava/lang/Object;

    .line 38
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraLaunchActionObject:Ljava/lang/Object;

    .line 39
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedVolKeyUsedObject:Ljava/lang/Object;

    .line 41
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraStopObject:Ljava/lang/Object;

    .line 43
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedHDRRecommendedObject:Ljava/lang/Object;

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedHDRRecommendationOnObject:Ljava/lang/Object;

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedmHDRDialogPreferenceClickedObject:Ljava/lang/Object;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mKpiList:Ljava/util/ArrayList;

    .line 48
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CAMERA_READY"

    aput-object v2, v1, v4

    const-string v2, "POST_CAPTURE"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "SHOT_TO_SHOT"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mEvents:[Ljava/lang/String;

    .line 57
    iput-boolean v5, p0, Lcom/motorola/camera/BlurCheckin;->mBlurCheckinExists:Z

    .line 60
    const-string v1, "TRAY"

    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mCameraLaunchAction:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mKpiList:Ljava/util/ArrayList;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mKpiList:Ljava/util/ArrayList;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mKpiList:Ljava/util/ArrayList;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mKpiList:Ljava/util/ArrayList;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MEDIARECORDER_STOP:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mKpiList:Ljava/util/ArrayList;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :try_start_0
    const-string v1, "com.motorola.checkinwrapper.CheckinEventWrapper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/ClassNotFoundException;
    iput-boolean v4, p0, Lcom/motorola/camera/BlurCheckin;->mBlurCheckinExists:Z

    .line 318
    sget-object v1, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checkin class does not exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/motorola/camera/BlurCheckin;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mStartupTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/motorola/camera/BlurCheckin;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/motorola/camera/BlurCheckin;->mStartupTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mUseCase:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedPreferenceGroupObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedVolKeyUsedObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/camera/BlurCheckin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mVolumeKeyUsed:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/motorola/camera/BlurCheckin;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/motorola/camera/BlurCheckin;->mVolumeKeyUsed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/motorola/camera/BlurCheckin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mFrontCameraUsed:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/motorola/camera/BlurCheckin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mLowLight:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/motorola/camera/BlurCheckin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/motorola/camera/BlurCheckin;->mTapToFocusCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/motorola/camera/BlurCheckin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mAutoFocusModeUsed:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/motorola/camera/BlurCheckin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mFacDetectEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/motorola/camera/BlurCheckin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/motorola/camera/BlurCheckin;->mNumFacesDetected:I

    return v0
.end method

.method static synthetic access$2200(Lcom/motorola/camera/BlurCheckin;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mTimeToFocus:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/motorola/camera/BlurCheckin;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/motorola/camera/BlurCheckin;->mTimeToFocus:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/motorola/camera/BlurCheckin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/motorola/camera/BlurCheckin;->mCapturedOrientation:I

    return v0
.end method

.method static synthetic access$2302(Lcom/motorola/camera/BlurCheckin;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/motorola/camera/BlurCheckin;->mCapturedOrientation:I

    return p1
.end method

.method static synthetic access$2400(Lcom/motorola/camera/BlurCheckin;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mTimeToShutterCallback:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/motorola/camera/BlurCheckin;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/motorola/camera/BlurCheckin;->mTimeToShutterCallback:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/motorola/camera/BlurCheckin;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mTimeToSave:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/motorola/camera/BlurCheckin;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/motorola/camera/BlurCheckin;->mTimeToSave:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/motorola/camera/BlurCheckin;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mCapturedDuration:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/motorola/camera/BlurCheckin;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/motorola/camera/BlurCheckin;->mCapturedDuration:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedShottoshotObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/motorola/camera/BlurCheckin;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mShottoshotTime:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/motorola/camera/BlurCheckin;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/motorola/camera/BlurCheckin;->mShottoshotTime:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraLaunchActionObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mCameraLaunchAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/motorola/camera/BlurCheckin;->mCameraLaunchAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/motorola/camera/BlurCheckin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mInPocketDetected:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/motorola/camera/BlurCheckin;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mInstantButtonUpTime:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/motorola/camera/BlurCheckin;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/motorola/camera/BlurCheckin;->mInstantButtonUpTime:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/motorola/camera/BlurCheckin;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mInstantButtonDownTime:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/motorola/camera/BlurCheckin;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/motorola/camera/BlurCheckin;->mInstantButtonDownTime:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraStopObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/motorola/camera/BlurCheckin;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/motorola/camera/BlurCheckin;->mCameraAppTimedOut:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/motorola/camera/BlurCheckin;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mCameraAppCloseTime:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/motorola/camera/BlurCheckin;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/motorola/camera/BlurCheckin;->mCameraAppCloseTime:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/motorola/camera/BlurCheckin;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mCameraAppOpenTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/motorola/camera/BlurCheckin;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/motorola/camera/BlurCheckin;->mCameraAppOpenTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/motorola/camera/BlurCheckin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRDialogPreference:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedHDRRecommendedObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/motorola/camera/BlurCheckin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRRecommended:I

    return v0
.end method

.method static synthetic access$4002(Lcom/motorola/camera/BlurCheckin;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/motorola/camera/BlurCheckin;->mHDRRecommended:I

    return p1
.end method

.method static synthetic access$4100(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedmHDRDialogPreferenceClickedObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/motorola/camera/BlurCheckin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRDialogPreferenceClicked:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/motorola/camera/BlurCheckin;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/motorola/camera/BlurCheckin;->mHDRDialogPreferenceClicked:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/motorola/camera/BlurCheckin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRRecommendationAccepted:I

    return v0
.end method

.method static synthetic access$4302(Lcom/motorola/camera/BlurCheckin;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/motorola/camera/BlurCheckin;->mHDRRecommendationAccepted:I

    return p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/motorola/camera/BlurCheckin;->BLUR_CHECKIN_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedStartupTimeObject:Ljava/lang/Object;

    return-object v0
.end method

.method private getCheckinObject(Ljava/lang/String;)Lcom/motorola/camera/BlurCheckin$CheckinObject;
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    const/4 v0, 0x0

    .line 396
    .local v0, launchAction:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraLaunchActionObject:Ljava/lang/Object;

    monitor-enter v3

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin;->mCameraLaunchAction:Ljava/lang/String;

    .line 398
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    const-string v2, "POST_CAPTURE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    new-instance v1, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;

    .end local v1           #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    invoke-direct {v1, p0, v4}, Lcom/motorola/camera/BlurCheckin$PostCaptureCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V

    .line 402
    .restart local v1       #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    iget v2, p0, Lcom/motorola/camera/BlurCheckin;->mPicturesCapturedInSession:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/motorola/camera/BlurCheckin;->mPicturesCapturedInSession:I

    .line 421
    :cond_0
    :goto_0
    return-object v1

    .line 398
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 404
    :cond_1
    const-string v2, "CAMERA_READY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    new-instance v1, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;

    .end local v1           #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    invoke-direct {v1, p0, v0, v4}, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;Lcom/motorola/camera/BlurCheckin$1;)V

    .restart local v1       #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    goto :goto_0

    .line 407
    :cond_2
    const-string v2, "SHOT_TO_SHOT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    new-instance v1, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;

    .end local v1           #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    invoke-direct {v1, p0, v4}, Lcom/motorola/camera/BlurCheckin$ShottoshotCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V

    .restart local v1       #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    goto :goto_0

    .line 410
    :cond_3
    const-string v2, "FALSE_LAUNCH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 411
    new-instance v1, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;

    .end local v1           #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    invoke-direct {v1, p0, v0, v4}, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;Lcom/motorola/camera/BlurCheckin$1;)V

    .restart local v1       #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    goto :goto_0

    .line 413
    :cond_4
    const-string v2, "TIMED_OUT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 414
    new-instance v1, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;

    .end local v1           #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    invoke-direct {v1, p0, v4}, Lcom/motorola/camera/BlurCheckin$TimedOutCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V

    .restart local v1       #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    goto :goto_0

    .line 416
    :cond_5
    const-string v2, "USER_EXITED_APP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    new-instance v1, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;

    .end local v1           #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    iget v2, p0, Lcom/motorola/camera/BlurCheckin;->mPicturesCapturedInSession:I

    invoke-direct {v1, p0, v2, v4}, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;ILcom/motorola/camera/BlurCheckin$1;)V

    .line 418
    .restart local v1       #result:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/camera/BlurCheckin;->mPicturesCapturedInSession:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/motorola/camera/BlurCheckin;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/motorola/camera/BlurCheckin;->sBlurCheckin:Lcom/motorola/camera/BlurCheckin;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/motorola/camera/BlurCheckin;

    invoke-direct {v0}, Lcom/motorola/camera/BlurCheckin;-><init>()V

    sput-object v0, Lcom/motorola/camera/BlurCheckin;->sBlurCheckin:Lcom/motorola/camera/BlurCheckin;

    .line 301
    :cond_0
    sget-object v0, Lcom/motorola/camera/BlurCheckin;->sBlurCheckin:Lcom/motorola/camera/BlurCheckin;

    return-object v0
.end method


# virtual methods
.method public logEvent(Ljava/lang/String;)V
    .locals 6
    .parameter "eventName"

    .prologue
    .line 329
    iget-boolean v3, p0, Lcom/motorola/camera/BlurCheckin;->mBlurCheckinExists:Z

    if-nez v3, :cond_0

    .line 356
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/camera/BlurCheckin;->getCheckinObject(Ljava/lang/String;)Lcom/motorola/camera/BlurCheckin$CheckinObject;

    move-result-object v0

    .line 335
    .local v0, checkinObject:Lcom/motorola/camera/BlurCheckin$CheckinObject;
    if-nez v0, :cond_1

    .line 336
    sget-object v3, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkin object is null - eventName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_1
    new-instance v2, Lcom/motorola/camera/BlurCheckin$CheckinThread;

    invoke-direct {v2, p0, p1, v0}, Lcom/motorola/camera/BlurCheckin$CheckinThread;-><init>(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;Lcom/motorola/camera/BlurCheckin$CheckinObject;)V

    .line 343
    .local v2, runner:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 344
    :cond_2
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/BlurCheckin;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 348
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, e:Ljava/util/concurrent/RejectedExecutionException;
    sget-object v3, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error executing checkin runnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    .end local v1           #e:Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v1

    .line 354
    .local v1, e:Ljava/lang/NullPointerException;
    sget-object v3, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error executing checkin runnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onKpiUpdate(Lcom/motorola/camera/CameraKpi$KPI;J)V
    .locals 3
    .parameter "kpi"
    .parameter "time"

    .prologue
    .line 140
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kpi update received for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    sget-object v0, Lcom/motorola/camera/BlurCheckin$1;->$SwitchMap$com$motorola$camera$CameraKpi$KPI:[I

    invoke-virtual {p1}, Lcom/motorola/camera/CameraKpi$KPI;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 164
    sget-object v0, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received kpi update for a non registered kpi! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedStartupTimeObject:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iput-wide p2, p0, Lcom/motorola/camera/BlurCheckin;->mStartupTime:J

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    const-string v0, "CAMERA_READY"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/BlurCheckin;->logEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 149
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedShottoshotObject:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_2
    iput-wide p2, p0, Lcom/motorola/camera/BlurCheckin;->mShottoshotTime:J

    .line 151
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    const-string v0, "SHOT_TO_SHOT"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/BlurCheckin;->logEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 155
    :pswitch_2
    iput-wide p2, p0, Lcom/motorola/camera/BlurCheckin;->mTimeToFocus:J

    goto :goto_0

    .line 158
    :pswitch_3
    iput-wide p2, p0, Lcom/motorola/camera/BlurCheckin;->mTimeToSave:J

    goto :goto_0

    .line 161
    :pswitch_4
    iput-wide p2, p0, Lcom/motorola/camera/BlurCheckin;->mTimeToShutterCallback:J

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPreferenceChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 136
    return-void
.end method

.method public onPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 6
    .parameter "prefGroup"
    .parameter "keys"

    .prologue
    .line 92
    if-nez p1, :cond_1

    .line 93
    sget-object v2, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    const-string v3, "Preference group is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 98
    sget-object v2, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    const-string v3, "onPreferenceGroupChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedPreferenceGroupObject:Ljava/lang/Object;

    monitor-enter v3

    .line 102
    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    .line 103
    iput-object p2, p0, Lcom/motorola/camera/BlurCheckin;->mOtherKeys:[Ljava/lang/String;

    .line 104
    const-string v1, ""

    .line 105
    .local v1, usecase:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    const v4, 0x7f0b0024

    invoke-virtual {v2, v4}, Lcom/motorola/camera/CameraApp;->getString(I)Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    invoke-virtual {v2}, Lcom/motorola/camera/PreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v4

    const v5, 0x7f0b0024

    invoke-virtual {v4, v5}, Lcom/motorola/camera/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 108
    const-string v2, "Camera"

    iput-object v2, p0, Lcom/motorola/camera/BlurCheckin;->mUseCase:Ljava/lang/String;

    .line 113
    :goto_1
    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin;->mUserChangedSettings:Z

    if-eqz v2, :cond_5

    .line 114
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;

    const-string v4, "pref_camera_mode_key"

    invoke-virtual {v2, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ListPreference;

    .line 118
    .local v0, preference:Lcom/motorola/camera/ListPreference;
    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {v0}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HDR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    iget v2, p0, Lcom/motorola/camera/BlurCheckin;->mHDRRecommendationAccepted:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/motorola/camera/BlurCheckin;->mHDRRecommendationAccepted:I

    .line 124
    :cond_3
    const/4 v0, 0x0

    .line 126
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin;->mUserChangedSettings:Z

    .line 128
    .end local v0           #preference:Lcom/motorola/camera/ListPreference;
    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 131
    sget-object v2, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    const-string v3, "onPreferenceGroupChanged done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_6
    :try_start_1
    const-string v2, "Camcorder"

    iput-object v2, p0, Lcom/motorola/camera/BlurCheckin;->mUseCase:Ljava/lang/String;

    goto :goto_1

    .line 128
    .end local v1           #usecase:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setAutoFocusModeUsed(Z)V
    .locals 0
    .parameter "autoFocusModeUsed"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/motorola/camera/BlurCheckin;->mAutoFocusModeUsed:Z

    .line 222
    return-void
.end method

.method public setCameraLaunchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, action:Ljava/lang/String;
    const-string v1, ""

    .line 173
    .local v1, result:Ljava/lang/String;
    const-string v2, "android.intent.action.CAMERA_BUTTON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const-string v1, "BTN"

    .line 183
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraLaunchActionObject:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_0
    iput-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mCameraLaunchAction:Ljava/lang/String;

    .line 185
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    return-void

    .line 176
    :cond_1
    const-string v2, "android.intent.action.CAMERA_BUTTON_INSTANT_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    const-string v1, "INST"

    goto :goto_0

    .line 179
    :cond_2
    const-string v2, "motorola.camera.intent.action.START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const-string v1, "GSTR"

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setCameraNotLaunched(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 189
    const-string v0, "FALSE_LAUNCH"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/BlurCheckin;->logEvent(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setCameraTimedOut()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mCameraAppTimedOut:Z

    .line 202
    return-void
.end method

.method public setCapturedDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 197
    iput-wide p1, p0, Lcom/motorola/camera/BlurCheckin;->mCapturedDuration:J

    .line 198
    return-void
.end method

.method public setCapturedOrientation(I)V
    .locals 0
    .parameter "capturedOrientation"

    .prologue
    .line 193
    iput p1, p0, Lcom/motorola/camera/BlurCheckin;->mCapturedOrientation:I

    .line 194
    return-void
.end method

.method public setFaceDetect(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/motorola/camera/BlurCheckin;->mFacDetectEnabled:Z

    .line 282
    return-void
.end method

.method public setFrontCameraUsed(Z)V
    .locals 0
    .parameter "frontCamera"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/motorola/camera/BlurCheckin;->mFrontCameraUsed:Z

    .line 236
    return-void
.end method

.method public setGridPopupClicked(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedHDRRecommendationOnObject:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRRecommendationOn:Z

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mUserChangedSettings:Z

    .line 277
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHDRDialogPreference(Z)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 239
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRDialogPreference:Z

    .line 240
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHDRRecommendationOff()V
    .locals 2

    .prologue
    .line 255
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedHDRRecommendationOnObject:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRRecommendationOn:Z

    .line 257
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHDRRecommendationOn()V
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedHDRRecommendationOnObject:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRRecommendationOn:Z

    .line 251
    monitor-exit v1

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInPocketDetected(Z)V
    .locals 0
    .parameter "inPocketDetcted"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/motorola/camera/BlurCheckin;->mInPocketDetected:Z

    .line 206
    return-void
.end method

.method public setInstantOnKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "keyEvent"

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mInstantButtonDownTime:J

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mInstantButtonUpTime:J

    goto :goto_0
.end method

.method public setLowLight(Z)V
    .locals 0
    .parameter "lowLight"

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/motorola/camera/BlurCheckin;->mLowLight:Z

    .line 290
    return-void
.end method

.method public setNumFacesDetected(I)V
    .locals 0
    .parameter "faces"

    .prologue
    .line 285
    iput p1, p0, Lcom/motorola/camera/BlurCheckin;->mNumFacesDetected:I

    .line 286
    return-void
.end method

.method public setTaptoFocusCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 225
    iput p1, p0, Lcom/motorola/camera/BlurCheckin;->mTapToFocusCount:I

    .line 226
    return-void
.end method

.method public setUserFeedbackPopupClicked()V
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRDialogPreference:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedmHDRDialogPreferenceClickedObject:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRDialogPreferenceClicked:Z

    .line 264
    monitor-exit v1

    .line 266
    :cond_0
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVolumeKeyUsed()V
    .locals 2

    .prologue
    .line 229
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedVolKeyUsedObject:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/BlurCheckin;->mVolumeKeyUsed:Z

    .line 231
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/BlurCheckin;->mCameraAppOpenTime:J

    .line 324
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/AppSettings;->addOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 325
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mKpiList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/CameraKpi;->setKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/ArrayList;)V

    .line 326
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 359
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 360
    sget-object v1, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    const-string v2, "stop enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/BlurCheckin;->mCameraAppCloseTime:J

    .line 363
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/AppSettings;->removeOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 364
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin;->mKpiList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0, v2}, Lcom/motorola/camera/CameraKpi;->unsetKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/ArrayList;)V

    .line 365
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraStopObject:Ljava/lang/Object;

    monitor-enter v2

    .line 366
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/BlurCheckin;->mCameraAppTimedOut:Z

    if-eqz v1, :cond_3

    .line 367
    const-string v1, "TIMED_OUT"

    invoke-virtual {p0, v1}, Lcom/motorola/camera/BlurCheckin;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraStopObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 381
    :try_start_3
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 387
    :cond_1
    :goto_2
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 388
    sget-object v1, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    const-string v2, "stop exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_2
    return-void

    .line 370
    :cond_3
    :try_start_4
    const-string v1, "USER_EXITED_APP"

    invoke-virtual {p0, v1}, Lcom/motorola/camera/BlurCheckin;->logEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v1, Lcom/motorola/camera/BlurCheckin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "security exeception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 375
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public updateHDRRecommended()V
    .locals 2

    .prologue
    .line 243
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin;->mSynchronizedHDRRecommendedObject:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRRecommended:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/BlurCheckin;->mHDRRecommended:I

    .line 245
    monitor-exit v1

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
