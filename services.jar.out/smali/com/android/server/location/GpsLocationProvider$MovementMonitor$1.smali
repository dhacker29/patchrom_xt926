.class Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/motorola/sensorhub/SensorHub$MovementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 3228
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndMovement()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 3274
    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onEndMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3276
    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onEndMovement when not monitoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :cond_0
    :goto_0
    return-void

    .line 3281
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6700(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3282
    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor *ignoring* onEndMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3286
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6602(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    .line 3287
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6702(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    .line 3289
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    #setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$7002(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;J)J

    .line 3293
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v2, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

    .line 3295
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 3299
    .local v0, changed:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6500(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$7100(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gtz v1, :cond_3

    .line 3300
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MovementMonitor hibernate w/ prop interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$7200(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x3

    #setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6802(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;I)I

    .line 3303
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$7200(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v4, v4, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$5700(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v4

    #calls: Lcom/android/server/location/GpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$7300(Lcom/android/server/location/GpsLocationProvider;ILandroid/app/PendingIntent;)V

    .line 3309
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3312
    if-eqz v0, :cond_0

    .line 3313
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #calls: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V
    invoke-static {v1, v7}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6900(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)V

    goto/16 :goto_0

    .line 3305
    :cond_3
    :try_start_1
    const-string v1, "GpsLocationProvider"

    const-string v3, "MovementMonitor hibernate until sensor hub wakes us"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x4

    #setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6802(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;I)I

    .line 3307
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, -0x1

    const/4 v4, 0x0

    #calls: Lcom/android/server/location/GpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$7300(Lcom/android/server/location/GpsLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 3309
    .end local v0           #changed:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartMovement()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3231
    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onStartMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3233
    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onStartMovement when not monitoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    :cond_0
    :goto_0
    return-void

    .line 3238
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6700(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3239
    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor *ignoring* onStartMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3243
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6702(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    .line 3246
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5800(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v2, v2, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$5700(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3249
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6800(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 3251
    const-string v1, "GpsLocationProvider"

    const-string v2, "onStartMovement(), calling updateNoFix()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateNoFix()V

    .line 3256
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1, v5}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6602(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    .line 3259
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v2, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

    .line 3261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 3264
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/server/location/GpsLocationProvider;->startNavigating_Locked(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;ZZ)V

    .line 3265
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3268
    if-eqz v0, :cond_0

    .line 3269
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    #calls: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V
    invoke-static {v1, v5}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6900(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)V

    goto :goto_0

    .line 3265
    .end local v0           #changed:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
