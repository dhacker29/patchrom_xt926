.class public Lcom/motorola/camera/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/Controller$ActivityCallbackInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCameraController"


# instance fields
.field private mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

.field private mActivityContext:Landroid/app/Activity;

.field private mBattery:Lcom/motorola/camera/Battery;

.field private mFeedbackMgr:Lcom/motorola/camera/EnvFeedbackManager;

.field private mLocation:Lcom/motorola/camera/LocationManager;

.field private mOrientationEventListener:Lcom/motorola/camera/OrientationEvent;

.field private mRootView:Landroid/view/ViewGroup;

.field private mStateManager:Lcom/motorola/camera/states/StateManager;

.field private mTelephony:Lcom/motorola/camera/Telephony;

.field private mUI:Lcom/motorola/camera/ui/UI;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "context"
    .parameter "rootView"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 56
    iput-object v0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    .line 57
    iput-object v0, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    .line 58
    iput-object v0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    .line 59
    iput-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/OrientationEvent;

    .line 107
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraController"

    const-string v1, "constructor - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iput-object p2, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    .line 110
    iput-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    .line 111
    new-instance v0, Lcom/motorola/camera/states/StateManager;

    invoke-direct {v0}, Lcom/motorola/camera/states/StateManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mStateManager:Lcom/motorola/camera/states/StateManager;

    .line 112
    return-void
.end method

.method private createComponents()V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/saving/SaveHelper;->startService()V

    .line 202
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/LocationManager;

    invoke-direct {v0}, Lcom/motorola/camera/LocationManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/OrientationEvent;

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lcom/motorola/camera/OrientationEvent;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/OrientationEvent;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/OrientationEvent;

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mBattery:Lcom/motorola/camera/Battery;

    if-nez v0, :cond_2

    .line 212
    new-instance v0, Lcom/motorola/camera/Battery;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Battery;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mBattery:Lcom/motorola/camera/Battery;

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mFeedbackMgr:Lcom/motorola/camera/EnvFeedbackManager;

    if-nez v0, :cond_3

    .line 216
    new-instance v0, Lcom/motorola/camera/EnvFeedbackManager;

    invoke-direct {v0}, Lcom/motorola/camera/EnvFeedbackManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mFeedbackMgr:Lcom/motorola/camera/EnvFeedbackManager;

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mTelephony:Lcom/motorola/camera/Telephony;

    if-nez v0, :cond_4

    .line 221
    new-instance v0, Lcom/motorola/camera/Telephony;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Telephony;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mTelephony:Lcom/motorola/camera/Telephony;

    .line 223
    :cond_4
    return-void
.end method

.method private deregisterForStateChangeEvents(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/states/StateManager;->removeOnStateChangeListener(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V

    .line 408
    return-void
.end method

.method private registerForStateChangeEvents(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/states/StateManager;->addOnStateChangeListener(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V

    .line 399
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Controller;->registerForStateChangeEvents(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V

    .line 235
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/LocationManager;->startLocationUpdates(Landroid/content/Context;)V

    .line 236
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->addOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 239
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/OrientationEvent;

    invoke-virtual {v0}, Lcom/motorola/camera/OrientationEvent;->enable()V

    .line 242
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mBattery:Lcom/motorola/camera/Battery;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Battery;->registerBatteryEvents(Landroid/content/Context;)V

    .line 245
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/saving/SaveHelper;->startStorageListener(Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 248
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mFeedbackMgr:Lcom/motorola/camera/EnvFeedbackManager;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Controller;->registerForStateChangeEvents(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V

    .line 249
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mFeedbackMgr:Lcom/motorola/camera/EnvFeedbackManager;

    invoke-static {}, Lcom/motorola/camera/FocusManager;->getInstance()Lcom/motorola/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/EnvFeedbackManager;->setFeedbackListener(Lcom/motorola/camera/EnvFeedbackManager$FocusFeedback;)V

    .line 252
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mTelephony:Lcom/motorola/camera/Telephony;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Telephony;->registerEvents(Landroid/content/Context;)V

    .line 253
    return-void
.end method

.method private setScreenParameters()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 284
    iget-object v6, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 285
    .local v0, display:Landroid/view/Display;
    const/4 v2, 0x0

    .line 287
    .local v2, mGetRawH:Ljava/lang/reflect/Method;
    :try_start_0
    const-class v6, Landroid/view/Display;

    const-string v7, "getRawHeight"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 291
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 293
    .local v3, mGetRawW:Ljava/lang/reflect/Method;
    :try_start_1
    const-class v6, Landroid/view/Display;

    const-string v7, "getRawWidth"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 298
    :cond_1
    :goto_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 300
    .local v4, rawCord:Landroid/graphics/Point;
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 302
    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Landroid/graphics/Point;->x:I

    .line 303
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Landroid/graphics/Point;->y:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    .line 313
    :cond_2
    :goto_2
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 314
    .local v5, screencord:Landroid/graphics/Point;
    invoke-virtual {v0, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 316
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "MotoCameraController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screen cord"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_3
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "MotoCameraController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rawCord"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_4
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-virtual {v6, v4, v5, v7}, Lcom/motorola/camera/AppSettings;->setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 320
    return-void

    .line 288
    .end local v3           #mGetRawW:Ljava/lang/reflect/Method;
    .end local v4           #rawCord:Landroid/graphics/Point;
    .end local v5           #screencord:Landroid/graphics/Point;
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/NoSuchMethodException;
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MotoCameraController"

    const-string v7, "Unable to retrieve the raw height"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    .restart local v3       #mGetRawW:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 295
    .restart local v1       #e:Ljava/lang/NoSuchMethodException;
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCameraController"

    const-string v7, "Unable to retrieve the raw width"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 304
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    .restart local v4       #rawCord:Landroid/graphics/Point;
    :catch_2
    move-exception v1

    .line 305
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "MotoCameraController"

    const-string v7, "Unable to retrieve the raw params"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 306
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 307
    .local v1, e:Ljava/lang/IllegalAccessException;
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "MotoCameraController"

    const-string v7, "Unable to retrieve the raw params"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 308
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 309
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "MotoCameraController"

    const-string v7, "Unable to retrieve the raw params"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private setSurface(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/states/StateManager;->setSurface(Landroid/view/SurfaceHolder;)V

    .line 390
    return-void
.end method

.method private unregisterListeners()V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->removeOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 261
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    invoke-virtual {v0}, Lcom/motorola/camera/LocationManager;->stopLocationUpdates()V

    .line 264
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/OrientationEvent;

    invoke-virtual {v0}, Lcom/motorola/camera/OrientationEvent;->disable()V

    .line 265
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/OrientationEvent;

    invoke-virtual {v0}, Lcom/motorola/camera/OrientationEvent;->clearOnRotationChangeListener()V

    .line 268
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mBattery:Lcom/motorola/camera/Battery;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Battery;->unregisterBatteryEvents(Landroid/content/Context;)V

    .line 271
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/saving/SaveHelper;->stopStorageListener()V

    .line 273
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Controller;->deregisterForStateChangeEvents(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V

    .line 274
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mFeedbackMgr:Lcom/motorola/camera/EnvFeedbackManager;

    invoke-direct {p0, v0}, Lcom/motorola/camera/Controller;->deregisterForStateChangeEvents(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V

    .line 277
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mTelephony:Lcom/motorola/camera/Telephony;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Telephony;->unregisterEvents(Landroid/content/Context;)V

    .line 278
    return-void
.end method


# virtual methods
.method public closeApplicationWithError(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    invoke-interface {v0, p1}, Lcom/motorola/camera/Controller$ActivityCallbackInterface;->closeApplicationWithError(I)V

    .line 456
    return-void
.end method

.method public closeApplicationwithResult(Lcom/motorola/camera/Util$ReturnResult;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    invoke-interface {v0, p1}, Lcom/motorola/camera/Controller$ActivityCallbackInterface;->closeApplicationwithResult(Lcom/motorola/camera/Util$ReturnResult;)V

    .line 460
    return-void
.end method

.method public deregisterForRotationEvents(Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/OrientationEvent;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/OrientationEvent;->removeOnRotationChangeListener(Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;)V

    .line 426
    return-void
.end method

.method public dispatchEvent(Lcom/motorola/camera/Event;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 450
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/camera/Event;->getAction()Lcom/motorola/camera/Event$ACTION;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/Event$ACTION;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/states/StateManager;->request(Lcom/motorola/camera/Event;)Z

    move-result v0

    return v0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/ui/UI;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/ui/UI;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public orientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/motorola/camera/Controller;->setScreenParameters()V

    .line 437
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStateManager:Lcom/motorola/camera/states/StateManager;

    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->WINDOW_CHANGE:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/states/StateManager;->request(Lcom/motorola/camera/Event;)Z

    .line 438
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/UI;->orientationChanged(I)V

    .line 439
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/OrientationEvent;

    invoke-virtual {v0}, Lcom/motorola/camera/OrientationEvent;->displayChanged()V

    .line 440
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-virtual {v0}, Lcom/motorola/camera/states/StateManager;->pauseApplication()V

    .line 168
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    .line 169
    invoke-direct {p0}, Lcom/motorola/camera/Controller;->unregisterListeners()V

    .line 170
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/BlurCheckin;->stop()V

    .line 171
    return-void
.end method

.method public registerForRotationEvents(Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/OrientationEvent;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/OrientationEvent;->addOnRotationChangeListener(Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;)V

    .line 417
    return-void
.end method

.method public start(Lcom/motorola/camera/Controller$ActivityCallbackInterface;)V
    .locals 3
    .parameter "activityCallback"

    .prologue
    .line 125
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraController"

    const-string v2, "start() - enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    .line 131
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 133
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 136
    invoke-direct {p0}, Lcom/motorola/camera/Controller;->setScreenParameters()V

    .line 141
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/states/StateManager;->startStateMachine(Lcom/motorola/camera/Controller;)V

    .line 143
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraKPI"

    const-string v2, "Controller StateMachine created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/Controller;->createComponents()V

    .line 147
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    if-nez v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/ui/UILoader;->loadUI(Lcom/motorola/camera/Controller;Landroid/view/ViewGroup;I)Lcom/motorola/camera/ui/UI;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    invoke-interface {v1}, Lcom/motorola/camera/ui/UI;->start()V

    .line 154
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/BlurCheckin;->start()V

    .line 156
    invoke-direct {p0}, Lcom/motorola/camera/Controller;->registerListeners()V

    .line 158
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCameraKPI"

    const-string v2, "controller UI manager created."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCameraController"

    const-string v2, "start() - exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_4
    return-void
.end method

.method public startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 1
    .parameter "launchRequest"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    invoke-interface {v0, p1}, Lcom/motorola/camera/Controller$ActivityCallbackInterface;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    .line 464
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 177
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraController"

    const-string v1, " stop() - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-static {}, Lcom/motorola/camera/saving/SaveHelper;->getInstance()Lcom/motorola/camera/saving/SaveHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/saving/SaveHelper;->stopService()V

    .line 182
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-virtual {v0}, Lcom/motorola/camera/states/StateManager;->closeApplication()V

    .line 185
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->setDefaultValues(Landroid/content/Context;)V

    .line 189
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    invoke-interface {v0}, Lcom/motorola/camera/ui/UI;->destroy()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    .line 191
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 371
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraController"

    const-string v1, "surfaceChanged enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 381
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCameraKPI"

    const-string v1, "controller surface set start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_3
    invoke-direct {p0, p1}, Lcom/motorola/camera/Controller;->setSurface(Landroid/view/SurfaceHolder;)V

    .line 379
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "controller surface set complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 360
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "controller surface created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 365
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraController"

    const-string v1, "surfaceDestroyed - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStateManager:Lcom/motorola/camera/states/StateManager;

    invoke-virtual {v0}, Lcom/motorola/camera/states/StateManager;->surfaceDestroyed()V

    .line 367
    return-void
.end method

.method public windowHasFocus()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UI;

    invoke-interface {v0}, Lcom/motorola/camera/ui/UI;->windowHasFocus()V

    .line 352
    return-void
.end method
