.class Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;
.super Lcom/motorola/camera/BlurCheckin$CheckinObject;
.source "BlurCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/BlurCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartupCheckinObject"
.end annotation


# instance fields
.field private BLUR_CHECKIN_VERSION:Ljava/lang/String;

.field private LAUNCHTYPE:Ljava/lang/String;

.field private STARTUPTIME:Ljava/lang/String;

.field private USECASE:Ljava/lang/String;

.field private mLaunchType:Ljava/lang/String;

.field private mLocalStartupTime:J

.field final synthetic this$0:Lcom/motorola/camera/BlurCheckin;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "launchAction"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/BlurCheckin$CheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V

    .line 513
    const-string v0, "USECASE"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->USECASE:Ljava/lang/String;

    .line 514
    const-string v0, "STARTUP"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->STARTUPTIME:Ljava/lang/String;

    .line 515
    const-string v0, "LNCH"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->LAUNCHTYPE:Ljava/lang/String;

    .line 518
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    .line 521
    iput-object p2, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->mLaunchType:Ljava/lang/String;

    .line 522
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;Lcom/motorola/camera/BlurCheckin$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 512
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;)V

    return-void
.end method

.method private resetValues()V
    .locals 4

    .prologue
    .line 585
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedStartupTimeObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$900(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const-wide/16 v2, 0x0

    #setter for: Lcom/motorola/camera/BlurCheckin;->mStartupTime:J
    invoke-static {v0, v2, v3}, Lcom/motorola/camera/BlurCheckin;->access$1002(Lcom/motorola/camera/BlurCheckin;J)J

    .line 587
    monitor-exit v1

    .line 588
    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkinValues(Ljava/lang/String;)V
    .locals 6
    .parameter "eventName"

    .prologue
    .line 552
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 553
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checking in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mUseCase:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/camera/BlurCheckin;->access$1100(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 557
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mUseCase is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    :try_start_0
    new-instance v0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;

    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$800()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 564
    .local v0, e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->USECASE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mUseCase:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$1100(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->STARTUPTIME:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->mLocalStartupTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;J)V

    .line 566
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->LAUNCHTYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->mLaunchType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v0           #e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    :goto_1
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 572
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checked in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public initializeValues()V
    .locals 2

    .prologue
    .line 525
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializing values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->mLocalStartupTime:J

    .line 531
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 532
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialized values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_1
    return-void
.end method

.method public loadValues()V
    .locals 4

    .prologue
    .line 537
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 538
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loading values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedStartupTimeObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$900(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mStartupTime:J
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$1000(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->mLocalStartupTime:J

    .line 543
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    invoke-direct {p0}, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->resetValues()V

    .line 546
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 547
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loaded values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_1
    return-void

    .line 543
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public printValues()V
    .locals 4

    .prologue
    .line 578
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLocalStartupTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->mLocalStartupTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLaunchType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$StartupCheckinObject;->mLaunchType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    return-void
.end method
