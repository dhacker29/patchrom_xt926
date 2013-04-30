.class Lcom/motorola/camera/CameraRoll$1;
.super Landroid/os/Handler;
.source "CameraRoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/CameraRoll;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/CameraRoll;


# direct methods
.method constructor <init>(Lcom/motorola/camera/CameraRoll;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/motorola/camera/CameraRoll$1;->this$0:Lcom/motorola/camera/CameraRoll;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll$1;->this$0:Lcom/motorola/camera/CameraRoll;

    #getter for: Lcom/motorola/camera/CameraRoll;->mListener:Lcom/motorola/camera/CameraRoll$CameraRollUpdate;
    invoke-static {v0}, Lcom/motorola/camera/CameraRoll;->access$000(Lcom/motorola/camera/CameraRoll;)Lcom/motorola/camera/CameraRoll$CameraRollUpdate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraRoll"

    const-string v1, "onUpdate data sent to the listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/CameraRoll$1;->this$0:Lcom/motorola/camera/CameraRoll;

    #getter for: Lcom/motorola/camera/CameraRoll;->mListener:Lcom/motorola/camera/CameraRoll$CameraRollUpdate;
    invoke-static {v0}, Lcom/motorola/camera/CameraRoll;->access$000(Lcom/motorola/camera/CameraRoll;)Lcom/motorola/camera/CameraRoll$CameraRollUpdate;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/motorola/camera/CameraRoll$CameraRollUpdate;->onUpdateData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
