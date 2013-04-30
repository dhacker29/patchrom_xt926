.class public Lcom/motorola/camera/ui/v2/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "RotateImageView"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    iput v0, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mCurrentDegree:I

    .line 44
    iput v0, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mStartDegree:I

    .line 45
    iput v0, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mTargetDegree:I

    .line 47
    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mEnableAnimation:Z

    .line 49
    iput-wide v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mAnimationStartTime:J

    .line 50
    iput-wide v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mAnimationEndTime:J

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v0, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mCurrentDegree:I

    .line 44
    iput v0, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mStartDegree:I

    .line 45
    iput v0, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mTargetDegree:I

    .line 47
    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mEnableAnimation:Z

    .line 49
    iput-wide v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mAnimationStartTime:J

    .line 50
    iput-wide v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mAnimationEndTime:J

    .line 54
    return-void
.end method


# virtual methods
.method public enableAnimation(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mEnableAnimation:Z

    .line 62
    return-void
.end method

.method protected getDegree()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mTargetDegree:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 99
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 102
    .local v4, bounds:Landroid/graphics/Rect;
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v17, v19, v20

    .line 103
    .local v17, w:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 105
    .local v8, h:I
    if-eqz v17, :cond_0

    if-eqz v8, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/RotateImageView;->mCurrentDegree:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/RotateImageView;->mTargetDegree:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 108
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v14

    .line 109
    .local v14, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/camera/ui/v2/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v19, v0

    cmp-long v19, v14, v19

    if-gez v19, :cond_7

    .line 110
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/camera/ui/v2/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v19, v0

    sub-long v19, v14, v19

    move-wide/from16 v0, v19

    long-to-int v6, v0

    .line 111
    .local v6, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/RotateImageView;->mStartDegree:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/RotateImageView;->mClockwise:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .end local v6           #deltaTime:I
    :goto_1
    mul-int/lit16 v0, v6, 0x10e

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    add-int v5, v19, v20

    .line 113
    .local v5, degree:I
    if-ltz v5, :cond_6

    rem-int/lit16 v5, v5, 0x168

    .line 114
    :goto_2
    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/camera/ui/v2/RotateImageView;->mCurrentDegree:I

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->invalidate()V

    .line 121
    .end local v5           #degree:I
    .end local v14           #time:J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->getPaddingLeft()I

    move-result v10

    .line 122
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->getPaddingTop()I

    move-result v16

    .line 123
    .local v16, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->getPaddingRight()I

    move-result v12

    .line 124
    .local v12, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->getPaddingBottom()I

    move-result v3

    .line 125
    .local v3, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->getWidth()I

    move-result v19

    sub-int v19, v19, v10

    sub-int v18, v19, v12

    .line 126
    .local v18, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->getHeight()I

    move-result v19

    sub-int v19, v19, v16

    sub-int v9, v19, v3

    .line 128
    .local v9, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v13

    .line 131
    .local v13, saveCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v19

    sget-object v20, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    if-ge v9, v8, :cond_8

    .line 133
    :cond_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    int-to-float v0, v9

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 134
    .local v11, ratio:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    int-to-float v0, v9

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v11, v11, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 139
    .end local v11           #ratio:F
    :cond_4
    :goto_4
    div-int/lit8 v19, v18, 0x2

    add-int v19, v19, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, v9, 0x2

    add-int v20, v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/RotateImageView;->mCurrentDegree:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 141
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    neg-int v0, v8

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 142
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 143
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 111
    .end local v3           #bottom:I
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v12           #right:I
    .end local v13           #saveCount:I
    .end local v16           #top:I
    .end local v18           #width:I
    .restart local v6       #deltaTime:I
    .restart local v14       #time:J
    :cond_5
    neg-int v6, v6

    goto/16 :goto_1

    .line 113
    .end local v6           #deltaTime:I
    .restart local v5       #degree:I
    :cond_6
    rem-int/lit16 v0, v5, 0x168

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v5, v0, 0x168

    goto/16 :goto_2

    .line 117
    .end local v5           #degree:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/RotateImageView;->mTargetDegree:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/camera/ui/v2/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_3

    .line 135
    .end local v14           #time:J
    .restart local v3       #bottom:I
    .restart local v9       #height:I
    .restart local v10       #left:I
    .restart local v12       #right:I
    .restart local v13       #saveCount:I
    .restart local v16       #top:I
    .restart local v18       #width:I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v19

    sget-object v20, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 136
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    int-to-float v0, v9

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 137
    .restart local v11       #ratio:F
    int-to-float v0, v10

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v11, v11, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto/16 :goto_4
.end method

.method public setDegree(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 75
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 76
    :goto_0
    iget v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 94
    :goto_1
    return-void

    .line 75
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 78
    :cond_1
    iput p1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mTargetDegree:I

    .line 79
    iget v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mStartDegree:I

    .line 80
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mAnimationStartTime:J

    .line 82
    iget v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 83
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 87
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 89
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mClockwise:Z

    .line 90
    iget-wide v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x10e

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/motorola/camera/ui/v2/RotateImageView;->mAnimationEndTime:J

    .line 93
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->invalidate()V

    goto :goto_1

    .line 83
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 89
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setDegree(I)V

    .line 70
    return-void
.end method
