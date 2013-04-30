.class Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;
.super Ljava/lang/Object;
.source "MosaicPanoramaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/modes/MosaicPanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Frame"
.end annotation


# instance fields
.field mData:[B

.field final synthetic this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/modes/MosaicPanoramaMode;[B)V
    .locals 0
    .parameter
    .parameter "data"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;->this$0:Lcom/motorola/camera/modes/MosaicPanoramaMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p2, p0, Lcom/motorola/camera/modes/MosaicPanoramaMode$Frame;->mData:[B

    .line 375
    return-void
.end method
