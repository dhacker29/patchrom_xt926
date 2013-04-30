.class public Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;
.super Lcom/motorola/camera/ui/v2/widgets/ZoomControl;
.source "ZoomControlBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomControlBar"


# instance fields
.field private final ICON_SPACING:I

.field private mHeight:I

.field private mIconHeight:I

.field private mSliderBar:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

.field private mSliderProgressListener:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;

.field private mTotalIconHeight:I

.field private sPixelDensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->sPixelDensity:F

    .line 77
    new-instance v2, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar$1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar$1;-><init>(Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mSliderProgressListener:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;

    .line 28
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 29
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 31
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 32
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->sPixelDensity:F

    .line 33
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->dpToPixel(I)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->ICON_SPACING:I

    .line 34
    return-void
.end method

.method private dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 91
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->sPixelDensity:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mSliderBar:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    .line 48
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mSliderBar:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mSliderProgressListener:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setProgressChangeListener(Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;)V

    .line 49
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->onFinishInflate()V

    .line 50
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 37
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomMax:I

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    sub-int v0, p4, p2

    .line 40
    .local v0, width:I
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mSliderBar:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mTotalIconHeight:I

    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mHeight:I

    iget v4, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mTotalIconHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v5, v2, v0, v3}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->layout(IIII)V

    .line 41
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mIconHeight:I

    invoke-virtual {v1, v5, v5, v0, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 42
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mHeight:I

    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mIconHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mHeight:I

    invoke-virtual {v1, v5, v2, v0, v3}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 54
    iput p2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mHeight:I

    .line 55
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mIconHeight:I

    .line 56
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mIconHeight:I

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->ICON_SPACING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mTotalIconHeight:I

    .line 57
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->setActivated(Z)V

    .line 96
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mSliderBar:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setActivated(Z)V

    .line 97
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mSliderBar:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setEnabled(Z)V

    .line 98
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->setZoomIndex(I)V

    .line 73
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mSliderBar:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setSliderPosition(I)V

    .line 74
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->requestLayout()V

    .line 75
    return-void
.end method

.method public setZoomMax(I)V
    .locals 2
    .parameter "zoomMax"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->setZoomMax(I)V

    .line 63
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mSliderBar:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setSliderMax(I)V

    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->mSliderBar:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setInitialScale(I)V

    .line 67
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->requestLayout()V

    .line 68
    return-void
.end method
