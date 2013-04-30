.class Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;
.super Ljava/lang/Object;
.source "MeasureFrames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/modes/panorama/MeasureFrames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MovingAverage"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mPeriod:I

.field private mSum:D

.field private final mWindow:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/motorola/camera/modes/panorama/MeasureFrames;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/motorola/camera/modes/panorama/MeasureFrames;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/motorola/camera/modes/panorama/MeasureFrames;I)V
    .locals 2
    .parameter
    .parameter "period"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->this$0:Lcom/motorola/camera/modes/panorama/MeasureFrames;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mWindow:Ljava/util/Queue;

    .line 60
    sget-boolean v0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Period must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 61
    :cond_0
    iput p2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mPeriod:I

    .line 62
    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 5
    .parameter "num"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mSum:D

    .line 66
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mWindow:Ljava/util/Queue;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mWindow:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mPeriod:I

    if-le v0, v1, :cond_0

    .line 68
    iget-wide v1, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mSum:D

    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mWindow:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double v0, v1, v3

    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mSum:D

    .line 69
    :cond_0
    return-void
.end method

.method public getAverage()D
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mWindow:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-wide/16 v0, 0x0

    .line 74
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mSum:D

    iget-object v2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->mWindow:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method
