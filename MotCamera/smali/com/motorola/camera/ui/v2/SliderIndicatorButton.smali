.class public Lcom/motorola/camera/ui/v2/SliderIndicatorButton;
.super Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;
.source "SliderIndicatorButton.java"


# instance fields
.field private mLayoutId:I

.field private mListener:Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;

.field private mPreference:Lcom/motorola/camera/SliderPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected initializeFeedbackPopup()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected initializePopup()V
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 51
    .local v2, root:Landroid/view/ViewGroup;
    iget v3, p0, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;

    .line 53
    .local v1, popup:Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->initialize(Lcom/motorola/camera/SliderPreference;)V

    .line 54
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup;->setListener(Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;)V

    .line 55
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 0
    .parameter "keyvalues"

    .prologue
    .line 43
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->mPreference:Lcom/motorola/camera/SliderPreference;

    if-eqz v0, :cond_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->mPreference:Lcom/motorola/camera/SliderPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/SliderPreference;->getMax()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->mPreference:Lcom/motorola/camera/SliderPreference;

    invoke-virtual {v0}, Lcom/motorola/camera/SliderPreference;->getMin()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 66
    :cond_2
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->setEnabled(Z)V

    .line 67
    return-void
.end method

.method public setListener(Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->mListener:Lcom/motorola/camera/ui/v2/GenericSliderSettingPopup$Listener;

    .line 38
    return-void
.end method

.method public setPreference(Lcom/motorola/camera/SliderPreference;I)V
    .locals 1
    .parameter "preference"
    .parameter "sliderLayoutId"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->mPreference:Lcom/motorola/camera/SliderPreference;

    .line 28
    iput p2, p0, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->mLayoutId:I

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/SliderIndicatorButton;->dismissAllPopup()Z

    .line 32
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->mPopups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 34
    :cond_0
    return-void
.end method
