.class Lcom/android/server/am/ActivityStack$1;
.super Landroid/os/Handler;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v12, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "ActivityManager"

    const-string v13, "Sleep timeout!  Sleeping now."

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v13, 0x1

    iput-boolean v13, v11, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    :cond_1
    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .local v10, r:Lcom/android/server/am/ActivityRecord;
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Activity pause timeout for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    .local v9, pid:I
    const-wide/16 v7, 0x0

    .local v7, pauseTime:J
    const/4 v5, 0x0

    .local v5, m:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v12, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_1
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_2

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    :cond_2
    iget-wide v7, v10, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pausing "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ltz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v9, v7, v8, v5}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(IJLjava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_4

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_1
    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Lcom/android/server/am/ActivityStack;->activityPaused(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :catchall_1
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .end local v5           #m:Ljava/lang/String;
    .end local v7           #pauseTime:J
    .end local v9           #pid:I
    .end local v10           #r:Lcom/android/server/am/ActivityRecord;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x66

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .local v6, nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v11, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x2710

    invoke-virtual {v11, v6, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v6           #nmsg:Landroid/os/Message;
    :cond_5
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .restart local v10       #r:Lcom/android/server/am/ActivityRecord;
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Activity idle timeout for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_6

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_2
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v13, v14}, Lcom/android/server/am/ActivityStack;->activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .end local v10           #r:Lcom/android/server/am/ActivityRecord;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .restart local v10       #r:Lcom/android/server/am/ActivityRecord;
    const/4 v9, -0x1

    .restart local v9       #pid:I
    const-wide/16 v3, 0x0

    .local v3, launchTickTime:J
    const/4 v2, 0x0

    .local v2, cont:Z
    const/4 v5, 0x0

    .restart local v5       #m:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v12, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_3
    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_7

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    :cond_7
    iget-wide v3, v10, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const/4 v2, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "launching "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_8
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v9, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(IJLjava/lang/String;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v11

    .end local v2           #cont:Z
    .end local v3           #launchTickTime:J
    .end local v5           #m:Ljava/lang/String;
    .end local v9           #pid:I
    .end local v10           #r:Lcom/android/server/am/ActivityRecord;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .restart local v10       #r:Lcom/android/server/am/ActivityRecord;
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Activity destroy timeout for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_9

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_3
    invoke-virtual {v12, v11}, Lcom/android/server/am/ActivityStack;->activityDestroyed(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    .end local v10           #r:Lcom/android/server/am/ActivityRecord;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .restart local v10       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_a

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v13, v14}, Lcom/android/server/am/ActivityStack;->activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_0

    :cond_a
    const/4 v11, 0x0

    goto :goto_4

    .end local v10           #r:Lcom/android/server/am/ActivityRecord;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x68

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .restart local v6       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x2710

    invoke-virtual {v11, v6, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v6           #nmsg:Landroid/os/Message;
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v12, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "ActivityManager"

    const-string v13, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v11, v11, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_c
    monitor-exit v12

    goto/16 :goto_0

    :catchall_3
    move-exception v11

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v11

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v12, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    monitor-exit v12

    goto/16 :goto_0

    :catchall_4
    move-exception v11

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v11

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .restart local v10       #r:Lcom/android/server/am/ActivityRecord;
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Activity stop timeout for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v12, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_7
    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v11

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v10, v13, v14, v15}, Lcom/android/server/am/ActivityStack;->activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_d
    monitor-exit v12

    goto/16 :goto_0

    :catchall_5
    move-exception v11

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v11

    .end local v10           #r:Lcom/android/server/am/ActivityRecord;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    .local v1, args:Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v12, v11, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v13, v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/am/ProcessRecord;

    iget-boolean v14, v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mOomAdj:Z

    iget-object v15, v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    invoke-virtual {v11, v13, v14, v15}, Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    monitor-exit v12

    goto/16 :goto_0

    :catchall_6
    move-exception v11

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v11

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
