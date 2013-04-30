.class public Lcom/motorola/camera/states/IdleState;
.super Lcom/motorola/camera/states/AbstractState;
.source "IdleState.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MotoCameraIdle"

.field private static sIdleState:Lcom/motorola/camera/states/IdleState;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/motorola/camera/states/AbstractState;-><init>()V

    .line 51
    return-void
.end method

.method public static declared-synchronized instance()Lcom/motorola/camera/states/IdleState;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/motorola/camera/states/IdleState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sIdleState:Lcom/motorola/camera/states/IdleState;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/motorola/camera/states/IdleState;

    invoke-direct {v0}, Lcom/motorola/camera/states/IdleState;-><init>()V

    sput-object v0, Lcom/motorola/camera/states/IdleState;->sIdleState:Lcom/motorola/camera/states/IdleState;

    .line 61
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sIdleState:Lcom/motorola/camera/states/IdleState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cancelFocus()V
    .locals 2

    .prologue
    .line 115
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraIdle"

    const-string v1, "shutter cancel called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sFocusManager:Lcom/motorola/camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/camera/FocusManager;->cancelFocus()V

    .line 117
    return-void
.end method

.method public capture()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraIdle"

    const-string v1, "capture called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    sput-boolean v2, Lcom/motorola/camera/Camera;->mPictureTaken:Z

    .line 101
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->canCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/states/IdleState;->sAppSettings:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/SaveHelper;->checkRemainingSpace(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Lcom/motorola/camera/states/PreCaptureState;->instance()Lcom/motorola/camera/states/PreCaptureState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/IdleState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 104
    :cond_1
    return v2
.end method

.method public focus()V
    .locals 2

    .prologue
    .line 109
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraIdle"

    const-string v1, "shutter down called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sFocusManager:Lcom/motorola/camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/camera/FocusManager;->focus()V

    .line 111
    return-void
.end method

.method protected getState()Lcom/motorola/camera/states/StateManager$CAMERA_STATE;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->IDLE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    return-object v0
.end method

.method protected inactivityTimeout()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method protected launchGallery(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "filePath"
    .parameter "type"
    .parameter "id"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/motorola/camera/states/AbstractState;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-static {p1, p2, p3, p4}, Lcom/motorola/camera/Util;->getGalleryIntent(Ljava/lang/String;Ljava/lang/String;J)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/states/StateManager;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    .line 168
    return-void
.end method

.method protected launchMotocast()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/motorola/camera/states/AbstractState;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-static {}, Lcom/motorola/camera/Util;->getMotocastIntent()Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/states/StateManager;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    .line 173
    return-void
.end method

.method public onEntry()V
    .locals 2

    .prologue
    .line 66
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraIdle"

    const-string v1, "onEntry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 68
    :cond_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_CAMCORDER_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 70
    :cond_2
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 71
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 72
    :cond_3
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 73
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_RESUME_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 75
    :cond_4
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ZoomManager;->onIdle()V

    .line 77
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sFocusManager:Lcom/motorola/camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/camera/FocusManager;->resetFocus()V

    .line 79
    invoke-virtual {p0}, Lcom/motorola/camera/states/IdleState;->dispatchOnEntry()V

    .line 80
    return-void
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 84
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraIdle"

    const-string v1, "onExit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/states/IdleState;->dispatchOnExit()V

    .line 87
    return-void
.end method

.method protected settingsChange(Ljava/lang/String;F)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 149
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/AppSettings;->setSetting(Ljava/lang/String;F)Z

    .line 150
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->setParameters()V

    .line 151
    return-void
.end method

.method public settingsChange(Ljava/lang/String;IJ)V
    .locals 3
    .parameter "key"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 132
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraIdle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings change for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/AppSettings;->isModeSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/motorola/camera/AppSettings;->getModefromIndex(I)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/IdleState;->switchMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 145
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/AppSettings;->isRestartRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/AppSettings;->setSetting(Ljava/lang/String;I)Z

    .line 137
    invoke-static {}, Lcom/motorola/camera/states/InitState;->getInstance()Lcom/motorola/camera/states/InitState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/IdleState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/AppSettings;->setSetting(Ljava/lang/String;I)Z

    .line 140
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->setParameters()V

    .line 141
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->reloadPreferenceGroup()V

    .line 142
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->setParameters()V

    .line 143
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->reloadPreferenceGroup()V

    goto :goto_0
.end method

.method protected storageEvent(ZLjava/lang/String;)V
    .locals 3
    .parameter "mount"
    .parameter "path"

    .prologue
    .line 199
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraIdle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " storageEvent: mount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/saving/SaveHelper;->storageEvent(ZLjava/lang/String;)Z

    .line 201
    return-void
.end method

.method public switchMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 121
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sAppSettings:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 122
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraIdle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already in desired capture mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/AppSettings;->setMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 126
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->cleanupForModeSwitch()V

    .line 127
    invoke-static {}, Lcom/motorola/camera/states/InitState;->getInstance()Lcom/motorola/camera/states/InitState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/IdleState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    goto :goto_0
.end method

.method public toggleFrontBackDevice()V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->toggleCamera()V

    .line 155
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->cleanupForModeSwitch()V

    .line 156
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sAppSettings:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sAppSettings:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->setSingleshotMode()V

    .line 162
    :goto_0
    invoke-static {}, Lcom/motorola/camera/states/InitState;->getInstance()Lcom/motorola/camera/states/InitState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/IdleState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 163
    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sAppSettings:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->setCamcorderMode()V

    goto :goto_0
.end method

.method protected touchToFocus(Landroid/view/MotionEvent;II)V
    .locals 2
    .parameter "event"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 193
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TAP_FOCUS_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 194
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/IdleState;->sFocusManager:Lcom/motorola/camera/FocusManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/camera/FocusManager;->touchEvent(Landroid/view/MotionEvent;II)V

    .line 195
    return-void
.end method

.method protected zoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/motorola/camera/states/AbstractState;->zoom(I)V

    .line 183
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ZoomManager;->zoom(I)V

    .line 184
    return-void
.end method

.method protected zoom(Z)V
    .locals 1
    .parameter "in"

    .prologue
    .line 188
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ZoomManager;->zoom(Z)V

    .line 189
    return-void
.end method
