.class Lcom/motorola/camera/modes/MosaicPanoramaMode$2;
.super Ljava/lang/Object;
.source "MosaicPanoramaMode.java"

# interfaces
.implements Lcom/android/camera/MosaicFrameProcessor$ProgressListener;


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
    .line 100
    iput-object p1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$2;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 9
    .parameter "isFinished"
    .parameter "panningRateX"
    .parameter "panningRateY"
    .parameter "progressX"
    .parameter "progressY"

    .prologue
    const/high16 v8, 0x4320

    const/4 v1, 0x0

    .line 104
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onProgress isFinished:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", panningRateX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", panningRateY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", progressX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", progressY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$2;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    #getter for: Lcom/motorola/camera/modes/MosaicPanoramaMode;->mHorizontalViewAngle:F
    invoke-static {v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$100(Lcom/motorola/camera/modes/MosaicPanoramaMode;)F

    move-result v0

    mul-float v2, p4, v0

    .line 110
    .local v2, accumulatedHorizontalAngle:F
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$2;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    #getter for: Lcom/motorola/camera/modes/MosaicPanoramaMode;->mVerticalViewAngle:F
    invoke-static {v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$200(Lcom/motorola/camera/modes/MosaicPanoramaMode;)F

    move-result v0

    mul-float v3, p5, v0

    .line 111
    .local v3, accumulatedVerticalAngle:F
    if-nez p1, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-gez v0, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-ltz v0, :cond_2

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$2;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v1, v1, v7}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->notifyClient(IIILjava/lang/Object;)V

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$2;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    #getter for: Lcom/motorola/camera/modes/MosaicPanoramaMode;->mHorizontalViewAngle:F
    invoke-static {v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$100(Lcom/motorola/camera/modes/MosaicPanoramaMode;)F

    move-result v0

    mul-float v4, p2, v0

    .line 117
    .local v4, panningRateXInDegree:F
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$2;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    #getter for: Lcom/motorola/camera/modes/MosaicPanoramaMode;->mVerticalViewAngle:F
    invoke-static {v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$200(Lcom/motorola/camera/modes/MosaicPanoramaMode;)F

    move-result v0

    mul-float v5, p3, v0

    .line 118
    .local v5, panningRateYInDegree:F
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$2;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    #calls: Lcom/motorola/camera/modes/MosaicPanoramaMode;->sendViewFinderInfo(ZFFFF)V
    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$300(Lcom/motorola/camera/modes/MosaicPanoramaMode;ZFFFF)V

    goto :goto_0
.end method
