.class public Lcom/motorola/camera/Camera;
.super Lcom/motorola/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/camera/Controller$ActivityCallbackInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCamera"

.field private static mGestureLogging:Z

.field public static mPictureTaken:Z

.field private static mQuickLaunched:Z

.field private static mTimedOut:Z


# instance fields
.field private mController:Lcom/motorola/camera/Controller;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mOrientation:I

.field private mWindowFlags:I

.field private mWindowHasFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/motorola/camera/Camera;->mQuickLaunched:Z

    .line 61
    sput-boolean v0, Lcom/motorola/camera/Camera;->mPictureTaken:Z

    .line 62
    sput-boolean v0, Lcom/motorola/camera/Camera;->mTimedOut:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/motorola/camera/ActivityBase;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mErrorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private disableKeyGuard(Landroid/view/Window;Z)V
    .locals 4
    .parameter "window"
    .parameter "disable"

    .prologue
    const/high16 v3, 0x48

    .line 267
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable keyguard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private turnScreenOn()V
    .locals 4

    .prologue
    .line 281
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 282
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    const v2, 0x30000006

    const-string v3, "MotoCamera"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 286
    .local v1, wakeLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 288
    .end local v1           #wakeLock:Landroid/os/PowerManager$WakeLock;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 235
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/motorola/camera/AppSettings;->setIntentValues(Landroid/content/Intent;)V

    .line 236
    const-string v6, "motorola.intent.category.QUICK_LAUNCH"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/Camera;->mQuickLaunched:Z

    .line 238
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 239
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 242
    .local v1, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 243
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 244
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 245
    const-string v7, "MotoCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent category: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 249
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 251
    .local v5, key:Ljava/lang/String;
    const-string v6, "MotoCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent extra: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 257
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    :cond_2
    const-string v6, "motorola.intent.category.QUICK_LAUNCH"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public closeApplication()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->moveTaskToBack(Z)Z

    .line 314
    return-void
.end method

.method public closeApplicationWithError(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 308
    invoke-static {p0, p1}, Lcom/motorola/camera/Util;->showDialogAndFinish(Landroid/app/Activity;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mErrorDialog:Landroid/app/AlertDialog;

    .line 309
    return-void
.end method

.method public closeApplicationwithResult(Lcom/motorola/camera/Util$ReturnResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/motorola/camera/Util$ReturnResult;->getResult()I

    move-result v1

    .line 319
    .local v1, returnResult:I
    invoke-virtual {p1}, Lcom/motorola/camera/Util$ReturnResult;->getResultIntent()Landroid/content/Intent;

    move-result-object v0

    .line 320
    .local v0, returnData:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->finish()V

    .line 326
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/Camera;->setResult(I)V

    goto :goto_0
.end method

.method protected inactivityTimeoutExpired()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->INACTIVITY_TIMEOUT:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "inactivity timer expired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/camera/Camera;->mTimedOut:Z

    .line 295
    sget-boolean v0, Lcom/motorola/camera/Camera;->mPictureTaken:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/BlurCheckin;->setCameraTimedOut()V

    .line 296
    :cond_1
    new-instance v0, Lcom/motorola/camera/Util$ReturnResult;

    invoke-direct {v0}, Lcom/motorola/camera/Util$ReturnResult;-><init>()V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->closeApplicationwithResult(Lcom/motorola/camera/Util$ReturnResult;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->restartInactivityTimer()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 354
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 355
    if-nez p2, :cond_1

    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->setResult(I)V

    .line 357
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->finish()V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 359
    if-eqz p3, :cond_0

    .line 360
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 361
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/motorola/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    if-eq v0, v1, :cond_1

    .line 207
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation config change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    .line 209
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget v1, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->orientationChanged(I)V

    .line 211
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 71
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->ON_CREATE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 73
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 74
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 75
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 78
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "onCreate - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->requestWindowFeature(I)Z

    .line 88
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 91
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->setContentView(I)V

    .line 92
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCameraUtil"

    const-string v1, "contentView set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    new-instance v1, Lcom/motorola/camera/Controller;

    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/Controller;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    .line 97
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 98
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->ON_CREATE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 99
    const-string v0, "MotoCamera"

    const-string v1, "onCreate - exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 184
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "onDestroy - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->stop()V

    .line 186
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->cleanup()V

    .line 187
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Notifier;->cleanUp()V

    .line 188
    invoke-static {p0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->removeInstance(Landroid/content/Context;)V

    .line 189
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onDestroy()V

    .line 190
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "onDestroy - exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/Controller;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/Controller;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/motorola/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 223
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "new intent recevied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/Camera;->disableKeyGuard(Landroid/view/Window;Z)V

    .line 226
    invoke-direct {p0}, Lcom/motorola/camera/Camera;->turnScreenOn()V

    .line 227
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "MotoCamera"

    const-string v1, "onPause - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->ON_PAUSE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->pause()V

    .line 158
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 160
    :cond_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/motorola/camera/Camera;->mGestureLogging:Z

    if-eqz v0, :cond_2

    .line 161
    sget-boolean v0, Lcom/motorola/camera/Camera;->mPictureTaken:Z

    if-eqz v0, :cond_6

    .line 163
    const-string v0, "TRUE_POSITIVE"

    invoke-static {v0}, Lcom/motorola/camera/Util;->logGestureData(Ljava/lang/String;)V

    .line 164
    sput-boolean v2, Lcom/motorola/camera/Camera;->mGestureLogging:Z

    .line 176
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mWindowHasFocus:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/motorola/camera/Camera;->disableKeyGuard(Landroid/view/Window;Z)V

    .line 178
    :cond_3
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v1, "onPause - exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->ON_PAUSE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 180
    :cond_5
    return-void

    .line 165
    :cond_6
    sget-boolean v0, Lcom/motorola/camera/Camera;->mTimedOut:Z

    if-eqz v0, :cond_7

    .line 166
    const-string v0, "FALSE_POSITIVE"

    invoke-static {v0}, Lcom/motorola/camera/Util;->logGestureData(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_7
    const-string v0, "AMBIGIOUS"

    invoke-static {v0}, Lcom/motorola/camera/Util;->logGestureData(Ljava/lang/String;)V

    .line 169
    sput-boolean v2, Lcom/motorola/camera/Camera;->mGestureLogging:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 105
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onResume()V

    .line 110
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 111
    const-string v2, "MotoCamera"

    const-string v3, "onResume - enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->ON_RESUME:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 113
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_RESUME_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 115
    :try_start_0
    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Camera;->checkIntent(Landroid/content/Intent;)V

    .line 124
    sget-boolean v2, Lcom/motorola/camera/Camera;->mQuickLaunched:Z

    if-eqz v2, :cond_3

    .line 126
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoCamera"

    const-string v3, "onResume - started from INSTANT_ON use case"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 129
    .local v1, keyGuard:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/motorola/camera/Camera;->disableKeyGuard(Landroid/view/Window;Z)V

    .line 134
    .end local v1           #keyGuard:Landroid/app/KeyguardManager;
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    .line 136
    iget-object v2, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/Controller;->start(Lcom/motorola/camera/Controller$ActivityCallbackInterface;)V

    .line 138
    sput-boolean v7, Lcom/motorola/camera/Camera;->mPictureTaken:Z

    .line 139
    sput-boolean v7, Lcom/motorola/camera/Camera;->mTimedOut:Z

    .line 140
    sget-boolean v2, Lcom/motorola/camera/Camera;->mGestureLogging:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/motorola/camera/Camera;->mQuickLaunched:Z

    sput-boolean v2, Lcom/motorola/camera/Camera;->mGestureLogging:Z

    .line 142
    :cond_4
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 143
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->ON_RESUME:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 144
    const-string v2, "MotoCamera"

    const-string v3, "onResume - exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_5
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/motorola/camera/Camera;->mWindowHasFocus:Z

    .line 216
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window has focus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/camera/Camera;->mWindowHasFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mWindowHasFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->windowHasFocus()V

    .line 218
    :cond_1
    return-void
.end method

.method public startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 5
    .parameter "launchRequest"

    .prologue
    const v4, 0x7f0b008c

    .line 330
    if-eqz p1, :cond_1

    .line 331
    invoke-virtual {p1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 332
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->isReturnRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 339
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/motorola/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 345
    :catch_1
    move-exception v0

    .line 346
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0
.end method
