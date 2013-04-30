.class public Lcom/motorola/camera/states/CaptureState;
.super Lcom/motorola/camera/states/AbstractState;
.source "CaptureState.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MotoCameraCapture"

.field private static sCaptureState:Lcom/motorola/camera/states/CaptureState;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/motorola/camera/states/AbstractState;-><init>()V

    .line 48
    return-void
.end method

.method public static declared-synchronized instance()Lcom/motorola/camera/states/CaptureState;
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/motorola/camera/states/CaptureState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/states/CaptureState;->sCaptureState:Lcom/motorola/camera/states/CaptureState;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/motorola/camera/states/CaptureState;

    invoke-direct {v0}, Lcom/motorola/camera/states/CaptureState;-><init>()V

    sput-object v0, Lcom/motorola/camera/states/CaptureState;->sCaptureState:Lcom/motorola/camera/states/CaptureState;

    .line 59
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/CaptureState;->sCaptureState:Lcom/motorola/camera/states/CaptureState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected batteryLow()V
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lcom/motorola/camera/states/CaptureState;->sAppSettings:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v2, 0x7f0b008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Lcom/motorola/camera/states/PostCaptureState;->instance()Lcom/motorola/camera/states/PostCaptureState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/CaptureState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 149
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 2

    .prologue
    .line 84
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraCapture"

    const-string v1, "capture called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/CaptureState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->isStopCaptureAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lcom/motorola/camera/states/PostCaptureState;->instance()Lcom/motorola/camera/states/PostCaptureState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/CaptureState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 88
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public closeApplication()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/motorola/camera/states/CaptureState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/modes/AbstractMode;->stopCapture(Z)V

    .line 105
    invoke-static {}, Lcom/motorola/camera/states/CloseState;->instance()Lcom/motorola/camera/states/CloseState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/CaptureState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 106
    return-void
.end method

.method protected getState()Lcom/motorola/camera/states/StateManager$CAMERA_STATE;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->CAPTURING:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    return-object v0
.end method

.method protected handleModesCallback(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 154
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraCapture"

    const-string v1, "State Complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    invoke-static {}, Lcom/motorola/camera/states/PostCaptureState;->instance()Lcom/motorola/camera/states/PostCaptureState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/CaptureState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-super {p0, p1}, Lcom/motorola/camera/states/AbstractState;->handleModesCallback(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected muteToggle(Z)V
    .locals 1
    .parameter "mute"

    .prologue
    .line 98
    sget-object v0, Lcom/motorola/camera/states/CaptureState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/modes/AbstractMode;->toggleMute(Z)V

    .line 99
    return-void
.end method

.method public onEntry()V
    .locals 2

    .prologue
    .line 64
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraCapture"

    const-string v1, "onEntry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/CaptureState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->capture()V

    .line 67
    invoke-virtual {p0}, Lcom/motorola/camera/states/CaptureState;->dispatchOnEntry()V

    .line 68
    return-void
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 72
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraCapture"

    const-string v1, "onExit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/states/CaptureState;->dispatchOnExit()V

    .line 75
    return-void
.end method

.method public pauseApplication()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/motorola/camera/states/CaptureState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/modes/AbstractMode;->stopCapture(Z)V

    .line 111
    invoke-super {p0}, Lcom/motorola/camera/states/AbstractState;->pauseApplication()V

    .line 112
    return-void
.end method

.method protected storageEvent(ZLjava/lang/String;)V
    .locals 3
    .parameter "mount"
    .parameter "path"

    .prologue
    .line 131
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storageEvent: mount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/saving/SaveHelper;->storageEvent(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/motorola/camera/states/AbstractState;->mStateManager:Lcom/motorola/camera/states/StateManager;

    new-instance v1, Lcom/motorola/camera/Util$ReturnResult;

    invoke-direct {v1}, Lcom/motorola/camera/Util$ReturnResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/states/StateManager;->onClose(Lcom/motorola/camera/Util$ReturnResult;)V

    .line 135
    :cond_1
    return-void
.end method

.method protected systemInterruption()Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/motorola/camera/states/CaptureState;->capture()Z

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method protected touchToFocus(Landroid/view/MotionEvent;II)V
    .locals 1
    .parameter "event"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 126
    sget-object v0, Lcom/motorola/camera/states/CaptureState;->sFocusManager:Lcom/motorola/camera/FocusManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/camera/FocusManager;->touchEvent(Landroid/view/MotionEvent;II)V

    .line 127
    return-void
.end method

.method protected videoSnapshotCapture()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/motorola/camera/states/CaptureState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->captureVideoSnapshot()V

    .line 94
    return-void
.end method

.method protected zoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/motorola/camera/states/AbstractState;->zoom(I)V

    .line 116
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ZoomManager;->zoom(I)V

    .line 117
    return-void
.end method

.method protected zoom(Z)V
    .locals 1
    .parameter "in"

    .prologue
    .line 121
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ZoomManager;->zoom(Z)V

    .line 122
    return-void
.end method
