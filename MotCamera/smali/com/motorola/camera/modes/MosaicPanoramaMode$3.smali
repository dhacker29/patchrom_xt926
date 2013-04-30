.class Lcom/motorola/camera/modes/MosaicPanoramaMode$3;
.super Ljava/lang/Object;
.source "MosaicPanoramaMode.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/modes/MosaicPanoramaMode;->capture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;


# direct methods
.method constructor <init>(Lcom/motorola/camera/modes/MosaicPanoramaMode;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$3;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .parameter "buffer"
    .parameter "camera"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$3;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    #getter for: Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameCounter:J
    invoke-static {v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$400(Lcom/motorola/camera/modes/MosaicPanoramaMode;)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$3;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    #getter for: Lcom/motorola/camera/modes/MosaicPanoramaMode;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$500(Lcom/motorola/camera/modes/MosaicPanoramaMode;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;

    iget-object v2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$3;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    invoke-direct {v1, v2, p1}, Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;-><init>(Lcom/motorola/camera/modes/MosaicPanoramaMode;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$3;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    invoke-static {v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$408(Lcom/motorola/camera/modes/MosaicPanoramaMode;)J

    .line 147
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$3;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    #getter for: Lcom/motorola/camera/modes/MosaicPanoramaMode;->mMeasureFrames:Lcom/motorola/camera/modes/panorama/MeasureFrames;
    invoke-static {v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$600(Lcom/motorola/camera/modes/MosaicPanoramaMode;)Lcom/motorola/camera/modes/panorama/MeasureFrames;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/modes/panorama/MeasureFrames;->measure(Ljava/lang/String;)V

    .line 148
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/Device;->addCallbackBuffer([B)V

    goto :goto_0
.end method
