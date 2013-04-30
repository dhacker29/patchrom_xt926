.class Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;
.super Ljava/lang/Object;
.source "EnvFeedbackManager.java"

# interfaces
.implements Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/EnvFeedbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedbackCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/EnvFeedbackManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/EnvFeedbackManager;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;->this$0:Lcom/motorola/camera/EnvFeedbackManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/EnvFeedbackManager;Lcom/motorola/camera/EnvFeedbackManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;-><init>(Lcom/motorola/camera/EnvFeedbackManager;)V

    return-void
.end method


# virtual methods
.method public onEnvDetectEvent(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/hardware/Camera;)V
    .locals 5
    .parameter "event"
    .parameter "eventData"
    .parameter "arg2"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 135
    iget-object v2, p0, Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;->this$0:Lcom/motorola/camera/EnvFeedbackManager;

    #getter for: Lcom/motorola/camera/EnvFeedbackManager;->mPause:Z
    invoke-static {v2}, Lcom/motorola/camera/EnvFeedbackManager;->access$100(Lcom/motorola/camera/EnvFeedbackManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "EnvFeedbackManager"

    const-string v1, "onEnvDetectEvent() : Feedback has been paused."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 146
    const-string v0, "EnvFeedbackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnvDetectEvent() : DETECT_event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "eventdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;->this$0:Lcom/motorola/camera/EnvFeedbackManager;

    #getter for: Lcom/motorola/camera/EnvFeedbackManager;->mFocusListener:Lcom/motorola/camera/EnvFeedbackManager$FocusFeedback;
    invoke-static {v0}, Lcom/motorola/camera/EnvFeedbackManager;->access$200(Lcom/motorola/camera/EnvFeedbackManager;)Lcom/motorola/camera/EnvFeedbackManager$FocusFeedback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/EnvFeedbackManager$FocusFeedback;->onFocusEnvChangeEvent(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 151
    :pswitch_1
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 152
    const-string v0, "EnvFeedbackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnvDetectEvent() : DETECT_HANDSHAKE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;->this$0:Lcom/motorola/camera/EnvFeedbackManager;

    #calls: Lcom/motorola/camera/EnvFeedbackManager;->handleHandshakeEvent(Ljava/lang/Integer;)V
    invoke-static {v0, p2}, Lcom/motorola/camera/EnvFeedbackManager;->access$300(Lcom/motorola/camera/EnvFeedbackManager;Ljava/lang/Integer;)V

    goto :goto_0

    .line 157
    :pswitch_2
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 158
    const-string v2, "EnvFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEnvDetectEvent() : DETECT_HDR  value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;->this$0:Lcom/motorola/camera/EnvFeedbackManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_5

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    #calls: Lcom/motorola/camera/EnvFeedbackManager;->handleHDREvent(Ljava/lang/Boolean;)V
    invoke-static {v2, v0}, Lcom/motorola/camera/EnvFeedbackManager;->access$400(Lcom/motorola/camera/EnvFeedbackManager;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 163
    :pswitch_3
    iget-object v2, p0, Lcom/motorola/camera/EnvFeedbackManager$FeedbackCallback;->this$0:Lcom/motorola/camera/EnvFeedbackManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_6

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    #calls: Lcom/motorola/camera/EnvFeedbackManager;->handleISEvent(Ljava/lang/Boolean;)V
    invoke-static {v2, v0}, Lcom/motorola/camera/EnvFeedbackManager;->access$500(Lcom/motorola/camera/EnvFeedbackManager;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
