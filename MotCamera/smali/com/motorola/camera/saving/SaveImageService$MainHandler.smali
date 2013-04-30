.class Lcom/motorola/camera/saving/SaveImageService$MainHandler;
.super Landroid/os/Handler;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/SaveImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/saving/SaveImageService;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/saving/SaveImageService;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$MainHandler;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/saving/SaveImageService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/motorola/camera/saving/SaveImageService$MainHandler;-><init>(Lcom/motorola/camera/saving/SaveImageService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 196
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$MainHandler;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    #getter for: Lcom/motorola/camera/saving/SaveImageService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->access$700(Lcom/motorola/camera/saving/SaveImageService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$MainHandler;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    #getter for: Lcom/motorola/camera/saving/SaveImageService;->mSaveServiceListener:Lcom/motorola/camera/saving/SaveServiceListener;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->access$800(Lcom/motorola/camera/saving/SaveImageService;)Lcom/motorola/camera/saving/SaveServiceListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/saving/SaveServiceListener;->onMemoryAvailable()V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$MainHandler;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/SaveImageService;->stopSelf()V

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraRoll$CameraData;

    .line 206
    .local v0, data:Lcom/motorola/camera/CameraRoll$CameraData;
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$MainHandler;->this$0:Lcom/motorola/camera/saving/SaveImageService;

    #getter for: Lcom/motorola/camera/saving/SaveImageService;->mSaveServiceListener:Lcom/motorola/camera/saving/SaveServiceListener;
    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->access$800(Lcom/motorola/camera/saving/SaveImageService;)Lcom/motorola/camera/saving/SaveServiceListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/motorola/camera/saving/SaveServiceListener;->onFileSaved(Lcom/motorola/camera/CameraRoll$CameraData;)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
