.class Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;
.super Ljava/lang/Object;
.source "SlidingDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SlidingDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingDoorElement"
.end annotation


# static fields
.field static final DIR_ABSENT:I = 0x0

.field static final DIR_NEGATIVE:I = -0x1

.field static final DIR_POSITIVE:I = 0x1

.field private static final OPAQUE_ALPHA:I = 0xff

.field private static final TRANSPARENT_ALPHA:I


# instance fields
.field mActiveLead:Z

.field mCache:Landroid/graphics/Bitmap;

.field mClosed:Z

.field mClosedAlpha:I

.field mCurAlpha:I

.field mCurPos:I

.field mElement:Landroid/view/View;

.field mExternal:Z

.field mFades:Z

.field mInitAlpha:I

.field mInitPos:I

.field mMaxFadeDelta:I

.field mMaxMoveDelta:I

.field mMoves:Z

.field mOpenAlpha:I

.field mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

.field mRelativePos:F

.field mStartRelativePos:F

.field mTouchDirK:I

.field mTouchK:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/SlidingDoor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SlidingDoor;Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;Z)V
    .locals 8
    .parameter
    .parameter "context"
    .parameter "element"
    .parameter "params"
    .parameter "isExternal"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xff

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mExternal:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitAlpha:I

    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurAlpha:I

    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosedAlpha:I

    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mOpenAlpha:I

    iput v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxFadeDelta:I

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosed:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mActiveLead:Z

    iput v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    iput v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    iput v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitPos:I

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    iput v7, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchK:F

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMoves:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mFades:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot construct SlidingDoorElement due to invalid constructor params"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-boolean p5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mExternal:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    invoke-direct {v1, p1, p4}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;-><init>(Lcom/android/internal/policy/impl/SlidingDoor;Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    if-ne v1, v6, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMoves:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    if-ne v1, v6, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mFades:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mFades:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    if-eqz v1, :cond_6

    move v1, v4

    :goto_2
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosedAlpha:I

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mFades:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    if-eqz v1, :cond_8

    :cond_2
    :goto_3
    iput v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mOpenAlpha:I

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mFades:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mOpenAlpha:I

    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosedAlpha:I

    sub-int/2addr v1, v4

    :goto_4
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxFadeDelta:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    if-nez v1, :cond_b

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxFadeDelta:I

    if-nez v1, :cond_a

    move v1, v5

    :goto_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mAccelMoveK:F

    mul-float/2addr v1, v4

    :goto_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mAccelMoveK:F

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchK:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mIsClosedAtStart:Z

    if-eqz v1, :cond_c

    move v1, v2

    :goto_7
    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mIsClosedAtStart:Z

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosedAlpha:I

    :goto_8
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurAlpha:I

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosedAlpha:I

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitAlpha:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitPos:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mIsClosedAtStart:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    :goto_9
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mIsClosedAtStart:Z

    if-eqz v1, :cond_f

    move v1, v3

    :goto_a
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosed:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosed:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v0, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    .local v0, visible:Z
    :goto_b
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_c
    return-void

    .end local v0           #visible:Z
    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mFades:Z

    goto/16 :goto_1

    :cond_6
    move v1, v2

    goto/16 :goto_2

    :cond_7
    move v1, v4

    goto/16 :goto_2

    :cond_8
    move v4, v2

    goto/16 :goto_3

    :cond_9
    move v1, v2

    goto/16 :goto_4

    :cond_a
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxFadeDelta:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v7, v1

    goto :goto_5

    :cond_b
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v7, v1

    goto/16 :goto_6

    :cond_c
    move v1, v3

    goto :goto_7

    :cond_d
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mOpenAlpha:I

    goto :goto_8

    :cond_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    goto :goto_9

    :cond_f
    move v1, v2

    goto :goto_a

    :cond_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v0, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    goto :goto_b

    .restart local v0       #visible:Z
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c
.end method

.method private updateElementParams()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v0, v0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMoves:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v0, v0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    iget v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxFadeDelta:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mAccelMoveK:F

    mul-float/2addr v0, v1

    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mAccelMoveK:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchK:F

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxFadeDelta:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_2
.end method


# virtual methods
.method activeLead(Z)Z
    .locals 1
    .parameter "isActive"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mActiveLead:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mActiveLead:Z

    return v0
.end method

.method adjustForNewLead(I)V
    .locals 2
    .parameter "leadId"

    .prologue
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffsets:[I

    aget v1, v1, p1

    iput v1, v0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->updateElementParams()V

    goto :goto_0
.end method

.method buildElemCache()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildElemCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mBuildCacheOnce:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mBuildCacheOnce:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildElemCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " buildCacheOnce"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildElemCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " created mCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    const-string v2, "give default cache building a chance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method completeElemMove(Z)Z
    .locals 7
    .parameter "isToggle"

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosed:Z

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosed:Z

    if-eqz v1, :cond_8

    move v1, v2

    :goto_1
    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    const/high16 v4, 0x3f80

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_9

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosed:Z

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " completeElemMove: mElement = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosed:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v0, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    .local v0, visible:Z
    :goto_3
    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " completeElemMove: set visible mElement = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mExternal:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeElemMove: external : mInitPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStartRelativePos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRelativePos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosed:Z

    goto/16 :goto_0

    .end local v0           #visible:Z
    :cond_8
    move v1, v3

    goto/16 :goto_1

    :cond_9
    move v2, v3

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v0, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    goto/16 :goto_3

    .restart local v0       #visible:Z
    :cond_b
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " completeElemMove: set invisible mElement = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method drawElement(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " drawElem: mElement = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SlidingDoor;->getDrawingTime()J

    move-result-wide v1

    .local v1, drawingTime:J
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mActiveLead:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    #calls: Lcom/android/internal/policy/impl/SlidingDoor;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    invoke-static {v4, p1, v5, v1, v2}, Lcom/android/internal/policy/impl/SlidingDoor;->access$100(Lcom/android/internal/policy/impl/SlidingDoor;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    #getter for: Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/SlidingDoor;->access$200(Lcom/android/internal/policy/impl/SlidingDoor;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "drawElem: mElement = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCache draw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .local v3, paint:Landroid/graphics/Paint;
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mFades:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v5, v5, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OtherDimOffset:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OtherDimOffset:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .end local v3           #paint:Landroid/graphics/Paint;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "drawElem: mElement = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cache draw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .restart local v3       #paint:Landroid/graphics/Paint;
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mFades:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_9
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OtherDimOffset:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    int-to-float v5, v5

    invoke-virtual {p1, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_a
    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v5, v5, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OtherDimOffset:I

    int-to-float v5, v5

    invoke-virtual {p1, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .end local v3           #paint:Landroid/graphics/Paint;
    :cond_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "drawElem: mElement = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " regular draw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OtherDimOffset:I

    :goto_1
    int-to-float v5, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    iget v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitPos:I

    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    :goto_2
    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    #calls: Lcom/android/internal/policy/impl/SlidingDoor;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    invoke-static {v4, p1, v5, v1, v2}, Lcom/android/internal/policy/impl/SlidingDoor;->access$300(Lcom/android/internal/policy/impl/SlidingDoor;Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_d
    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitPos:I

    iget v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_e
    const/4 v4, 0x0

    goto :goto_2
.end method

.method getElemDirection()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxFadeDelta:I

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxFadeDelta:I

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method getElemLeadId()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget v0, v0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLeadId:I

    return v0
.end method

.method getElemLeadStatus()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    return v0
.end method

.method getRelativePos()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    return v0
.end method

.method getState()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosed:Z

    return v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    return-object v0
.end method

.method layoutElem()V
    .locals 0

    .prologue
    return-void
.end method

.method measureElem(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "measureElem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mElement = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sliding Door params"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    check-cast v0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget v3, v3, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->updateMarginsByOffsets(ZZI)V

    :cond_1
    :goto_0
    return-void

    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "measureElem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mElement = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mExternal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mExternal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method moveElem(F)Z
    .locals 7
    .parameter "posChange"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    add-float v0, v2, p1

    .local v0, changedPos:F
    cmpg-float v2, v0, v3

    if-gez v2, :cond_6

    move v0, v3

    .end local v0           #changedPos:F
    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveElem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mElement ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , posChange="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mStartRelativePos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRelativePos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMoves:Z

    if-eqz v2, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    .local v1, oldPos:I
    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitPos:I

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v2, v5

    iput v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveElem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mElement ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,oldPos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurPos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mActiveLead:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .end local v1           #oldPos:I
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mFades:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitAlpha:I

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxFadeDelta:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v2, v5

    iput v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurAlpha:I

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mExternal:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurAlpha:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_4
    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mRelativePos:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_8

    :cond_5
    const/4 v2, 0x0

    :goto_2
    return v2

    .restart local v0       #changedPos:F
    :cond_6
    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    move v0, v4

    goto/16 :goto_0

    .end local v0           #changedPos:F
    .restart local v1       #oldPos:I
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .end local v1           #oldPos:I
    :cond_8
    const/4 v2, 0x1

    goto :goto_2
.end method

.method moveElemOnTouch(F)Z
    .locals 2
    .parameter "touchChange"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchK:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->moveElem(F)Z

    move-result v0

    return v0
.end method

.method startTracking(I)V
    .locals 3
    .parameter "touchDir"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "startTracking: mElement = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStartRelativePos before"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mClosed:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    iget v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitPos:I

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "startTracking: mElement = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStartRelativePos after"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mActiveLead:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mExternal:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mActiveLead:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    :cond_5
    const/high16 v0, 0x3f80

    goto :goto_1
.end method

.method stopTracking()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mActiveLead:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitPos:I

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mActiveLead:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mInitPos:I

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mMaxMoveDelta:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mStartRelativePos:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCurPos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1
.end method
