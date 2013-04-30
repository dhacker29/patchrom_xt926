.class public Lcom/motorola/camera/states/PreCaptureState;
.super Lcom/motorola/camera/states/AbstractState;
.source "PreCaptureState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/states/PreCaptureState$1;,
        Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;
    }
.end annotation


# static fields
.field private static FOCUS_COMPLETE:S = 0x0s

.field private static MODE_COMPLETE:S = 0x0s

.field protected static final TAG:Ljava/lang/String; = "MotoCameraPre"

.field private static sPreCaptureState:Lcom/motorola/camera/states/PreCaptureState;


# instance fields
.field private mStateCompleteMask:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0xf0

    sput-short v0, Lcom/motorola/camera/states/PreCaptureState;->FOCUS_COMPLETE:S

    .line 42
    const/16 v0, 0xf

    sput-short v0, Lcom/motorola/camera/states/PreCaptureState;->MODE_COMPLETE:S

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/motorola/camera/states/AbstractState;-><init>()V

    .line 40
    const/16 v0, 0x7f00

    iput-short v0, p0, Lcom/motorola/camera/states/PreCaptureState;->mStateCompleteMask:S

    .line 52
    return-void
.end method

.method public static declared-synchronized instance()Lcom/motorola/camera/states/PreCaptureState;
    .locals 2

    .prologue
    .line 60
    const-class v1, Lcom/motorola/camera/states/PreCaptureState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/states/PreCaptureState;->sPreCaptureState:Lcom/motorola/camera/states/PreCaptureState;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/motorola/camera/states/PreCaptureState;

    invoke-direct {v0}, Lcom/motorola/camera/states/PreCaptureState;-><init>()V

    sput-object v0, Lcom/motorola/camera/states/PreCaptureState;->sPreCaptureState:Lcom/motorola/camera/states/PreCaptureState;

    .line 63
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/PreCaptureState;->sPreCaptureState:Lcom/motorola/camera/states/PreCaptureState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected getState()Lcom/motorola/camera/states/StateManager$CAMERA_STATE;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->PRE_CAPTURE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    return-object v0
.end method

.method protected handleModesCallback(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 99
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 100
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;

    move-result-object v0

    .line 101
    .local v0, completeType:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraPre"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    sget-object v1, Lcom/motorola/camera/states/PreCaptureState$1;->$SwitchMap$com$motorola$camera$states$PreCaptureState$PRECAPTURE_COMPLETE_TYPE:[I

    invoke-virtual {v0}, Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_0
    iget-short v1, p0, Lcom/motorola/camera/states/PreCaptureState;->mStateCompleteMask:S

    const/16 v2, 0x7fff

    if-lt v1, v2, :cond_2

    .line 111
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraPre"

    const-string v2, "State Complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    invoke-static {}, Lcom/motorola/camera/states/CaptureState;->instance()Lcom/motorola/camera/states/CaptureState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/states/PreCaptureState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 114
    const/16 v1, 0x7f00

    iput-short v1, p0, Lcom/motorola/camera/states/PreCaptureState;->mStateCompleteMask:S

    .line 119
    .end local v0           #completeType:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;
    :cond_2
    :goto_1
    return-void

    .line 104
    .restart local v0       #completeType:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;
    :pswitch_0
    iget-short v1, p0, Lcom/motorola/camera/states/PreCaptureState;->mStateCompleteMask:S

    sget-short v2, Lcom/motorola/camera/states/PreCaptureState;->MODE_COMPLETE:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lcom/motorola/camera/states/PreCaptureState;->mStateCompleteMask:S

    goto :goto_0

    .line 107
    :pswitch_1
    iget-short v1, p0, Lcom/motorola/camera/states/PreCaptureState;->mStateCompleteMask:S

    sget-short v2, Lcom/motorola/camera/states/PreCaptureState;->FOCUS_COMPLETE:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lcom/motorola/camera/states/PreCaptureState;->mStateCompleteMask:S

    goto :goto_0

    .line 117
    .end local v0           #completeType:Lcom/motorola/camera/states/PreCaptureState$PRECAPTURE_COMPLETE_TYPE;
    :cond_3
    invoke-super {p0, p1}, Lcom/motorola/camera/states/AbstractState;->handleModesCallback(Landroid/os/Message;)V

    goto :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEntry()V
    .locals 2

    .prologue
    .line 68
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraPre"

    const-string v1, "onEntry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ZoomManager;->onPreCapture()V

    .line 72
    invoke-virtual {p0}, Lcom/motorola/camera/states/PreCaptureState;->dispatchOnEntry()V

    .line 74
    sget-object v0, Lcom/motorola/camera/states/PreCaptureState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->preCapture()V

    .line 76
    sget-object v0, Lcom/motorola/camera/states/PreCaptureState;->sFocusManager:Lcom/motorola/camera/FocusManager;

    iget-object v1, p0, Lcom/motorola/camera/states/AbstractState;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/FocusManager;->doSnap(Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;)V

    .line 77
    return-void
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 81
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraPre"

    const-string v1, "onExit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/states/PreCaptureState;->dispatchOnExit()V

    .line 84
    return-void
.end method

.method public pauseApplication()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/motorola/camera/states/PreCaptureState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->cancelCaptureRequest()V

    .line 94
    invoke-super {p0}, Lcom/motorola/camera/states/AbstractState;->pauseApplication()V

    .line 95
    return-void
.end method
