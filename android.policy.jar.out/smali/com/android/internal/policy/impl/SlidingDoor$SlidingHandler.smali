.class Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;
.super Landroid/os/Handler;
.source "SlidingDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SlidingDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SlidingDoor;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SlidingDoor;)V
    .locals 0
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SlidingDoor;Lcom/android/internal/policy/impl/SlidingDoor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;-><init>(Lcom/android/internal/policy/impl/SlidingDoor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 920
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 930
    :goto_0
    return-void

    .line 922
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "handleMessage: MSG_ANIMATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    #calls: Lcom/android/internal/policy/impl/SlidingDoor;->doAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/SlidingDoor;->access$400(Lcom/android/internal/policy/impl/SlidingDoor;)V

    goto :goto_0

    .line 926
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "handleMessage: MSG_COMPLETE_ANIMATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SlidingDoor;->completeGroupMove(Z)V

    goto :goto_0

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
