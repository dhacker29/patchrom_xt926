.class Lcom/motorola/camera/modes/MosaicPanoramaMode$GetPreviewMosaicTask;
.super Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;
.source "MosaicPanoramaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/modes/MosaicPanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPreviewMosaicTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/modes/MosaicPanoramaMode;Lcom/motorola/camera/PanoramaManager;)V
    .locals 0
    .parameter
    .parameter "manager"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$GetPreviewMosaicTask;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    .line 326
    invoke-direct {p0, p2}, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;-><init>(Lcom/motorola/camera/PanoramaManager;)V

    .line 327
    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    .line 331
    invoke-super {p0, p1}, Lcom/motorola/camera/modes/panorama/GeneratePreviewTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    .line 332
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$GetPreviewMosaicTask;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    iget-object v0, v0, Lcom/motorola/camera/modes/PanoramaMode;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/PanoramaManager;->imagePreview(Landroid/graphics/Bitmap;)V

    .line 334
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$GetPreviewMosaicTask;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    #calls: Lcom/motorola/camera/modes/MosaicPanoramaMode;->saveHighResMosaic()V
    invoke-static {v0}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->access$700(Lcom/motorola/camera/modes/MosaicPanoramaMode;)V

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$GetPreviewMosaicTask;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    iget-object v0, v0, Lcom/motorola/camera/modes/PanoramaMode;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    invoke-virtual {v0}, Lcom/motorola/camera/PanoramaManager;->savingError()V

    .line 337
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$GetPreviewMosaicTask;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/motorola/camera/modes/MosaicPanoramaMode;->notifyClient(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 324
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/modes/MosaicPanoramaMode$GetPreviewMosaicTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
