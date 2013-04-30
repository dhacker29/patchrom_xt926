.class public Lcom/motorola/camera/ui/v2/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateLayout"


# instance fields
.field private mChild:Landroid/view/View;

.field protected mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/RotateLayout;->setBackgroundResource(I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 58
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 59
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 68
    sub-int v1, p4, p2

    .line 69
    .local v1, width:I
    sub-int v0, p5, p3

    .line 70
    .local v0, height:I
    iget v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 73
    :sswitch_0
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 77
    :sswitch_1
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v4, 0x0

    .line 89
    const/4 v1, 0x0

    .local v1, w:I
    const/4 v0, 0x0

    .line 90
    .local v0, h:I
    iget v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 104
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/v2/RotateLayout;->setMeasuredDimension(II)V

    .line 106
    iget v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 124
    :goto_1
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 125
    return-void

    .line 93
    :sswitch_0
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/motorola/camera/ui/v2/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 94
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 95
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 96
    goto :goto_0

    .line 99
    :sswitch_1
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/motorola/camera/ui/v2/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 100
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 101
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 108
    :sswitch_2
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 109
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 112
    :sswitch_3
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 113
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 116
    :sswitch_4
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 117
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 120
    :sswitch_5
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 121
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 106
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 135
    rem-int/lit16 p1, p1, 0x168

    .line 136
    iget v0, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iput p1, p0, Lcom/motorola/camera/ui/v2/RotateLayout;->mOrientation:I

    .line 138
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/RotateLayout;->requestLayout()V

    goto :goto_0
.end method
