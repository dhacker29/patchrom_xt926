.class public Lcom/motorola/camera/EnvFeedbackManager;
.super Ljava/lang/Object;
.source "EnvFeedbackManager.java"

# interfaces
.implements Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/EnvFeedbackManager$1;,
        Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;,
        Lcom/motorola/camera/EnvFeedbackManager$FocusFeedback;
    }
.end annotation


# static fields
.field public static final CAF_STATUS_IDLE:I = 0x1

.field public static final CAF_STATUS_RUNNING:I = 0x0

.field public static final CAF_STATUS_SUSPENDED:I = 0x2

.field public static final ENV_DETECT_CAF_STATUS:I = 0x2

.field public static final ENV_DETECT_HDR:I = 0x3

.field public static final ENV_DETECT_IS:I = 0x4

.field public static final ENV_DETECT_LOWLIGHT:I = 0x0

.field public static final ENV_DETECT_SHAKE:I = 0x1

.field public static final HANDSHAKE_DATA:Ljava/lang/String; = "handshake-data"

.field public static final HDR_DATA:Ljava/lang/String; = "hdr"

.field private static final TAG:Ljava/lang/String; = "EnvFeedbackManager"


# instance fields
.field private mFocusListener:Lcom/motorola/camera/EnvFeedbackManager$FocusFeedback;

.field private mPause:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/camera/EnvFeedbackManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/motorola/camera/EnvFeedbackManager;->mPause:Z

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/camera/EnvFeedbackManager;)Lcom/motorola/camera/EnvFeedbackManager$FocusFeedback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/camera/EnvFeedbackManager;->mFocusListener:Lcom/motorola/camera/EnvFeedbackManager$FocusFeedback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/camera/EnvFeedbackManager;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/camera/EnvFeedbackManager;->handleHandshakeEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/camera/EnvFeedbackManager;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/camera/EnvFeedbackManager;->handleHDREvent(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/camera/EnvFeedbackManager;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/camera/EnvFeedbackManager;->handleISEvent(Ljava/lang/Boolean;)V

    return-void
.end method

.method private handleHDREvent(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "hdr"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ENV_HDR:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method private handleHandshakeEvent(Ljava/lang/Integer;)V
    .locals 3
    .parameter "eventData"

    .prologue
    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "handshake-data"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ENV_HANDSHAKE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method private handleISEvent(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 126
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "EnvFeedbackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image Stabilization"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    return-void
.end method

.method private pauseFeedbackEngine()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/EnvFeedbackManager;->mPause:Z

    .line 106
    return-void
.end method

.method private startFeedbackEngine()V
    .locals 5

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, cb:Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;
    :try_start_0
    new-instance v1, Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;-><init>(Lcom/motorola/camera/EnvFeedbackManager;Lcom/motorola/camera/EnvFeedbackManager$1;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #cb:Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;
    .local v1, cb:Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;
    move-object v0, v1

    .line 96
    .end local v1           #cb:Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;
    .restart local v0       #cb:Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;
    :goto_0
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/Device;->setEnvCallback(Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;)V

    .line 97
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/camera/EnvFeedbackManager;->mPause:Z

    .line 98
    return-void

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, e:Ljava/lang/NoClassDefFoundError;
    const-string v3, "EnvFeedbackManager"

    const-string v4, "No Feebback manager available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopFeedbackEngine()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Device;->setEnvCallback(Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onEntry(Lcom/motorola/camera/states/StateManager$CAMERA_STATE;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 2
    .parameter "state"
    .parameter "mode"

    .prologue
    .line 72
    sget-object v0, Lcom/motorola/camera/EnvFeedbackManager$1;->$SwitchMap$com$motorola$camera$states$StateManager$CAMERA_STATE:[I

    invoke-virtual {p1}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 74
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/camera/EnvFeedbackManager;->startFeedbackEngine()V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/camera/EnvFeedbackManager;->pauseFeedbackEngine()V

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/camera/EnvFeedbackManager;->stopFeedbackEngine()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onExit(Lcom/motorola/camera/states/StateManager$CAMERA_STATE;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 2
    .parameter "state"
    .parameter "mode"

    .prologue
    .line 86
    const-string v0, "EnvFeedbackManager"

    const-string v1, "DO NOTHING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public setFeedbackListener(Lcom/motorola/camera/EnvFeedbackManager$FocusFeedback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/motorola/camera/EnvFeedbackManager;->mFocusListener:Lcom/motorola/camera/EnvFeedbackManager$FocusFeedback;

    .line 69
    return-void
.end method
