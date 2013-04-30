.class Lcom/motorola/camera/modes/MosaicPanoramaMode$FrameProcessor;
.super Ljava/lang/Object;
.source "MosaicPanoramaMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/modes/MosaicPanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameProcessor"
.end annotation


# instance fields
.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/modes/MosaicPanoramaMode;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p2, queue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;>;"
    iput-object p1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$FrameProcessor;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$FrameProcessor;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 347
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 351
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 352
    invoke-static {}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FrameProcessor started"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$FrameProcessor;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;

    .line 356
    .local v1, frame:Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;
    iget-object v2, v1, Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;->mData:[B

    if-nez v2, :cond_2

    .line 357
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 358
    invoke-static {}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FrameProcessor stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v1           #frame:Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;
    :cond_1
    :goto_1
    return-void

    .line 361
    .restart local v1       #frame:Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;
    :cond_2
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;->mData:[B

    invoke-virtual {v2, v3}, Lcom/android/camera/MosaicFrameProcessor;->processFrame([B)V

    .line 362
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;->mData:[B

    invoke-virtual {v2, v3}, Lcom/motorola/camera/Device;->addCallbackBuffer([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    .end local v1           #frame:Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;
    :catch_0
    move-exception v0

    .line 365
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FrameProcessor interrupted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
