.class Lcom/motorola/camera/modes/MosaicPanoramaMode$1;
.super Ljava/lang/Object;
.source "MosaicPanoramaMode.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/modes/MosaicPanoramaMode;
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
    .line 71
    iput-object p1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$1;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$1;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    iget-object v0, v0, Lcom/motorola/camera/modes/PanoramaMode;->mPanoramaManager:Lcom/motorola/camera/PanoramaManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PanoramaManager;->viewFinderInfo(Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method
