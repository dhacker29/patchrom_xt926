.class Lcom/android/internal/policy/impl/KeyguardViewMediator$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, action:Ljava/lang/String;
    const-string v10, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "seq"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, sequence:I
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "KeyguardViewMediator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mDelayedShowingSequence = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v11

    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v10

    if-ne v10, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v12, 0x1

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v10, v12}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$702(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v10

    const-string v12, "willBeInSTOP"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    :cond_1
    monitor-exit v11

    .end local v4           #sequence:I
    :cond_2
    :goto_0
    return-void

    .restart local v4       #sequence:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .end local v4           #sequence:I
    :cond_3
    const-string v10, "com.android.internal.policy.impl.PhoneWindowManager.SECURITY_TIMEOUT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "KeyguardViewMediator"

    const-string v11, "received SECURITY_TIMEOUT_ACTION"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/KeyguardViewManager;->securityTimeoutOver(I)V

    goto :goto_0

    :cond_5
    const-string v10, "android.intent.action.PHONE_STATE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const-string v11, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1102(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v11

    :try_start_1
    sget-object v10, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v10

    if-nez v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->getSecurityTimeout()J
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)J

    move-result-wide v6

    .local v6, timeout:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v5, 0x1

    .local v5, shouldResetTimer:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mTimeStampOfProximityScreenOff:J
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-lez v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mTimeStampOfProximityScreenOff:J
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    cmp-long v10, v12, v6

    if-gez v10, :cond_c

    const/4 v5, 0x1

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    if-eqz v10, :cond_8

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInSecurityTimeoutPeriod()Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    const-wide/16 v12, 0x0

    cmp-long v10, v6, v12

    if-gtz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "KeyguardViewMediator"

    const-string v12, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .end local v5           #shouldResetTimer:Z
    .end local v6           #timeout:J
    :cond_a
    monitor-exit v11

    goto/16 :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10

    .restart local v6       #timeout:J
    :cond_b
    const/4 v5, 0x0

    goto :goto_1

    .restart local v5       #shouldResetTimer:Z
    :cond_c
    const/4 v5, 0x0

    goto :goto_2

    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    add-long v8, v12, v6

    .local v8, when:J
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.android.internal.policy.impl.PhoneWindowManager.SECURITY_TIMEOUT"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, securityIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v10

    const/4 v12, 0x0

    const/high16 v13, 0x1000

    invoke-static {v10, v12, v2, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .local v3, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v12, 0x2

    invoke-virtual {v10, v12, v8, v9, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3
.end method
