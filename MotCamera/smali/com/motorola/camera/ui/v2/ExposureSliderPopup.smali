.class public Lcom/motorola/camera/ui/v2/ExposureSliderPopup;
.super Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;
.source "ExposureSliderPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExposureSliderPopup"


# instance fields
.field private mExposureText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public initialize(Lcom/motorola/camera/SliderPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->initialize(Lcom/motorola/camera/SliderPreference;)V

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/SliderPreference;->getCurrentValue()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/SliderPreference;->getMin()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->setCurrent(I)V

    .line 31
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 76
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->setCurrent(I)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/SliderPreference;->getMax()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/SliderPreference;->getMin()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->setCurrent(I)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/SliderPreference;->getMax()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/SliderPreference;->getMin()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->setCurrent(I)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x7f080030
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 54
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->onFinishInflate()V

    .line 55
    const v5, 0x7f08002e

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 56
    .local v3, layout:Lcom/motorola/camera/ui/v2/RotateLayout;
    const/16 v5, 0x10e

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 57
    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 58
    .local v4, params:Landroid/widget/RelativeLayout$LayoutParams;
    const v5, 0x7f080030

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, buttonLow:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v5, 0x7f080032

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, buttonHigh:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v5, 0x7f080031

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, buttonCenter:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->mExposureText:Landroid/widget/TextView;

    .line 65
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->mExposureText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->bringToFront()V

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 67
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->invalidate()V

    .line 68
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->requestLayout()V

    .line 69
    return-void
.end method

.method protected onSliderValueChanged(F)V
    .locals 4
    .parameter "index"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mListener:Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mListener:Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v2}, Lcom/motorola/camera/SliderPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;->onSettingValueChanged(Ljava/lang/String;F)V

    .line 40
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, df:Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->mExposureText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v2}, Lcom/motorola/camera/SliderPreference;->getScale()F

    move-result v2

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/SliderPreference;->getCurrentValue()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v1}, Lcom/motorola/camera/SliderPreference;->getMin()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/ExposureSliderPopup;->setCurrent(I)V

    .line 50
    return-void
.end method
