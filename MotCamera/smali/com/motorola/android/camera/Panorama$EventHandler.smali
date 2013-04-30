.class Lcom/motorola/android/camera/Panorama$EventHandler;
.super Landroid/os/Handler;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/camera/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mPan:Lcom/motorola/android/camera/Panorama;

.field final synthetic this$0:Lcom/motorola/android/camera/Panorama;


# direct methods
.method public constructor <init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "pan"
    .parameter "looper"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    .line 472
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 473
    iput-object p2, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    .line 474
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 478
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 510
    const-string v0, "Panorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 480
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$100(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PostviewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$100(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PostviewCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/motorola/android/camera/Panorama$PostviewCallback;->onPostviewTaken([BIILcom/motorola/android/camera/Panorama;)V

    goto :goto_0

    .line 484
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$200(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$200(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PictureCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    invoke-interface {v1, v0, v2}, Lcom/motorola/android/camera/Panorama$PictureCallback;->onPictureTaken([BLcom/motorola/android/camera/Panorama;)V

    goto :goto_0

    .line 488
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$300(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ShutterCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$300(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ShutterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/android/camera/Panorama$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 492
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mVFInfoWithDirCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$400(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mVFInfoWithDirCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$400(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;->onViewfinderInfo(IZLjava/lang/String;Lcom/motorola/android/camera/Panorama;)V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mVFInfoWithDirCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$400(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;->onViewfinderInfo(IZLjava/lang/String;Lcom/motorola/android/camera/Panorama;)V

    goto :goto_0

    .line 500
    :pswitch_4
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mCamDirInfoCallback:Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$500(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mCamDirInfoCallback:Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$500(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    invoke-interface {v0, v1, v2}, Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;->onDirectionInfo(ILcom/motorola/android/camera/Panorama;)V

    goto/16 :goto_0

    .line 505
    :pswitch_5
    const-string v0, "Panorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$600(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$600(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ErrorCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    invoke-interface {v0, v1, v2}, Lcom/motorola/android/camera/Panorama$ErrorCallback;->onError(ILcom/motorola/android/camera/Panorama;)V

    goto/16 :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
