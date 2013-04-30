.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v13, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v13}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v13, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v13}, Lcom/android/server/PowerManagerService;->access$5600(Lcom/android/server/PowerManagerService;)Z

    move-result v13

    if-nez v13, :cond_7

    const/4 v1, 0x1

    .local v1, brightnessMode:I
    :goto_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v14, 0xa

    if-ne v13, v14, :cond_b

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .local v6, mask:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .local v12, value:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .local v8, tStart:J
    and-int/lit8 v13, v6, 0x2

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v13, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v13}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v13

    invoke-virtual {v13, v12, v1}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long v4, v13, v8

    .local v4, elapsed:J
    and-int/lit8 v13, v6, 0x4

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v13, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v13}, Lcom/android/server/PowerManagerService;->access$5800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    :cond_1
    and-int/lit8 v13, v6, 0x8

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v13, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v13}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    :cond_2
    const-wide/16 v13, 0x64

    cmp-long v13, v4, v13

    if-lez v13, :cond_3

    const-string v13, "PowerManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Excessive delay setting brightness: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms, mask="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v13, 0x10

    cmp-long v13, v4, v13

    if-gez v13, :cond_8

    const/16 v2, 0x10

    .local v2, delay:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v13, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v13}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v14

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iput v12, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v10, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .local v10, targetValue:I
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v13, v6, 0x3

    if-eqz v13, :cond_9

    const/4 v3, 0x1

    .local v3, doScreenAnimation:Z
    :goto_2
    if-nez v12, :cond_a

    if-nez v10, :cond_a

    const/4 v11, 0x1

    .local v11, turnedOff:Z
    :goto_3
    if-eqz v11, :cond_5

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v13, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHeadless:Z
    invoke-static {v13}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v13, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v13, v13, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    if-eqz v13, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v13, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v14, 0x0

    #calls: Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V
    invoke-static {v13, v14}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v14, 0x0

    #calls: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V
    invoke-static {v13, v6, v14, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$6200(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V

    .end local v2           #delay:I
    .end local v3           #doScreenAnimation:Z
    .end local v4           #elapsed:J
    .end local v6           #mask:I
    .end local v8           #tStart:J
    .end local v10           #targetValue:I
    .end local v11           #turnedOff:Z
    .end local v12           #value:I
    :cond_6
    :goto_4
    return-void

    .end local v1           #brightnessMode:I
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .restart local v1       #brightnessMode:I
    .restart local v4       #elapsed:J
    .restart local v6       #mask:I
    .restart local v8       #tStart:J
    .restart local v12       #value:I
    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    .restart local v2       #delay:I
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .restart local v10       #targetValue:I
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .restart local v3       #doScreenAnimation:Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .end local v2           #delay:I
    .end local v3           #doScreenAnimation:Z
    .end local v4           #elapsed:J
    .end local v6           #mask:I
    .end local v8           #tStart:J
    .end local v10           #targetValue:I
    .end local v12           #value:I
    :cond_b
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v14, 0xb

    if-ne v13, v14, :cond_c

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .local v7, mode:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v13, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V
    invoke-static {v13, v7}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;I)V

    goto :goto_4

    .end local v7           #mode:I
    :cond_c
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v14, 0xc

    if-ne v13, v14, :cond_6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .restart local v7       #mode:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v13, v13, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimationOn(I)V
    invoke-static {v13, v7}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;I)V

    goto :goto_4
.end method
