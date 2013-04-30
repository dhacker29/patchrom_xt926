.class public abstract Lcom/motorola/camera/ui/v2/Popup;
.super Lcom/motorola/camera/ui/v2/RotateLayout;
.source "Popup.java"


# instance fields
.field protected mFadeIn:Landroid/view/animation/Animation;

.field protected mFadeOut:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const v0, 0x7f040004

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/Popup;->mFadeIn:Landroid/view/animation/Animation;

    .line 17
    const v0, 0x7f040005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/Popup;->mFadeOut:Landroid/view/animation/Animation;

    .line 18
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/Popup;->clearAnimation()V

    .line 34
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/Popup;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/Popup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 35
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/Popup;->setVisibility(I)V

    .line 36
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/Popup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPopup()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/Popup;->showPopup(I)V

    .line 30
    return-void
.end method

.method public showPopup(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/Popup;->setVisibility(I)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/v2/Popup;->setOrientation(I)V

    .line 23
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/Popup;->clearAnimation()V

    .line 24
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/Popup;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/Popup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 25
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/Popup;->requestFocus()Z

    .line 26
    return-void
.end method
