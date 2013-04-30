.class Lcom/motorola/camera/BlurCheckin$CheckinThread;
.super Ljava/lang/Object;
.source "BlurCheckin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/BlurCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckinThread"
.end annotation


# instance fields
.field mCheckinObject:Lcom/motorola/camera/BlurCheckin$CheckinObject;

.field mEventName:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/camera/BlurCheckin;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;Lcom/motorola/camera/BlurCheckin$CheckinObject;)V
    .locals 0
    .parameter
    .parameter "eventName"
    .parameter "checkinObject"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/motorola/camera/BlurCheckin$CheckinThread;->this$0:Lcom/motorola/camera/BlurCheckin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p3, p0, Lcom/motorola/camera/BlurCheckin$CheckinThread;->mCheckinObject:Lcom/motorola/camera/BlurCheckin$CheckinObject;

    .line 431
    iput-object p2, p0, Lcom/motorola/camera/BlurCheckin$CheckinThread;->mEventName:Ljava/lang/String;

    .line 432
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 435
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread started running for event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$CheckinThread;->mEventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->BLUR_CHECKIN:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$CheckinThread;->mCheckinObject:Lcom/motorola/camera/BlurCheckin$CheckinObject;

    invoke-virtual {v0}, Lcom/motorola/camera/BlurCheckin$CheckinObject;->initializeValues()V

    .line 438
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$CheckinThread;->mCheckinObject:Lcom/motorola/camera/BlurCheckin$CheckinObject;

    invoke-virtual {v0}, Lcom/motorola/camera/BlurCheckin$CheckinObject;->loadValues()V

    .line 439
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$CheckinThread;->mCheckinObject:Lcom/motorola/camera/BlurCheckin$CheckinObject;

    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$CheckinThread;->mEventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/BlurCheckin$CheckinObject;->checkinValues(Ljava/lang/String;)V

    .line 440
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->BLUR_CHECKIN:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 441
    :cond_2
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread finished running for event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$CheckinThread;->mEventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_3
    return-void
.end method
