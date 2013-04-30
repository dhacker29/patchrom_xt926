.class Lcom/motorola/camera/modes/AutoTimerMode$1;
.super Landroid/os/Handler;
.source "AutoTimerMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/modes/AutoTimerMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/modes/AutoTimerMode;


# direct methods
.method constructor <init>(Lcom/motorola/camera/modes/AutoTimerMode;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/motorola/camera/modes/AutoTimerMode$1;->this$0:Lcom/motorola/camera/modes/AutoTimerMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 27
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/camera/modes/AutoTimerMode$1;->this$0:Lcom/motorola/camera/modes/AutoTimerMode;

    #getter for: Lcom/motorola/camera/modes/AutoTimerMode;->mCurrentTime:I
    invoke-static {v1}, Lcom/motorola/camera/modes/AutoTimerMode;->access$000(Lcom/motorola/camera/modes/AutoTimerMode;)I

    move-result v1

    if-nez v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/modes/AutoTimerMode$1;->this$0:Lcom/motorola/camera/modes/AutoTimerMode;

    #getter for: Lcom/motorola/camera/modes/AutoTimerMode;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/modes/AutoTimerMode;->access$100(Lcom/motorola/camera/modes/AutoTimerMode;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 36
    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/modes/AutoTimerMode$1;->this$0:Lcom/motorola/camera/modes/AutoTimerMode;

    invoke-static {v1}, Lcom/motorola/camera/modes/AutoTimerMode;->access$010(Lcom/motorola/camera/modes/AutoTimerMode;)I

    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/modes/AutoTimerMode$1;->this$0:Lcom/motorola/camera/modes/AutoTimerMode;

    #getter for: Lcom/motorola/camera/modes/AutoTimerMode;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/modes/AutoTimerMode;->access$100(Lcom/motorola/camera/modes/AutoTimerMode;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    iget-object v1, p0, Lcom/motorola/camera/modes/AutoTimerMode$1;->this$0:Lcom/motorola/camera/modes/AutoTimerMode;

    #getter for: Lcom/motorola/camera/modes/AutoTimerMode;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/modes/AutoTimerMode;->access$100(Lcom/motorola/camera/modes/AutoTimerMode;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "time"

    iget-object v2, p0, Lcom/motorola/camera/modes/AutoTimerMode$1;->this$0:Lcom/motorola/camera/modes/AutoTimerMode;

    #getter for: Lcom/motorola/camera/modes/AutoTimerMode;->mCurrentTime:I
    invoke-static {v2}, Lcom/motorola/camera/modes/AutoTimerMode;->access$000(Lcom/motorola/camera/modes/AutoTimerMode;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->TIMER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_1

    .line 39
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/camera/modes/AutoTimerMode$1;->this$0:Lcom/motorola/camera/modes/AutoTimerMode;

    #getter for: Lcom/motorola/camera/modes/AutoTimerMode;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/modes/AutoTimerMode;->access$100(Lcom/motorola/camera/modes/AutoTimerMode;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    iget-object v1, p0, Lcom/motorola/camera/modes/AutoTimerMode$1;->this$0:Lcom/motorola/camera/modes/AutoTimerMode;

    #getter for: Lcom/motorola/camera/modes/AutoTimerMode;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/modes/AutoTimerMode;->access$100(Lcom/motorola/camera/modes/AutoTimerMode;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    iget-object v1, p0, Lcom/motorola/camera/modes/AutoTimerMode$1;->this$0:Lcom/motorola/camera/modes/AutoTimerMode;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/modes/AutoTimerMode;->onPreCaptureComplete(I)V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
