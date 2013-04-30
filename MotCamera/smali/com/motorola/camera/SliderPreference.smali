.class public Lcom/motorola/camera/SliderPreference;
.super Lcom/motorola/camera/CameraPreference;
.source "SliderPreference.java"


# instance fields
.field private mCurrentValue:F

.field private mDefaultValue:F

.field private final mKey:Ljava/lang/String;

.field private mMaxValue:F

.field private mMinValue:F

.field private mScaleValue:F

.field private mStepValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object v1, Lcom/motorola/camera/R$styleable;->SliderPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/SliderPreference;->mKey:Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/SliderPreference;->mMinValue:F

    .line 32
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/SliderPreference;->mMaxValue:F

    .line 33
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/SliderPreference;->mDefaultValue:F

    .line 34
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/SliderPreference;->mStepValue:F

    .line 35
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/SliderPreference;->mScaleValue:F

    .line 36
    iget v1, p0, Lcom/motorola/camera/SliderPreference;->mScaleValue:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 37
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/motorola/camera/SliderPreference;->mScaleValue:F

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentValue()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/motorola/camera/SliderPreference;->mCurrentValue:F

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/camera/SliderPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/motorola/camera/SliderPreference;->mMaxValue:F

    return v0
.end method

.method public getMin()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/motorola/camera/SliderPreference;->mMinValue:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/motorola/camera/SliderPreference;->mScaleValue:F

    return v0
.end method

.method public getStep()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/motorola/camera/SliderPreference;->mStepValue:F

    return v0
.end method

.method public reloadValue()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public setCurrentValue(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 81
    iput p1, p0, Lcom/motorola/camera/SliderPreference;->mCurrentValue:F

    .line 82
    return-void
.end method

.method public setMax(F)V
    .locals 0
    .parameter "max"

    .prologue
    .line 53
    iput p1, p0, Lcom/motorola/camera/SliderPreference;->mMaxValue:F

    .line 54
    return-void
.end method

.method public setMin(F)V
    .locals 0
    .parameter "min"

    .prologue
    .line 57
    iput p1, p0, Lcom/motorola/camera/SliderPreference;->mMinValue:F

    .line 58
    return-void
.end method

.method public setScaleValue(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 65
    iput p1, p0, Lcom/motorola/camera/SliderPreference;->mScaleValue:F

    .line 66
    return-void
.end method

.method public setStep(F)V
    .locals 0
    .parameter "step"

    .prologue
    .line 61
    iput p1, p0, Lcom/motorola/camera/SliderPreference;->mStepValue:F

    .line 62
    return-void
.end method
