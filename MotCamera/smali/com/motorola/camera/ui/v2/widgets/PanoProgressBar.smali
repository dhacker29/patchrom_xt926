.class public Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;
.super Landroid/widget/ImageView;
.source "PanoProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar$OnDirectionChangeListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_NONE:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PanoProgressBar"


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBitmapMask:Landroid/graphics/Bitmap;

.field private mCompositeBitmap:Landroid/graphics/Bitmap;

.field private mCompositeCanvas:Landroid/graphics/Canvas;

.field private final mCompositePaint:Landroid/graphics/Paint;

.field private mDirection:I

.field private final mDoneAreaPaint:Landroid/graphics/Paint;

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mHeight:F

.field private final mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorWidth:F

.field private mLeftMostProgress:F

.field private mListener:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar$OnDirectionChangeListener;

.field private final mMaskPaint:Landroid/graphics/Paint;

.field private mMaxProgress:F

.field private mProgress:F

.field private mProgressOffset:F

.field private mRightMostProgress:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgress:F

    .line 38
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mMaxProgress:F

    .line 39
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mLeftMostProgress:F

    .line 40
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mRightMostProgress:F

    .line 41
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgressOffset:F

    .line 42
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mIndicatorWidth:F

    .line 43
    iput v2, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDirection:I

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mMaskPaint:Landroid/graphics/Paint;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mListener:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar$OnDirectionChangeListener;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositePaint:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 72
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 73
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    .line 80
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mBitmapMask:Landroid/graphics/Bitmap;

    .line 81
    return-void
.end method

.method private setDirection(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 88
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDirection:I

    if-eq v0, p1, :cond_1

    .line 89
    iput p1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDirection:I

    .line 90
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mListener:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar$OnDirectionChangeListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mListener:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar$OnDirectionChangeListener;

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDirection:I

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar$OnDirectionChangeListener;->onDirectionChange(I)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->invalidate()V

    .line 95
    :cond_1
    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDirection:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 188
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositeCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 189
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositeCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mLeftMostProgress:F

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mRightMostProgress:F

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 196
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 197
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mIndicatorWidth:F

    sub-float/2addr v0, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 198
    .local v1, l:F
    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgress:F

    .line 203
    .local v3, r:F
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositeCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 206
    .end local v1           #l:F
    .end local v3           #r:F
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositeCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mBitmapMask:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 207
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositeBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 208
    return-void

    .line 200
    :cond_1
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgress:F

    .line 201
    .restart local v1       #l:F
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mIndicatorWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mWidth:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .restart local v3       #r:F
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 119
    int-to-float v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mWidth:F

    .line 120
    int-to-float v0, p2

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mHeight:F

    .line 121
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mWidth:F

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mHeight:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 122
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositeBitmap:Landroid/graphics/Bitmap;

    .line 124
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mCompositeCanvas:Landroid/graphics/Canvas;

    .line 125
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgress:F

    .line 180
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgressOffset:F

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setDirection(I)V

    .line 182
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->invalidate()V

    .line 183
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->invalidate()V

    .line 105
    return-void
.end method

.method public setDoneColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDoneAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->invalidate()V

    .line 110
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->invalidate()V

    .line 115
    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0
    .parameter "w"

    .prologue
    .line 132
    iput p1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mIndicatorWidth:F

    .line 133
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->invalidate()V

    .line 134
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 128
    int-to-float v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mMaxProgress:F

    .line 129
    return-void
.end method

.method public setOnDirectionChangeListener(Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mListener:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar$OnDirectionChangeListener;

    .line 85
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    .line 154
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDirection:I

    if-nez v0, :cond_0

    .line 155
    const/16 v0, 0xa

    if-le p1, v0, :cond_4

    .line 156
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setRightIncreasing(Z)V

    .line 162
    :cond_0
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_3

    .line 163
    int-to-float v0, p1

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mMaxProgress:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgressOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgress:F

    .line 165
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mWidth:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgress:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgress:F

    .line 166
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 168
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mRightMostProgress:F

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mRightMostProgress:F

    .line 170
    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mDirection:I

    if-ne v0, v3, :cond_2

    .line 172
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mLeftMostProgress:F

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mLeftMostProgress:F

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->invalidate()V

    .line 176
    :cond_3
    return-void

    .line 157
    :cond_4
    const/16 v0, -0xa

    if-ge p1, v0, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setRightIncreasing(Z)V

    goto :goto_0
.end method

.method public setRightIncreasing(Z)V
    .locals 1
    .parameter "rightIncreasing"

    .prologue
    const/4 v0, 0x0

    .line 137
    if-eqz p1, :cond_0

    .line 138
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mLeftMostProgress:F

    .line 139
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mRightMostProgress:F

    .line 140
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgressOffset:F

    .line 141
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setDirection(I)V

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->invalidate()V

    .line 149
    return-void

    .line 143
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mLeftMostProgress:F

    .line 144
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mRightMostProgress:F

    .line 145
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->mProgressOffset:F

    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setDirection(I)V

    goto :goto_0
.end method
