.class public abstract Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;
.super Lcom/motorola/camera/ui/v2/AbstractSettingPopup;
.source "GenericSliderSettingPopup.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenericSliderSettingPopup"


# instance fields
.field protected mCurrentValue:F

.field private mDialogView:Landroid/view/View;

.field protected mIndex:I

.field protected mListener:Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;

.field protected mMax:F

.field protected mMin:F

.field protected mPreference:Lcom/motorola/camera/SliderPreference;

.field private mScale:F

.field private mSlider:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

.field private mStep:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v3, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mMax:F

    .line 29
    iput v3, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mMin:F

    .line 30
    iput v3, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mScale:F

    .line 31
    iput v3, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mStep:F

    .line 34
    iput v3, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mCurrentValue:F

    .line 43
    sget-object v3, Lcom/motorola/camera/R$styleable;->GenericSliderSettingPopup:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 47
    .local v2, resourceId:I
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSliderSettingPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sliderLayout id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    const v3, 0x7f03000a

    invoke-static {p1, v3, p0}, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mDialogView:Landroid/view/View;

    .line 50
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mDialogView:Landroid/view/View;

    const v4, 0x7f080034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 51
    .local v1, contentView:Landroid/view/ViewGroup;
    invoke-static {p1, v2, v1}, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    const v3, 0x7f08002f

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    iput-object v3, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mSlider:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    .line 53
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mSlider:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setProgressChangeListener(Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget$OnSliderProgressListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public initialize(Lcom/motorola/camera/SliderPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    .line 77
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/SliderPreference;->getMax()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mMax:F

    .line 78
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/SliderPreference;->getMin()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mMin:F

    .line 79
    iget v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mMax:F

    iget v1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mMin:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mScale:F

    .line 80
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/SliderPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mSlider:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    iget v1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mScale:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setSliderMax(I)V

    .line 82
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/AbstractSettingPopup;->onFinishInflate()V

    .line 106
    return-void
.end method

.method public onSliderBarActivated(Z)V
    .locals 0
    .parameter "activated"

    .prologue
    .line 99
    return-void
.end method

.method public onSliderProgressChanged(Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;I)V
    .locals 3
    .parameter "sliderBar"
    .parameter "Progress"

    .prologue
    .line 87
    int-to-float v1, p2

    iget v2, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mMin:F

    add-float v0, v1, v2

    .line 88
    .local v0, index:F
    iget v1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mCurrentValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->onSliderValueChanged(F)V

    .line 90
    iput v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mCurrentValue:F

    .line 91
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    iget v2, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mCurrentValue:F

    invoke-virtual {v1, v2}, Lcom/motorola/camera/SliderPreference;->setCurrentValue(F)V

    .line 94
    :cond_0
    return-void
.end method

.method protected abstract onSliderValueChanged(F)V
.end method

.method public reloadPreference()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public setCurrent(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mSlider:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->onSliderProgressChanged(Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;I)V

    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mSlider:Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/widgets/SliderBarWidget;->setSliderPosition(I)V

    .line 65
    return-void
.end method

.method public setListener(Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mListener:Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;

    .line 69
    return-void
.end method
