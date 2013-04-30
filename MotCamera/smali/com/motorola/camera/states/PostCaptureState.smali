.class public Lcom/motorola/camera/states/PostCaptureState;
.super Lcom/motorola/camera/states/AbstractState;
.source "PostCaptureState.java"


# static fields
.field private static final ACTIVITY_POST_PROCESS:Ljava/lang/String; = "com.motorola.camera.PostProcessing"

.field protected static final TAG:Ljava/lang/String; = "MotoCameraPost"

.field private static sPostCaptureState:Lcom/motorola/camera/states/PostCaptureState;


# instance fields
.field private mEventName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/motorola/camera/states/AbstractState;-><init>()V

    .line 52
    return-void
.end method

.method public static declared-synchronized instance()Lcom/motorola/camera/states/PostCaptureState;
    .locals 2

    .prologue
    .line 60
    const-class v1, Lcom/motorola/camera/states/PostCaptureState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/states/PostCaptureState;->sPostCaptureState:Lcom/motorola/camera/states/PostCaptureState;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/motorola/camera/states/PostCaptureState;

    invoke-direct {v0}, Lcom/motorola/camera/states/PostCaptureState;-><init>()V

    sput-object v0, Lcom/motorola/camera/states/PostCaptureState;->sPostCaptureState:Lcom/motorola/camera/states/PostCaptureState;

    .line 63
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/PostCaptureState;->sPostCaptureState:Lcom/motorola/camera/states/PostCaptureState;
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
    .line 85
    sget-object v0, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->POST_CAPTURE:Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    return-object v0
.end method

.method protected handleModesCallback(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 90
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCameraPost"

    const-string v3, "State Complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 93
    invoke-static {}, Lcom/motorola/camera/states/InitState;->getInstance()Lcom/motorola/camera/states/InitState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/states/PostCaptureState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 108
    :goto_0
    return-void

    .line 94
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 96
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "output"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 99
    .local v1, outputUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.motorola.camera.PostProcessing"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    iget-object v2, p0, Lcom/motorola/camera/states/AbstractState;->mStateManager:Lcom/motorola/camera/states/StateManager;

    new-instance v3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const-string v4, "com.motorola.camera.PostProcessing"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/states/StateManager;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    goto :goto_0

    .line 106
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #outputUri:Landroid/net/Uri;
    :cond_2
    invoke-super {p0, p1}, Lcom/motorola/camera/states/AbstractState;->handleModesCallback(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onEntry()V
    .locals 2

    .prologue
    .line 68
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraPost"

    const-string v1, "onEntry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/states/PostCaptureState;->dispatchOnEntry()V

    .line 72
    sget-object v0, Lcom/motorola/camera/states/PostCaptureState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/modes/AbstractMode;->stopCapture(Z)V

    .line 73
    return-void
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 77
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraPost"

    const-string v1, "onExit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v0

    const-string v1, "POST_CAPTURE"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/BlurCheckin;->logEvent(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/motorola/camera/states/PostCaptureState;->dispatchOnExit()V

    .line 81
    return-void
.end method

.method protected storageEvent(ZLjava/lang/String;)V
    .locals 3
    .parameter "mount"
    .parameter "path"

    .prologue
    .line 112
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraPost"

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

    .line 113
    :cond_0
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/saving/SaveHelper;->storageEvent(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/motorola/camera/states/AbstractState;->mStateManager:Lcom/motorola/camera/states/StateManager;

    new-instance v1, Lcom/motorola/camera/Util$ReturnResult;

    invoke-direct {v1}, Lcom/motorola/camera/Util$ReturnResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/states/StateManager;->onClose(Lcom/motorola/camera/Util$ReturnResult;)V

    .line 116
    :cond_1
    return-void
.end method
