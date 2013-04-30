.class public Lcom/motorola/camera/states/CloseState;
.super Lcom/motorola/camera/states/AbstractState;
.source "CloseState.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MotoCameraClose"

.field private static sCloseState:Lcom/motorola/camera/states/CloseState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/motorola/camera/states/AbstractState;-><init>()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/motorola/camera/states/CloseState;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/motorola/camera/states/CloseState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/states/CloseState;->sCloseState:Lcom/motorola/camera/states/CloseState;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/motorola/camera/states/CloseState;

    invoke-direct {v0}, Lcom/motorola/camera/states/CloseState;-><init>()V

    sput-object v0, Lcom/motorola/camera/states/CloseState;->sCloseState:Lcom/motorola/camera/states/CloseState;

    .line 50
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/CloseState;->sCloseState:Lcom/motorola/camera/states/CloseState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public closeApplication()V
    .locals 2

    .prologue
    .line 87
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraClose"

    const-string v1, "Already closing application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method protected displayChange()V
    .locals 2

    .prologue
    .line 102
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraClose"

    const-string v1, "consumming event, closing application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return-void
.end method

.method protected getState()Lcom/motorola/camera/states/StateManager$CAMERA_STATE;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->CLOSE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    return-object v0
.end method

.method public onEntry()V
    .locals 2

    .prologue
    .line 54
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraClose"

    const-string v1, "onEntry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/states/CloseState;->dispatchOnEntry()V

    .line 58
    sget-object v0, Lcom/motorola/camera/states/CloseState;->sFocusManager:Lcom/motorola/camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/camera/FocusManager;->cleanup()V

    .line 59
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ZoomManager;->reset()V

    .line 60
    sget-object v0, Lcom/motorola/camera/states/CloseState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->cleanup()V

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/camera/states/CloseState;->sCloseState:Lcom/motorola/camera/states/CloseState;

    .line 66
    invoke-virtual {p0}, Lcom/motorola/camera/states/CloseState;->clearOnStateChangeListener()V

    .line 67
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onHandleFatalError()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public pauseApplication()V
    .locals 2

    .prologue
    .line 92
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraClose"

    const-string v1, "Already closing application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void
.end method
