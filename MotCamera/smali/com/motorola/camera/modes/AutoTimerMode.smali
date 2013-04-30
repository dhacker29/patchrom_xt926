.class public Lcom/motorola/camera/modes/AutoTimerMode;
.super Lcom/motorola/camera/modes/StillMode;
.source "AutoTimerMode.java"


# static fields
.field private static final CAPTURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AutoTimerMode"

.field private static final UPDATE:I = 0x0

.field private static final UPDATE_TIME:I = 0x3e8


# instance fields
.field private mCurrentTime:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/motorola/camera/modes/StillMode;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/modes/AutoTimerMode;->mCurrentTime:I

    .line 22
    new-instance v0, Lcom/motorola/camera/modes/AutoTimerMode$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/modes/AutoTimerMode$1;-><init>(Lcom/motorola/camera/modes/AutoTimerMode;)V

    iput-object v0, p0, Lcom/motorola/camera/modes/AutoTimerMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/modes/AutoTimerMode;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/motorola/camera/modes/AutoTimerMode;->mCurrentTime:I

    return v0
.end method

.method static synthetic access$010(Lcom/motorola/camera/modes/AutoTimerMode;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/motorola/camera/modes/AutoTimerMode;->mCurrentTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/motorola/camera/modes/AutoTimerMode;->mCurrentTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/camera/modes/AutoTimerMode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/motorola/camera/modes/AutoTimerMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancelCaptureRequest()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/motorola/camera/modes/AutoTimerMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/modes/AutoTimerMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    :cond_0
    iput v1, p0, Lcom/motorola/camera/modes/AutoTimerMode;->mCurrentTime:I

    .line 65
    return-void
.end method

.method public getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

.method public preCapture()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/motorola/camera/modes/StillMode;->preCapture()V

    .line 52
    iget-object v0, p0, Lcom/motorola/camera/modes/AutoTimerMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getAutoTimerSetting()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/modes/AutoTimerMode;->mCurrentTime:I

    .line 54
    return-void
.end method
