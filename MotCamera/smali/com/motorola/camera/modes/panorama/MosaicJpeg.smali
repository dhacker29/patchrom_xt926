.class public Lcom/motorola/camera/modes/panorama/MosaicJpeg;
.super Ljava/lang/Object;
.source "MosaicJpeg.java"


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field public final width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/modes/panorama/MosaicJpeg;->data:[B

    .line 25
    iput v1, p0, Lcom/motorola/camera/modes/panorama/MosaicJpeg;->width:I

    .line 26
    iput v1, p0, Lcom/motorola/camera/modes/panorama/MosaicJpeg;->height:I

    .line 27
    iput-boolean v1, p0, Lcom/motorola/camera/modes/panorama/MosaicJpeg;->isValid:Z

    .line 28
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/modes/panorama/MosaicJpeg;->data:[B

    .line 18
    iput p2, p0, Lcom/motorola/camera/modes/panorama/MosaicJpeg;->width:I

    .line 19
    iput p3, p0, Lcom/motorola/camera/modes/panorama/MosaicJpeg;->height:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/modes/panorama/MosaicJpeg;->isValid:Z

    .line 21
    return-void
.end method
