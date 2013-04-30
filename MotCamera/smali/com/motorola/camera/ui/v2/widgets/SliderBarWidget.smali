.class public Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;
.super Landroid/widget/RelativeLayout;
.source "SliderBarWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SliderBar"


# instance fields
.field private final THRESHOLD_FIRST_MOVE:I

.field private mBar:Landroid/widget/ImageView;

.field private mHeight:I

.field private mInitialScale:I

.field private mInitialized:Z

.field private mLastPositionedScale:I

.field private mProgressListener:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;

.field protected mSlider:Landroid/widget/ImageView;

.field private mSliderLength:I

.field private mSliderMax:I

.field private mSliderPosition:I

.field private mStartChanging:Z

.field private sPixelDensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v9, 0xe

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/16 v4, 0x64

    iput v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderMax:I

    .line 38
    iput-boolean v7, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mInitialized:Z

    .line 40
    iput v7, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderPosition:I

    .line 41
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->sPixelDensity:F

    .line 42
    iput v8, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mLastPositionedScale:I

    .line 47
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mBar:Landroid/widget/ImageView;

    .line 48
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mBar:Landroid/widget/ImageView;

    const v5, 0x7f0200b8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mBar:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mBar:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, barParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mBar:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v0}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    .line 58
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    const v5, 0x7f0200a3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 65
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 66
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->sPixelDensity:F

    .line 67
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->dpToPixel(I)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->THRESHOLD_FIRST_MOVE:I

    .line 68
    return-void
.end method

.method private doMathematicalAdjustment(II)I
    .locals 2
    .parameter "scale"
    .parameter "sliderPosition"

    .prologue
    .line 235
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mLastPositionedScale:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 236
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderMax:I

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderPosition:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderLength:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mLastPositionedScale:I

    .line 238
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mLastPositionedScale:I

    if-ge v0, p1, :cond_1

    .line 239
    add-int/lit8 p2, p2, -0x1

    .line 244
    :goto_0
    return p2

    .line 242
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 87
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->sPixelDensity:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getSliderPosition(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 179
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mHeight:I

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int v0, v1, p1

    .line 180
    .local v0, pos:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 181
    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderLength:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderLength:I

    .line 182
    :cond_1
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mHeight:I

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 220
    :goto_0
    return v3

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 190
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setActivated(Z)V

    .line 200
    iput-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mStartChanging:Z

    .line 202
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->getSliderPosition(I)I

    move-result v2

    .line 203
    .local v2, pos:I
    iget-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mStartChanging:Z

    if-nez v4, :cond_3

    .line 206
    iget v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderPosition:I

    sub-int v1, v4, v2

    .line 207
    .local v1, delta:I
    iget v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->THRESHOLD_FIRST_MOVE:I

    if-gt v1, v4, :cond_2

    iget v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->THRESHOLD_FIRST_MOVE:I

    neg-int v4, v4

    if-ge v1, v4, :cond_3

    .line 209
    :cond_2
    iput-boolean v3, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mStartChanging:Z

    .line 212
    .end local v1           #delta:I
    :cond_3
    iget-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mStartChanging:Z

    if-eqz v4, :cond_5

    .line 213
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mProgressListener:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;

    if-eqz v4, :cond_4

    .line 214
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mProgressListener:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;

    iget v5, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderMax:I

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderLength:I

    div-int/2addr v5, v6

    invoke-interface {v4, p0, v5}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;->onSliderProgressChanged(Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;I)V

    .line 215
    :cond_4
    iput v2, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderPosition:I

    .line 216
    iget v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderMax:I

    iget v5, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderPosition:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderLength:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mLastPositionedScale:I

    .line 218
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->requestLayout()V

    goto :goto_0

    .line 194
    .end local v2           #pos:I
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setActivated(Z)V

    .line 195
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSliderBarMax()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderMax:I

    return v0
.end method

.method public getSliderPosition()I
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mLastPositionedScale:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 151
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderMax:I

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderPosition:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderLength:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mLastPositionedScale:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x0

    .line 226
    sub-int v2, p4, p2

    .line 227
    .local v2, width:I
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 228
    .local v1, sliderHeight:I
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mBar:Landroid/widget/ImageView;

    div-int/lit8 v4, v1, 0x2

    iget v5, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mHeight:I

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v3, v7, v4, v2, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 229
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mBar:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderPosition:I

    sub-int v0, v3, v4

    .line 230
    .local v0, pos:I
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    div-int/lit8 v4, v1, 0x2

    sub-int v4, v0, v4

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v3, v7, v4, v2, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 232
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 169
    iput p2, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mHeight:I

    .line 170
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mHeight:I

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderLength:I

    .line 171
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mInitialized:Z

    if-nez v0, :cond_0

    .line 172
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mInitialScale:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setSliderPosition(I)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mInitialized:Z

    .line 175
    :cond_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 161
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mProgressListener:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mProgressListener:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;

    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;->onSliderBarActivated(Z)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mBar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 165
    return-void
.end method

.method public setInitialScale(I)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setSliderPosition(I)V

    .line 112
    return-void
.end method

.method public setProgressChangeListener(Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mProgressListener:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;

    .line 84
    return-void
.end method

.method public setSliderMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 103
    iput p1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderMax:I

    .line 104
    return-void
.end method

.method public setSliderPosition(I)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 119
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderMax:I

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderLength:I

    if-nez v1, :cond_2

    .line 124
    iput p1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mInitialScale:I

    goto :goto_0

    .line 127
    :cond_2
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mLastPositionedScale:I

    if-eq p1, v1, :cond_0

    .line 130
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderLength:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderMax:I

    div-int v0, v1, v2

    .line 137
    .local v0, sliderPosition:I
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderPosition:I

    if-ne v1, v0, :cond_3

    .line 138
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mLastPositionedScale:I

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->doMathematicalAdjustment(II)I

    move-result v0

    .line 140
    :cond_3
    iput p1, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mLastPositionedScale:I

    .line 141
    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->mSliderPosition:I

    .line 142
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->requestLayout()V

    goto :goto_0
.end method
