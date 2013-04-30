.class Lcom/motorola/camera/CameraRoll$2;
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
    .line 129
    iput-object p1, p0, Lcom/motorola/camera/CameraRoll$2;->this$0:Lcom/motorola/camera/CameraRoll;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    .line 133
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 134
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll$2;->this$0:Lcom/motorola/camera/CameraRoll;

    #calls: Lcom/motorola/camera/CameraRoll;->updateImageData()Z
    invoke-static {v1}, Lcom/motorola/camera/CameraRoll;->access$100(Lcom/motorola/camera/CameraRoll;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 140
    .local v0, msgOut:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll$2;->this$0:Lcom/motorola/camera/CameraRoll;

    #getter for: Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/camera/CameraRoll;->access$200(Lcom/motorola/camera/CameraRoll;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    iput v2, v0, Landroid/os/Message;->what:I

    .line 143
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll$2;->this$0:Lcom/motorola/camera/CameraRoll;

    #getter for: Lcom/motorola/camera/CameraRoll;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/CameraRoll;->access$300(Lcom/motorola/camera/CameraRoll;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 149
    .end local v0           #msgOut:Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll$2;->this$0:Lcom/motorola/camera/CameraRoll;

    #calls: Lcom/motorola/camera/CameraRoll;->updateVideoData()Z
    invoke-static {v1}, Lcom/motorola/camera/CameraRoll;->access$400(Lcom/motorola/camera/CameraRoll;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 151
    .restart local v0       #msgOut:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll$2;->this$0:Lcom/motorola/camera/CameraRoll;

    #getter for: Lcom/motorola/camera/CameraRoll;->mCombinedData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/camera/CameraRoll;->access$200(Lcom/motorola/camera/CameraRoll;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iput v2, v0, Landroid/os/Message;->what:I

    .line 153
    iget-object v1, p0, Lcom/motorola/camera/CameraRoll$2;->this$0:Lcom/motorola/camera/CameraRoll;

    #getter for: Lcom/motorola/camera/CameraRoll;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/camera/CameraRoll;->access$300(Lcom/motorola/camera/CameraRoll;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
