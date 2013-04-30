.class Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;
.super Lcom/motorola/camera/BlurCheckin$CheckinObject;
.source "BlurCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/BlurCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExitAppCheckinObject"
.end annotation


# instance fields
.field private APPTIME:Ljava/lang/String;

.field private BLUR_CHECKIN_VERSION:Ljava/lang/String;

.field private BTNPRESS:Ljava/lang/String;

.field private HDRDIALOG:Ljava/lang/String;

.field private HDRDIALOGCLICKED:Ljava/lang/String;

.field private HDRRECOMMENDATIONACCEPTED:Ljava/lang/String;

.field private HDRRECOMMENDATIONS:Ljava/lang/String;

.field private INSTONSETTING:Ljava/lang/String;

.field private LAUNCHTYPE:Ljava/lang/String;

.field private NUMPICSCAPTUREDINSESSION:Ljava/lang/String;

.field private PICTAKEN:Ljava/lang/String;

.field private USECASE:Ljava/lang/String;

.field private mBtnPressDuration:J

.field private mHDRDialogShowPreference:Z

.field private mHDRDialogShowPreferenceClicked:Z

.field private mHDRRecommendations:I

.field private mHDRRecommendationsAcceptedByUser:I

.field private mInstOnSetting:Ljava/lang/String;

.field private mLaunchDuration:J

.field private mLaunchType:Ljava/lang/String;

.field private mLoadingFailed:Z

.field private mPicsCaptured:I

.field private mPictureTaken:Z

.field final synthetic this$0:Lcom/motorola/camera/BlurCheckin;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/BlurCheckin;I)V
    .locals 1
    .parameter
    .parameter "picturesCapturedInSession"

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/BlurCheckin$CheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;Lcom/motorola/camera/BlurCheckin$1;)V

    .line 1269
    const-string v0, "USECASE"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->USECASE:Ljava/lang/String;

    .line 1270
    const-string v0, "LNCH"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->LAUNCHTYPE:Ljava/lang/String;

    .line 1271
    const-string v0, "APPTIME"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->APPTIME:Ljava/lang/String;

    .line 1272
    const-string v0, "PICTAKEN"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->PICTAKEN:Ljava/lang/String;

    .line 1273
    const-string v0, "BTNPRESS"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->BTNPRESS:Ljava/lang/String;

    .line 1274
    const-string v0, "INSTONSET"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->INSTONSETTING:Ljava/lang/String;

    .line 1275
    const-string v0, "HDRDLG"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->HDRDIALOG:Ljava/lang/String;

    .line 1276
    const-string v0, "HDRRCMD"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->HDRRECOMMENDATIONS:Ljava/lang/String;

    .line 1277
    const-string v0, "HDRDLGCLK"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->HDRDIALOGCLICKED:Ljava/lang/String;

    .line 1278
    const-string v0, "HDRACPTD"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->HDRRECOMMENDATIONACCEPTED:Ljava/lang/String;

    .line 1279
    const-string v0, "NUMPIC"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->NUMPICSCAPTUREDINSESSION:Ljava/lang/String;

    .line 1285
    const-string v0, "1.5"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    .line 1294
    iput p2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mPicsCaptured:I

    .line 1295
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/BlurCheckin;ILcom/motorola/camera/BlurCheckin$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1268
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;-><init>(Lcom/motorola/camera/BlurCheckin;I)V

    return-void
.end method

.method private resetValues()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 1413
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraLaunchActionObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$2900(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1414
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const-string v2, "TRAY"

    #setter for: Lcom/motorola/camera/BlurCheckin;->mCameraLaunchAction:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/motorola/camera/BlurCheckin;->access$3002(Lcom/motorola/camera/BlurCheckin;Ljava/lang/String;)Ljava/lang/String;

    .line 1415
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mCameraAppCloseTime:J
    invoke-static {v0, v3, v4}, Lcom/motorola/camera/BlurCheckin;->access$3602(Lcom/motorola/camera/BlurCheckin;J)J

    .line 1417
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mCameraAppOpenTime:J
    invoke-static {v0, v3, v4}, Lcom/motorola/camera/BlurCheckin;->access$3702(Lcom/motorola/camera/BlurCheckin;J)J

    .line 1418
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mInstantButtonDownTime:J
    invoke-static {v0, v3, v4}, Lcom/motorola/camera/BlurCheckin;->access$3302(Lcom/motorola/camera/BlurCheckin;J)J

    .line 1419
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mInstantButtonUpTime:J
    invoke-static {v0, v3, v4}, Lcom/motorola/camera/BlurCheckin;->access$3202(Lcom/motorola/camera/BlurCheckin;J)J

    .line 1420
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedHDRRecommendedObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$3900(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1421
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/camera/BlurCheckin;->mHDRRecommended:I
    invoke-static {v0, v2}, Lcom/motorola/camera/BlurCheckin;->access$4002(Lcom/motorola/camera/BlurCheckin;I)I

    .line 1422
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1423
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedmHDRDialogPreferenceClickedObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/camera/BlurCheckin;->access$4100(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1424
    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/camera/BlurCheckin;->mHDRDialogPreferenceClicked:Z
    invoke-static {v0, v2}, Lcom/motorola/camera/BlurCheckin;->access$4202(Lcom/motorola/camera/BlurCheckin;Z)Z

    .line 1425
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1426
    iget-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #setter for: Lcom/motorola/camera/BlurCheckin;->mHDRRecommendationAccepted:I
    invoke-static {v0, v5}, Lcom/motorola/camera/BlurCheckin;->access$4302(Lcom/motorola/camera/BlurCheckin;I)I

    .line 1427
    return-void

    .line 1415
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1422
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1425
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method


# virtual methods
.method public checkinValues(Ljava/lang/String;)V
    .locals 6
    .parameter "eventName"

    .prologue
    .line 1370
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1371
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checking in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mLoadingFailed:Z

    if-nez v1, :cond_2

    .line 1376
    :try_start_0
    new-instance v0, Lcom/motorola/checkinwrapper/CheckinEventWrapper;

    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$800()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->BLUR_CHECKIN_VERSION:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1378
    .local v0, e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->LAUNCHTYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mLaunchType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->APPTIME:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mLaunchDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;J)V

    .line 1380
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->PICTAKEN:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mPictureTaken:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Z)V

    .line 1381
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->BTNPRESS:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mBtnPressDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;J)V

    .line 1382
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->INSTONSETTING:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mInstOnSetting:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->HDRDIALOG:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRDialogShowPreference:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Z)V

    .line 1384
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->HDRRECOMMENDATIONS:Ljava/lang/String;

    iget v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRRecommendations:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;I)V

    .line 1385
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->HDRDIALOGCLICKED:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRDialogShowPreferenceClicked:Z

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;Z)V

    .line 1386
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->HDRRECOMMENDATIONACCEPTED:Ljava/lang/String;

    iget v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRRecommendationsAcceptedByUser:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;I)V

    .line 1387
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->NUMPICSCAPTUREDINSESSION:Ljava/lang/String;

    iget v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mPicsCaptured:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->setValue(Ljava/lang/String;I)V

    .line 1388
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/checkinwrapper/CheckinEventWrapper;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    .end local v0           #e1:Lcom/motorola/checkinwrapper/CheckinEventWrapper;
    :goto_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1397
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checked in Values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraStopObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/motorola/camera/BlurCheckin;->access$3400(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1401
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraStopObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/motorola/camera/BlurCheckin;->access$3400(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1402
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1404
    return-void

    .line 1393
    :cond_2
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loading failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1402
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1389
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public initializeValues()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1298
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1299
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializing values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mLaunchDuration:J

    .line 1303
    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mPictureTaken:Z

    .line 1304
    const-string v0, "NOT_SUPRTED"

    iput-object v0, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mInstOnSetting:Ljava/lang/String;

    .line 1305
    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRDialogShowPreference:Z

    .line 1306
    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRDialogShowPreferenceClicked:Z

    .line 1307
    iput v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRRecommendations:I

    .line 1309
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1310
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialized values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_1
    return-void
.end method

.method public loadValues()V
    .locals 8

    .prologue
    .line 1315
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1316
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loading values"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedCameraLaunchActionObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$2900(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1320
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mCameraLaunchAction:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$3000(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mLaunchType:Ljava/lang/String;

    .line 1321
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mCameraAppCloseTime:J
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$3600(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mCameraAppOpenTime:J
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$3700(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mLaunchDuration:J

    .line 1322
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mInstantButtonUpTime:J
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$3200(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mInstantButtonDownTime:J
    invoke-static {v4}, Lcom/motorola/camera/BlurCheckin;->access$3300(Lcom/motorola/camera/BlurCheckin;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mBtnPressDuration:J

    .line 1324
    sget-boolean v2, Lcom/motorola/camera/Camera;->mPictureTaken:Z

    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mPictureTaken:Z

    .line 1326
    const/4 v1, 0x0

    .line 1327
    .local v1, preference:Lcom/motorola/camera/ListPreference;
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedPreferenceGroupObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$1200(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1328
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1329
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Preference group is null!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mLoadingFailed:Z

    .line 1333
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mLoadingFailed:Z

    if-nez v2, :cond_3

    .line 1334
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->isInstantOnSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1335
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mPreferenceGroup:Lcom/motorola/camera/PreferenceGroup;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$1300(Lcom/motorola/camera/BlurCheckin;)Lcom/motorola/camera/PreferenceGroup;

    move-result-object v2

    const-string v4, "pref_instant_on_key"

    invoke-virtual {v2, v4}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/motorola/camera/ListPreference;

    move-object v1, v0

    .line 1337
    if-eqz v1, :cond_2

    .line 1338
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1339
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mInstOnSetting:Ljava/lang/String;

    .line 1343
    :cond_2
    const/4 v1, 0x0

    .line 1345
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1347
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mHDRDialogPreference:Z
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$3800(Lcom/motorola/camera/BlurCheckin;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRDialogShowPreference:Z

    .line 1348
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedHDRRecommendedObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$3900(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1349
    :try_start_2
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mHDRRecommended:I
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$4000(Lcom/motorola/camera/BlurCheckin;)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRRecommendations:I

    .line 1350
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1352
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mSynchronizedmHDRDialogPreferenceClickedObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$4100(Lcom/motorola/camera/BlurCheckin;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1353
    :try_start_3
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mHDRDialogPreferenceClicked:Z
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$4200(Lcom/motorola/camera/BlurCheckin;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRDialogShowPreferenceClicked:Z

    .line 1354
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1356
    iget-object v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->this$0:Lcom/motorola/camera/BlurCheckin;

    #getter for: Lcom/motorola/camera/BlurCheckin;->mHDRRecommendationAccepted:I
    invoke-static {v2}, Lcom/motorola/camera/BlurCheckin;->access$4300(Lcom/motorola/camera/BlurCheckin;)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRRecommendationsAcceptedByUser:I

    .line 1358
    iget-boolean v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRDialogShowPreferenceClicked:Z

    if-eqz v2, :cond_4

    .line 1359
    iget v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRRecommendationsAcceptedByUser:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->mHDRRecommendationsAcceptedByUser:I

    .line 1362
    :cond_4
    invoke-direct {p0}, Lcom/motorola/camera/BlurCheckin$ExitAppCheckinObject;->resetValues()V

    .line 1364
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1365
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loaded values"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_5
    return-void

    .line 1322
    .end local v1           #preference:Lcom/motorola/camera/ListPreference;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1345
    .restart local v1       #preference:Lcom/motorola/camera/ListPreference;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 1350
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 1354
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method

.method public printValues()V
    .locals 2

    .prologue
    .line 1407
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1408
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_0
    return-void
.end method
