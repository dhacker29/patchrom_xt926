.class public Lcom/motorola/camera/modes/panorama/MeasureFrames;
.super Ljava/lang/Object;
.source "MeasureFrames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;
    }
.end annotation


# static fields
.field public static final MEASURE_FPS:Z = true

.field private static final MEASURE_REPORTING_INTERVAL:I = 0x3e8

.field private static final ROLLING_AVERAGE_SAMPLE_CNT:I = 0x3c


# instance fields
.field private mCurrent:J

.field private mDeltaToLast:J

.field private mDeltaToMeasure:J

.field private mFps:D

.field private mFrameCounter:I

.field private mLastFpsTime:J

.field private mLastMeasuredFpsTime:J

.field private mMaxTime:J

.field private mRollingAverage:Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide v2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mLastFpsTime:J

    .line 20
    iput-wide v2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mLastMeasuredFpsTime:J

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mFrameCounter:I

    .line 22
    iput-wide v2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mCurrent:J

    .line 23
    iput-wide v2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mDeltaToMeasure:J

    .line 24
    iput-wide v2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mDeltaToLast:J

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mFps:D

    .line 26
    iput-wide v2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mMaxTime:J

    .line 27
    new-instance v0, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;

    const/16 v1, 0x3c

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;-><init>(Lcom/motorola/camera/modes/panorama/MeasureFrames;I)V

    iput-object v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mRollingAverage:Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mLastFpsTime:J

    .line 31
    return-void
.end method


# virtual methods
.method public measure(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 35
    iget v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mFrameCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mFrameCounter:I

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mCurrent:J

    .line 37
    iget-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mCurrent:J

    iget-wide v2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mLastMeasuredFpsTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mDeltaToMeasure:J

    .line 38
    iget-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mCurrent:J

    iget-wide v2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mLastFpsTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mDeltaToLast:J

    .line 39
    iget-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mCurrent:J

    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mLastFpsTime:J

    .line 40
    iget-object v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mRollingAverage:Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;

    iget-wide v1, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mDeltaToLast:J

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->add(D)V

    .line 41
    iget-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mDeltaToLast:J

    iget-wide v2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mMaxTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mDeltaToLast:J

    :goto_0
    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mMaxTime:J

    .line 42
    iget-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mDeltaToMeasure:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 43
    iget v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mFrameCounter:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mDeltaToMeasure:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mFps:D

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mFrameCounter:I

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mLastMeasuredFpsTime:J

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FPS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mFps:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frame time(ms) avg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mRollingAverage:Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;

    invoke-virtual {v1}, Lcom/motorola/camera/modes/panorama/MeasureFrames$MovingAverage;->getAverage()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mMaxTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mMaxTime:J

    .line 52
    :cond_0
    return-void

    .line 41
    :cond_1
    iget-wide v0, p0, Lcom/motorola/camera/modes/panorama/MeasureFrames;->mMaxTime:J

    goto :goto_0
.end method
