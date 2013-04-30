.class Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;
.super Lcom/motorola/camera/BlurCheckin$CheckinObject;
.source "BlurCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/BlurCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FalseLaunchCheckinObject"
.end annotation


# instance fields
.field private BLUR_CHECKIN_VERSION:Ljava/lang/String;

.field private LAUNCHTYPE:Ljava/lang/String;

.field private USECASE:Ljava/lang/String;

.field private mLaunchType:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/camera/BlurCheckin;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "launchAction"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/BlurCheckin$CheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V

    .line 454
    const-string v0, "USECASE"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;->USECASE:Ljava/lang/String;

    .line 455
    const-string v0, "LNCH"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;->LAUNCHTYPE:Ljava/lang/String;

    .line 457
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    .line 460
    iput-object p2, p0, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;->mLaunchType:Ljava/lang/String;

    .line 461
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;Lcom/motorola/camera/BlurCheckin$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 453
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkinValues(Ljava/lang/String;)V
    .locals 6
    .parameter "eventName"

    .prologue
    .line 484
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 485
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checking in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    :try_start_0
    new-instance v0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;

    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$800()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 491
    .local v0, e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;->LAUNCHTYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;->mLaunchType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v0           #e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    :goto_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 497
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checked in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_1
    return-void

    .line 493
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public initializeValues()V
    .locals 2

    .prologue
    .line 464
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 465
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializing values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 469
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialized values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1
    return-void
.end method

.method public loadValues()V
    .locals 2

    .prologue
    .line 474
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 475
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loading values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 479
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loaded values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1
    return-void
.end method

.method public printValues()V
    .locals 3

    .prologue
    .line 503
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 504
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLaunchType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$FalseLaunchCheckinObject;->mLaunchType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    return-void
.end method
