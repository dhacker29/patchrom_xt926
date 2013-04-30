.class public Lcom/motorola/camera/states/InitState;
.super Lcom/motorola/camera/states/AbstractState;
.source "InitState.java"

# interfaces
.implements Lcom/motorola/camera/saving/SaveHelperListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "MotoCameraInit"

.field private static sInitState:Lcom/motorola/camera/states/InitState;


# instance fields
.field private volatile mEnoughMemoryToSave:Z

.field private volatile mInitComplete:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/motorola/camera/states/AbstractState;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/states/InitState;->mEnoughMemoryToSave:Z

    .line 64
    return-void
.end method

.method public static getInstance()Lcom/motorola/camera/states/InitState;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/motorola/camera/states/InitState;->sInitState:Lcom/motorola/camera/states/InitState;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/motorola/camera/states/InitState;

    invoke-direct {v0}, Lcom/motorola/camera/states/InitState;-><init>()V

    sput-object v0, Lcom/motorola/camera/states/InitState;->sInitState:Lcom/motorola/camera/states/InitState;

    .line 57
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/InitState;->sInitState:Lcom/motorola/camera/states/InitState;

    return-object v0
.end method

.method private goToStateComplete()V
    .locals 2

    .prologue
    .line 159
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraInit"

    const-string v1, "goToStateComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/states/InitState;->mEnoughMemoryToSave:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/states/InitState;->mInitComplete:Z

    if-eqz v0, :cond_2

    .line 161
    invoke-static {}, Lcom/motorola/camera/states/IdleState;->instance()Lcom/motorola/camera/states/IdleState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/InitState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->CAPTURE_WAIT_ON_SAVE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_0
.end method

.method private static setMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v1, Lcom/motorola/camera/states/InitState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/states/InitState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/states/InitState;->sAppSettings:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/states/InitState;->sAppSettings:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getModeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/modes/AbstractMode;

    sput-object v1, Lcom/motorola/camera/states/InitState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    .line 82
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraInit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/states/AbstractState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v3}, Lcom/motorola/camera/modes/AbstractMode;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/InstantiationException;
    throw v0

    .line 85
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/IllegalAccessException;
    throw v0

    .line 87
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/ClassNotFoundException;
    throw v0
.end method


# virtual methods
.method protected displayChange()V
    .locals 2

    .prologue
    .line 186
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraInit"

    const-string v1, "consumming event, closing application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    return-void
.end method

.method protected getState()Lcom/motorola/camera/states/StateManager$CAMERA_STATE;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->INIT:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    return-object v0
.end method

.method protected handleModesCallback(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 170
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraInit"

    const-string v1, "State Complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/states/InitState;->mInitComplete:Z

    .line 172
    sget-object v0, Lcom/motorola/camera/states/InitState;->sFocusManager:Lcom/motorola/camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/camera/FocusManager;->startPreviewDone()V

    .line 173
    sget-object v0, Lcom/motorola/camera/states/InitState;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/SaveHelper;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/motorola/camera/states/InitState;->goToStateComplete()V

    .line 182
    :goto_0
    return-void

    .line 176
    :cond_1
    sget-object v0, Lcom/motorola/camera/states/InitState;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveHelper;->requestConnectNotification(Lcom/motorola/camera/saving/SaveHelperListener;)V

    goto :goto_0

    .line 179
    :cond_2
    invoke-super {p0, p1}, Lcom/motorola/camera/states/AbstractState;->handleModesCallback(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onEntry()V
    .locals 4

    .prologue
    .line 94
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraInit"

    const-string v2, "onEntry"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/states/InitState;->mInitComplete:Z

    .line 97
    invoke-virtual {p0}, Lcom/motorola/camera/states/InitState;->dispatchOnEntry()V

    .line 101
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/states/InitState;->setMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    sget-object v1, Lcom/motorola/camera/states/InitState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    iget-object v2, p0, Lcom/motorola/camera/states/AbstractState;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/modes/AbstractMode;->startInit(Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;)V

    .line 108
    invoke-static {}, Lcom/motorola/camera/FocusManager;->getInstance()Lcom/motorola/camera/FocusManager;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/states/InitState;->sFocusManager:Lcom/motorola/camera/FocusManager;

    .line 110
    sget-object v1, Lcom/motorola/camera/states/InitState;->sFocusManager:Lcom/motorola/camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/camera/FocusManager;->start()V

    .line 113
    sget-object v1, Lcom/motorola/camera/states/InitState;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/SaveHelper;->serviceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    sget-object v1, Lcom/motorola/camera/states/InitState;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    sget-object v2, Lcom/motorola/camera/states/InitState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v2}, Lcom/motorola/camera/modes/AbstractMode;->getPicSize()I

    move-result v2

    sget-object v3, Lcom/motorola/camera/states/InitState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v3}, Lcom/motorola/camera/modes/AbstractMode;->getPicNum()I

    move-result v3

    invoke-virtual {v1, v2, v3, p0}, Lcom/motorola/camera/saving/SaveHelper;->requestAvailableMemoryUpdate(IILcom/motorola/camera/saving/SaveHelperListener;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/states/InitState;->mEnoughMemoryToSave:Z

    .line 118
    :cond_1
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCameraKPI"

    const-string v2, "initstate onEntry complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    invoke-static {}, Lcom/motorola/camera/states/CloseState;->instance()Lcom/motorola/camera/states/CloseState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/states/InitState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    goto :goto_0
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 123
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraInit"

    const-string v1, "onExit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/states/InitState;->dispatchOnExit()V

    .line 126
    return-void
.end method

.method public onMemoryAvailable()V
    .locals 2

    .prologue
    .line 151
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraInit"

    const-string v1, "onMemoryAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/states/InitState;->mEnoughMemoryToSave:Z

    .line 153
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->CAPTURE_WAIT_ON_SAVE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/states/InitState;->goToStateComplete()V

    .line 155
    return-void
.end method

.method public onSaveImageServiceConnected()V
    .locals 2

    .prologue
    .line 139
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraInit"

    const-string v1, "save image service Connected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/states/InitState;->goToStateComplete()V

    .line 141
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraInit"

    const-string v1, "save image service Connected complete "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    return-void
.end method
