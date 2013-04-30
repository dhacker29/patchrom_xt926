.class public Lcom/android/camera/MosaicFrameProcessor;
.super Ljava/lang/Object;
.source "MosaicFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MosaicFrameProcessor$ProgressListener;
    }
.end annotation


# static fields
.field private static final FRAME_COUNT_INDEX:I = 0x9

.field private static final HR_TO_LR_DOWNSAMPLE_FACTOR:I = 0x4

.field private static final MAX_NUMBER_OF_FRAMES:I = 0x64

.field private static final MOSAIC_RET_CODE_INDEX:I = 0xa

.field private static final NUM_FRAMES_IN_BUFFER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MosaicFrameProcessor"

.field private static final WINDOW_SIZE:I = 0x3

.field private static final X_COORD_INDEX:I = 0x2

.field private static final Y_COORD_INDEX:I = 0x5

.field private static sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;


# instance fields
.field private mCurrProcessFrameIdx:I

.field private mDeltaTime:[F

.field private mDeltaX:[F

.field private mDeltaY:[F

.field private mFillIn:I

.field private final mFrameTimestamp:[J

.field private mIsMosaicMemoryAllocated:Z

.field private mLastProcessFrameIdx:I

.field private mLastProcessedFrameTimestamp:J

.field private mMosaicer:Lcom/android/camera/Mosaic;

.field private mOldestIdx:I

.field private mPanningRateX:F

.field private mPanningRateY:F

.field private mPreviewBufferSize:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

.field private mTotalDeltaTime:F

.field private mTotalFrameCount:I

.field private mTotalTranslationX:F

.field private mTotalTranslationY:F

.field private mTranslationLastX:F

.field private mTranslationLastY:F


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFrameTimestamp:[J

    .line 41
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    .line 42
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 44
    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 45
    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 52
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    .line 53
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    .line 54
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaTime:[F

    .line 55
    iput v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I

    .line 56
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 57
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 58
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 81
    new-instance v0, Lcom/android/camera/Mosaic;

    invoke-direct {v0}, Lcom/android/camera/Mosaic;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    .line 82
    return-void
.end method

.method public static getInstance()Lcom/android/camera/MosaicFrameProcessor;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/camera/MosaicFrameProcessor;

    invoke-direct {v0}, Lcom/android/camera/MosaicFrameProcessor;-><init>()V

    sput-object v0, Lcom/android/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 77
    :cond_0
    sget-object v0, Lcom/android/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method private declared-synchronized setupMosaicer(III)V
    .locals 3
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    const-string v0, "MosaicFrameProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupMosaicer w, h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MosaicFrameProcessor in use!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 125
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/Mosaic;->allocateMosaicMemory(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized calculateTranslationRate(J[B)V
    .locals 8
    .parameter "now"
    .parameter "data"

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v5, p3}, Lcom/android/camera/Mosaic;->setSourceImage([B)[F

    move-result-object v0

    .line 209
    .local v0, frameData:[F
    const/16 v5, 0xa

    aget v5, v0, v5

    float-to-int v2, v5

    .line 210
    .local v2, ret_code:I
    const/16 v5, 0x9

    aget v5, v0, v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 211
    const/4 v5, 0x2

    aget v3, v0, v5

    .line 212
    .local v3, translationCurrX:F
    const/4 v5, 0x5

    aget v4, v0, v5

    .line 214
    .local v4, translationCurrY:F
    iget-wide v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    long-to-float v5, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 216
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 217
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 218
    iput-wide p1, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :goto_0
    monitor-exit p0

    return-void

    .line 224
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I

    .line 225
    .local v1, idx:I
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 226
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 227
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaTime:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 228
    iget-object v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v5, v1

    .line 229
    iget-object v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v5, v1

    .line 230
    iget-object v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaTime:[F

    iget-wide v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    sub-long v6, p1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    aput v6, v5, v1

    .line 231
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 232
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 233
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    iget-object v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaTime:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 241
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    .line 243
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    .line 246
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 247
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 248
    iput-wide p1, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 249
    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mOldestIdx:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 208
    .end local v0           #frameData:[F
    .end local v1           #idx:I
    .end local v2           #ret_code:I
    .end local v3           #translationCurrX:F
    .end local v4           #translationCurrY:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0}, Lcom/android/camera/Mosaic;->freeMosaicMemory()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 107
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 109
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createMosaic(Z)I
    .locals 1
    .parameter "highRes"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1}, Lcom/android/camera/Mosaic;->createMosaic(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFinalMosaicNV21()[B
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0}, Lcom/android/camera/Mosaic;->getFinalMosaicNV21()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize(III)V
    .locals 3
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    .line 95
    iput p2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    .line 96
    iput p3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewBufferSize:I

    .line 97
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    iget v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewBufferSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/MosaicFrameProcessor;->setupMosaicer(III)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/MosaicFrameProcessor;->setStripType(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMosaicMemoryAllocated()Z
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized processFrame([B)V
    .locals 11
    .parameter "data"

    .prologue
    const/high16 v10, 0x4080

    .line 163
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 170
    .local v6, t1:J
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFrameTimestamp:[J

    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    aput-wide v6, v0, v1

    .line 172
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    iput v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 173
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    .line 177
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    if-eq v0, v1, :cond_0

    .line 178
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iput v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 181
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mFrameTimestamp:[J

    iget v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    aget-wide v8, v0, v1

    .line 185
    .local v8, timestamp:J
    iget v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 188
    invoke-virtual {p0, v8, v9, p1}, Lcom/android/camera/MosaicFrameProcessor;->calculateTranslationRate(J[B)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v10

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v10

    iget v10, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    .end local v6           #t1:J
    .end local v8           #timestamp:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 197
    .restart local v6       #t1:J
    .restart local v8       #timestamp:J
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v10

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v10

    iget v10, p0, Lcom/android/camera/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public reportProgress(ZZ)I
    .locals 1
    .parameter "hires"
    .parameter "cancel"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/Mosaic;->reportProgress(ZZ)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 131
    iput v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 132
    iput v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mFillIn:I

    .line 133
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 134
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 135
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 136
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 137
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 138
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 139
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateX:F

    .line 140
    iput v3, p0, Lcom/android/camera/MosaicFrameProcessor;->mPanningRateY:F

    .line 141
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 142
    iput v4, p0, Lcom/android/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaX:[F

    aput v3, v1, v0

    .line 145
    iget-object v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaY:[F

    aput v3, v1, v0

    .line 146
    iget-object v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mDeltaTime:[F

    aput v3, v1, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v1}, Lcom/android/camera/Mosaic;->reset()V

    .line 149
    return-void
.end method

.method public declared-synchronized setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/MosaicFrameProcessor;->mProgressListener:Lcom/android/camera/MosaicFrameProcessor$ProgressListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStripType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/MosaicFrameProcessor;->mMosaicer:Lcom/android/camera/Mosaic;

    invoke-virtual {v0, p1}, Lcom/android/camera/Mosaic;->setStripType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
