.class public abstract Lcom/motorola/camera/states/AbstractState;
.super Ljava/lang/Object;
.source "AbstractState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/states/AbstractState$1;,
        Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "AbstractState"

.field protected static sAppSettings:Lcom/motorola/camera/AppSettings;

.field protected static sFocusManager:Lcom/motorola/camera/FocusManager;

.field protected static sMode:Lcom/motorola/camera/modes/AbstractMode;

.field protected static sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

.field protected static sStateChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mStateManager:Lcom/motorola/camera/states/StateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/states/AbstractState;->sAppSettings:Lcom/motorola/camera/AppSettings;

    .line 57
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/states/AbstractState;->sSaveHelper:Lcom/motorola/camera/saving/SaveHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method protected addOnStateChangeListener(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 196
    sget-object v0, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    .line 200
    :cond_0
    sget-object v0, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method protected batteryLow()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method protected cancelFocus()V
    .locals 2

    .prologue
    .line 376
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    const-string v1, "state does not allow shutter cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    return-void
.end method

.method protected capture()Z
    .locals 2

    .prologue
    .line 381
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    const-string v1, "state does not support capture!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected clearOnStateChangeListener()V
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    :cond_0
    return-void
.end method

.method protected closeApplication()V
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/motorola/camera/states/CloseState;->instance()Lcom/motorola/camera/states/CloseState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/AbstractState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 181
    return-void
.end method

.method protected dispatchOnEntry()V
    .locals 5

    .prologue
    .line 227
    sget-object v2, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 234
    :cond_0
    return-void

    .line 230
    :cond_1
    sget-object v2, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 231
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 232
    sget-object v2, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;

    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->getState()Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;->onEntry(Lcom/motorola/camera/states/StateManager$CAMERA_STATE;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected dispatchOnExit()V
    .locals 5

    .prologue
    .line 240
    sget-object v2, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 247
    :cond_0
    return-void

    .line 243
    :cond_1
    sget-object v2, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 244
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 245
    sget-object v2, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;

    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->getState()Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;->onExit(Lcom/motorola/camera/states/StateManager$CAMERA_STATE;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected displayChange()V
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lcom/motorola/camera/states/AbstractState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->setDisplayOrientation()V

    .line 373
    return-void
.end method

.method protected error(I)V
    .locals 2
    .parameter "error"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/motorola/camera/states/AbstractState;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-static {p1}, Lcom/motorola/camera/states/StateModeInterfaceData;->getErrorMsgId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/states/StateManager;->onError(I)V

    .line 460
    return-void
.end method

.method protected focus()V
    .locals 2

    .prologue
    .line 368
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    const-string v1, "state does not allow shutter down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    return-void
.end method

.method protected getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/motorola/camera/states/AbstractState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getState()Lcom/motorola/camera/states/StateManager$CAMERA_STATE;
.end method

.method protected handleModesCallback(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 440
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 448
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->getState()Lcom/motorola/camera/states/StateManager$CAMERA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 445
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/AbstractState;->error(I)V

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected inactivityTimeout()Z
    .locals 2

    .prologue
    .line 431
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    const-string v1, "state does not allow  exit of  application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected launchGallery(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "filePath"
    .parameter "type"
    .parameter "id"

    .prologue
    .line 360
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    const-string v1, "state doesn\'t support launching gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    return-void
.end method

.method protected launchMotocast()V
    .locals 2

    .prologue
    .line 364
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    const-string v1, "state does not allow launching motocast: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    return-void
.end method

.method protected muteToggle(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 349
    return-void
.end method

.method protected abstract onEntry()V
.end method

.method protected abstract onExit()V
.end method

.method protected onHandleFatalError()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/motorola/camera/states/AbstractState;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-static {}, Lcom/motorola/camera/states/CloseState;->instance()Lcom/motorola/camera/states/CloseState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/states/StateManager;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method protected pauseApplication()V
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/motorola/camera/states/CloseState;->instance()Lcom/motorola/camera/states/CloseState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/AbstractState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 188
    return-void
.end method

.method protected removeOnStateChangeListener(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 209
    sget-object v0, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/motorola/camera/states/AbstractState;->sStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    return-void
.end method

.method protected request(Lcom/motorola/camera/Event;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 256
    const/4 v3, 0x0

    .line 257
    .local v3, handled:Z
    sget-object v9, Lcom/motorola/camera/states/AbstractState$1;->$SwitchMap$com$motorola$camera$Event$ACTION:[I

    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getAction()Lcom/motorola/camera/Event$ACTION;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/camera/Event$ACTION;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 334
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uiRequest Not yet implemented: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getAction()Lcom/motorola/camera/Event$ACTION;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/camera/Event$ACTION;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 259
    :pswitch_0
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 260
    .local v1, bundleStorage:Landroid/os/Bundle;
    const-string v9, "mounted"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "mount-path"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/motorola/camera/states/AbstractState;->storageEvent(ZLjava/lang/String;)V

    .line 337
    .end local v1           #bundleStorage:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v3

    .line 263
    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/motorola/camera/AppSettings;->setLowBattery(Z)V

    .line 264
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->batteryLow()V

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/motorola/camera/AppSettings;->setLowBattery(Z)V

    goto :goto_0

    .line 271
    :pswitch_3
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 272
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->capture()Z

    move-result v3

    .line 273
    goto :goto_0

    .line 275
    :pswitch_4
    sget-boolean v9, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_CAMCORDER_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 276
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getCaptureMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/motorola/camera/states/AbstractState;->switchMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    goto :goto_0

    .line 279
    :pswitch_5
    sget-boolean v9, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->toggleFrontBackDevice()V

    goto :goto_0

    .line 283
    :pswitch_6
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->inactivityTimeout()Z

    move-result v3

    .line 284
    goto :goto_0

    .line 286
    :pswitch_7
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->systemInterruption()Z

    move-result v3

    .line 287
    goto :goto_0

    .line 289
    :pswitch_8
    const-string v9, "pref_motocast_key"

    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getPrefKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->launchMotocast()V

    goto :goto_0

    .line 291
    :cond_3
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 292
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "pref_key"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "exposure"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 294
    .local v8, value:F
    invoke-virtual {p0, v4, v8}, Lcom/motorola/camera/states/AbstractState;->settingsChange(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 296
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #value:F
    :cond_4
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getPrefKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getIndex()I

    move-result v10

    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/motorola/camera/states/AbstractState;->settingsChange(Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 300
    :pswitch_9
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 301
    .local v0, bundle:Landroid/os/Bundle;
    const-string v9, "path"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "type"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/motorola/camera/states/AbstractState;->launchGallery(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 305
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 306
    .local v2, bundleZoom:Landroid/os/Bundle;
    const-string v9, "value"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 307
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "value"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/motorola/camera/states/AbstractState;->zoom(I)V

    goto/16 :goto_0

    .line 308
    :cond_5
    const-string v9, "direction"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 309
    const-string v9, "direction"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "in"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/motorola/camera/states/AbstractState;->zoom(Z)V

    goto/16 :goto_0

    .line 313
    .end local v2           #bundleZoom:Landroid/os/Bundle;
    :pswitch_b
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->videoSnapshotCapture()V

    goto/16 :goto_0

    .line 316
    :pswitch_c
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "value"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/motorola/camera/states/AbstractState;->muteToggle(Z)V

    goto/16 :goto_0

    .line 319
    :pswitch_d
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v6

    .line 320
    .local v6, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getLeft()I

    move-result v5

    .line 321
    .local v5, left:I
    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getTop()I

    move-result v7

    .line 322
    .local v7, top:I
    invoke-virtual {p0, v6, v5, v7}, Lcom/motorola/camera/states/AbstractState;->touchToFocus(Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    .line 325
    .end local v5           #left:I
    .end local v6           #motionEvent:Landroid/view/MotionEvent;
    .end local v7           #top:I
    :pswitch_e
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->cancelFocus()V

    goto/16 :goto_0

    .line 328
    :pswitch_f
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->focus()V

    goto/16 :goto_0

    .line 331
    :pswitch_10
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->displayChange()V

    goto/16 :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected final setActive(Lcom/motorola/camera/states/StateManager;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/motorola/camera/states/AbstractState;->mStateManager:Lcom/motorola/camera/states/StateManager;

    .line 136
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->onEntry()V

    .line 137
    return-void
.end method

.method protected setSurface(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 155
    sget-object v0, Lcom/motorola/camera/states/AbstractState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/modes/AbstractMode;->setSurface(Landroid/view/SurfaceHolder;)V

    .line 156
    return-void
.end method

.method protected settingsChange(Ljava/lang/String;F)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 427
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    const-string v1, "state does not support settings changes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    return-void
.end method

.method protected settingsChange(Ljava/lang/String;IJ)V
    .locals 2
    .parameter "key"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 417
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    const-string v1, "state does not support settings changes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    return-void
.end method

.method protected storageEvent(ZLjava/lang/String;)V
    .locals 0
    .parameter "mount"
    .parameter "path"

    .prologue
    .line 342
    return-void
.end method

.method protected surfaceDestroyed()V
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/motorola/camera/states/AbstractState;->sMode:Lcom/motorola/camera/modes/AbstractMode;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode;->surfaceDestroyed()V

    .line 164
    invoke-static {}, Lcom/motorola/camera/states/CloseState;->instance()Lcom/motorola/camera/states/CloseState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/states/AbstractState;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 165
    return-void
.end method

.method protected switchMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 397
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state does not support switching to mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    return-void
.end method

.method protected final switchToState(Lcom/motorola/camera/states/AbstractState;)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/motorola/camera/states/AbstractState;->onExit()V

    .line 113
    iget-object v0, p0, Lcom/motorola/camera/states/AbstractState;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/states/StateManager;->switchToState(Lcom/motorola/camera/states/AbstractState;)V

    .line 114
    return-void
.end method

.method protected systemInterruption()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleFrontBackDevice()V
    .locals 2

    .prologue
    .line 405
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    const-string v1, "state does not support toggleing camera device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    return-void
.end method

.method protected touchToFocus(Landroid/view/MotionEvent;II)V
    .locals 2
    .parameter "event"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 436
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    const-string v1, "state does not supprt touch to focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    return-void
.end method

.method protected videoSnapshotCapture()V
    .locals 2

    .prologue
    .line 386
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AbstractState"

    const-string v1, "state does not support video snapshot capture!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    return-void
.end method

.method protected zoom(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 353
    return-void
.end method

.method protected zoom(Z)V
    .locals 0
    .parameter "in"

    .prologue
    .line 357
    return-void
.end method
