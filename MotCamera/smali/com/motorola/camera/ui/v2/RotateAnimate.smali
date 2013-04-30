.class public Lcom/motorola/camera/ui/v2/RotateAnimate;
.super Ljava/lang/Object;
.source "RotateAnimate.java"


# instance fields
.field private mOrientation:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mView:Landroid/view/View;

    .line 29
    return-void
.end method

.method private animate(II)V
    .locals 8
    .parameter "degree"
    .parameter "duration"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 44
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 46
    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mOrientation:I

    sub-int v7, p1, v1

    .line 47
    .local v7, diff:I
    if-ltz v7, :cond_2

    .line 51
    :goto_1
    const/16 v1, 0xb4

    if-le v7, v1, :cond_1

    add-int/lit16 v7, v7, -0x168

    .line 53
    :cond_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mOrientation:I

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mOrientation:I

    add-int/2addr v2, v7

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 54
    .local v0, rotateAnimation:Landroid/view/animation/RotateAnimation;
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 56
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 57
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 47
    .end local v0           #rotateAnimation:Landroid/view/animation/RotateAnimation;
    :cond_2
    add-int/lit16 v7, v7, 0x168

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 67
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 72
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    return-void
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 34
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    .line 35
    :cond_0
    add-int/lit16 p1, p1, 0xb4

    .line 37
    :cond_1
    rem-int/lit16 p1, p1, 0x168

    .line 38
    const/16 v0, 0x12c

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/v2/RotateAnimate;->animate(II)V

    .line 39
    iput p1, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mOrientation:I

    .line 40
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget v0, p0, Lcom/motorola/camera/ui/v2/RotateAnimate;->mOrientation:I

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/ui/v2/RotateAnimate;->animate(II)V

    .line 63
    return-void
.end method
