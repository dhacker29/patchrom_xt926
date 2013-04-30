.class public Lcom/android/internal/policy/impl/SlidingDoor;
.super Landroid/widget/RelativeLayout;
.source "SlidingDoor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SlidingDoor$1;,
        Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;,
        Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;,
        Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;,
        Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;,
        Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 1000.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAX_ELEM_NUM:I = 0xa

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final MSG_COMPLETE_ANIMATE:I = 0x3e9

.field private static final NOSTATE_CHANGE_THRESHOLD:F = 0.25f

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final STATE_CHANGE_THRESHOLD:F = 0.5f

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field DBG:Z

.field TAG:Ljava/lang/String;

.field mAlpha:I

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field mCurLeadId:I

.field private mCurrentAnimationTime:J

.field private mDoorClosed:Z

.field mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

.field mElemNum:I

.field private final mHandler:Landroid/os/Handler;

.field mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field mName:Ljava/lang/String;

.field private mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

.field mStartMovePoint:I

.field mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/SlidingDoor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 641
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x447a

    const/high16 v6, 0x3f00

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 654
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string v3, "SlidingDoor"

    iput-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    .line 35
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    .line 53
    new-instance v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;

    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;-><init>(Lcom/android/internal/policy/impl/SlidingDoor;Lcom/android/internal/policy/impl/SlidingDoor$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    .line 66
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    .line 67
    const/16 v3, 0xff

    iput v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAlpha:I

    .line 68
    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    .line 69
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    .line 70
    iput-object v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    .line 71
    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mStartMovePoint:I

    .line 72
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    .line 73
    const/16 v3, 0xa

    new-array v3, v3, [Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iput-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    .line 74
    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    .line 900
    const-string v3, "Undefined"

    iput-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    .line 656
    sget-object v3, Lcom/android/internal/R$styleable;->SlidingDoor:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 657
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 658
    .local v2, orientation:I
    if-ne v2, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    .line 659
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    .line 661
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 662
    .local v1, density:F
    const/high16 v3, 0x4316

    mul-float/2addr v3, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMinorVelocity:I

    .line 663
    mul-float v3, v7, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMajorVelocity:I

    .line 664
    const/high16 v3, 0x44fa

    mul-float/2addr v3, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumAcceleration:I

    .line 665
    mul-float v3, v7, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityUnits:I

    .line 667
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 669
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SlidingDoor;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 673
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    const-string v4, "constructed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    return-void

    .end local v1           #density:F
    :cond_1
    move v3, v5

    .line 658
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SlidingDoor;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/SlidingDoor;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SlidingDoor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SlidingDoor;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/SlidingDoor;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SlidingDoor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->doAnimation()V

    return-void
.end method

.method private doAnimation()V
    .locals 5

    .prologue
    .line 852
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "do Animation: mAnimating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v1, :cond_3

    .line 854
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->incrementAnimation()V

    .line 855
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationPosition:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SlidingDoor;->moveGroup(I)Z

    move-result v0

    .line 856
    .local v0, animationOngoing:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "do Animation: mAnimating after move ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_1
    if-eqz v0, :cond_4

    .line 859
    iget-wide v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurrentAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurrentAnimationTime:J

    .line 860
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "doAnimation: sendMessageAtTime (MSG_ANIMATE)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurrentAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 868
    .end local v0           #animationOngoing:Z
    :cond_3
    :goto_0
    return-void

    .line 864
    .restart local v0       #animationOngoing:Z
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "doAnimation: sendMessage (MSG_COMPLETE_ANIMATE)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 871
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 872
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 873
    .local v4, t:F
    iget v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationPosition:F

    .line 874
    .local v3, position:F
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    .line 875
    .local v5, v:F
    iget v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedAcceleration:F

    .line 876
    .local v0, a:F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationPosition:F

    .line 877
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    .line 878
    iput-wide v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationLastTime:J

    .line 879
    return-void
.end method


# virtual methods
.method public addGroupElem(Landroid/view/View;Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;Z)Z
    .locals 8
    .parameter "element"
    .parameter "params"
    .parameter "external"

    .prologue
    const/4 v0, 0x0

    .line 423
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    if-eqz p1, :cond_0

    .line 426
    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    new-instance v0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;-><init>(Lcom/android/internal/policy/impl/SlidingDoor;Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;Z)V

    aput-object v0, v6, v7

    .line 427
    iget v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    .line 428
    const/4 v0, 0x1

    goto :goto_0
.end method

.method buildGroupCache()V
    .locals 2

    .prologue
    .line 484
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->buildElemCache()V

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_0
    return-void
.end method

.method protected changeDoorState(Z)V
    .locals 1
    .parameter "close"

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    if-ne v0, p1, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SlidingDoor;->completeGroupMove(Z)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 951
    instance-of v0, p1, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    return v0
.end method

.method public cleanUp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 684
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clean up: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    .line 686
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    .line 687
    iput-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    .line 688
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 689
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 690
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_2

    .line 692
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 693
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 694
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    iput-object v4, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    .line 695
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    iput-object v4, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    .line 696
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aput-object v4, v1, v0

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    :cond_2
    iput-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    .line 699
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    .line 700
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 701
    iput-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 703
    :cond_3
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SlidingDoor;->changeDoorState(Z)V

    .line 741
    return-void
.end method

.method completeGroupMove(Z)V
    .locals 7
    .parameter "isToggle"

    .prologue
    const/4 v3, 0x0

    .line 554
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " completeGroupMove"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-eqz v4, :cond_2

    .line 577
    :cond_1
    :goto_0
    return-void

    .line 556
    :cond_2
    const/4 v1, 0x0

    .local v1, res:Z
    const/4 v2, 0x0

    .line 557
    .local v2, retRes:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v4, :cond_5

    .line 558
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->completeElemMove(Z)Z

    move-result v1

    .line 559
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 557
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 559
    goto :goto_2

    .line 561
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    .line 562
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    .line 563
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    if-eq v2, v3, :cond_1

    .line 564
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    .line 565
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "completeGroupMove: requesting layout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->requestLayout()V

    .line 567
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    if-eqz v3, :cond_7

    .line 568
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    if-eqz v3, :cond_1

    .line 569
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;->onDoorClosed(I)V

    goto :goto_0

    .line 572
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    if-eqz v3, :cond_1

    .line 573
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;->onDoorOpened(I)V

    goto :goto_0
.end method

.method public createParamsInstance()Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;-><init>(Lcom/android/internal/policy/impl/SlidingDoor;)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v0, :cond_2

    .line 725
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dispatchDraw: doing render"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SlidingDoor;->drawGroup(Landroid/graphics/Canvas;)V

    .line 733
    :goto_0
    return-void

    .line 729
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dispatchDraw: calling parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 731
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->buildGroupCache()V

    goto :goto_0
.end method

.method drawGroup(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 474
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->drawElement(Landroid/graphics/Canvas;)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    return-void
.end method

.method findGroupElementsFromRes()V
    .locals 11

    .prologue
    .line 432
    new-instance v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;-><init>(Lcom/android/internal/policy/impl/SlidingDoor;)V

    .line 433
    .local v6, params:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->getChildCount()I

    move-result v1

    .line 434
    .local v1, count:I
    const/4 v4, 0x0

    .line 435
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, 0x0

    .line 436
    .local v7, sdlp:Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_b

    .line 437
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SlidingDoor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_7

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 440
    instance-of v8, v4, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    if-eqz v8, :cond_7

    move-object v7, v4

    .line 441
    check-cast v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    .line 442
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mIsClosedAtStart:Z

    .line 443
    iget v9, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffset:I

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v8, :cond_1

    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    :goto_1
    add-int/2addr v8, v9

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    .line 444
    iget v9, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->closedOffset:I

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v8, :cond_2

    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    :goto_2
    add-int/2addr v8, v9

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    .line 445
    iget v9, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->otherDimOffset:I

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v8, :cond_3

    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    :goto_3
    add-int/2addr v8, v9

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OtherDimOffset:I

    .line 446
    iget-boolean v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->fades:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mFades:Z

    .line 447
    iget-boolean v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnClose:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    .line 448
    iget-boolean v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnOpen:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    .line 449
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->moveDelayDistance:I

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mMoveDelayDistance:I

    .line 450
    iget-boolean v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->lead:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    .line 451
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->leadId:I

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLeadId:I

    .line 452
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->accelMoveK:F

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mAccelMoveK:F

    .line 453
    iget-boolean v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->buildCacheOnce:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mBuildCacheOnce:Z

    .line 454
    const/4 v5, 0x0

    .line 455
    .local v5, offsetsDiff:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    const/4 v8, 0x2

    if-ge v3, v8, :cond_5

    .line 456
    iget-object v9, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffsets:[I

    iget-object v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffsets:[I

    aget v10, v8, v3

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v8, :cond_4

    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    :goto_5
    add-int/2addr v8, v10

    aput v8, v9, v3

    .line 457
    iget-object v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffsets:[I

    aget v8, v8, v3

    iget v9, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    if-eq v8, v9, :cond_0

    const/4 v5, 0x1

    .line 455
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 443
    .end local v3           #j:I
    .end local v5           #offsetsDiff:Z
    :cond_1
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    goto :goto_1

    .line 444
    :cond_2
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    goto :goto_2

    .line 445
    :cond_3
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    goto :goto_3

    .line 456
    .restart local v3       #j:I
    .restart local v5       #offsetsDiff:Z
    :cond_4
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    goto :goto_5

    .line 459
    :cond_5
    iget-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    if-nez v8, :cond_6

    iget v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    iget v9, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    if-ne v8, v9, :cond_6

    if-nez v5, :cond_6

    iget-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mFades:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    iget-boolean v9, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    if-eq v8, v9, :cond_7

    .line 462
    :cond_6
    iget-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    if-eqz v8, :cond_8

    const-string v8, "SD_handle"

    iput-object v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    .line 466
    :goto_6
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v6, v8}, Lcom/android/internal/policy/impl/SlidingDoor;->addGroupElem(Landroid/view/View;Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;Z)Z

    .line 436
    .end local v3           #j:I
    .end local v5           #offsetsDiff:Z
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 463
    .restart local v3       #j:I
    .restart local v5       #offsetsDiff:Z
    :cond_8
    iget v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    iget v9, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    if-ne v8, v9, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    const-string v8, "SD_movecontent"

    iput-object v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    goto :goto_6

    .line 464
    :cond_a
    const-string v8, "SD_fadecontent"

    iput-object v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    goto :goto_6

    .line 471
    .end local v0           #child:Landroid/view/View;
    .end local v3           #j:I
    .end local v5           #offsetsDiff:Z
    :cond_b
    return-void
.end method

.method flingGroup(IF)V
    .locals 11
    .parameter "position"
    .parameter "init_velocity"

    .prologue
    const/16 v10, 0x3e8

    const/high16 v9, 0x3f00

    const/4 v8, 0x0

    .line 580
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v5, v5, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    int-to-float v5, v5

    mul-float v4, p2, v5

    .line 581
    .local v4, velocity:F
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "flingGroup: mLeadElem ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    int-to-float v5, p1

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationPosition:F

    .line 583
    iput p2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    .line 584
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getState()Z

    move-result v0

    .line 585
    .local v0, isClosed:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getRelativePos()F

    move-result v3

    .line 586
    .local v3, relPos:F
    if-eqz v0, :cond_7

    .line 587
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMajorVelocity:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    const/high16 v5, 0x3e80

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_2

    :cond_1
    cmpl-float v5, v3, v9

    if-lez v5, :cond_6

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMajorVelocity:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    .line 589
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumAcceleration:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedAcceleration:F

    .line 590
    cmpg-float v5, v4, v8

    if-gez v5, :cond_3

    .line 591
    iput v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    .line 613
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 614
    .local v1, now:J
    iput-wide v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationLastTime:J

    .line 615
    const-wide/16 v5, 0x10

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurrentAnimationTime:J

    .line 616
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    .line 617
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "flingGroup: removeMessages(MSG_ANIMATE)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 619
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "flingGroup: sendMessageAtTime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurrentAnimationTime:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->stopTrackingGroup()V

    .line 622
    return-void

    .line 594
    .end local v1           #now:J
    :cond_6
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumAcceleration:I

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedAcceleration:F

    .line 595
    cmpl-float v5, v4, v8

    if-lez v5, :cond_3

    .line 596
    iput v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    goto :goto_0

    .line 600
    :cond_7
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMajorVelocity:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_8

    const/high16 v5, 0x3f40

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_9

    :cond_8
    cmpl-float v5, v3, v9

    if-lez v5, :cond_a

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMajorVelocity:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_a

    .line 602
    :cond_9
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumAcceleration:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedAcceleration:F

    .line 603
    cmpg-float v5, v4, v8

    if-gez v5, :cond_3

    .line 604
    iput v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    goto/16 :goto_0

    .line 607
    :cond_a
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumAcceleration:I

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedAcceleration:F

    .line 608
    cmpl-float v5, v4, v8

    if-lez v5, :cond_3

    .line 609
    iput v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    goto/16 :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 945
    new-instance v0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SlidingDoor;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 956
    new-instance v0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SlidingDoor;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 935
    new-instance v0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrientationVertical()Z
    .locals 1

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    return v0
.end method

.method layoutGroup()V
    .locals 2

    .prologue
    .line 479
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->layoutElem()V

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    return-void
.end method

.method measureGroup(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 489
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->measureElem(II)V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_0
    return-void
.end method

.method moveGroup(I)Z
    .locals 8
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 540
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-nez v5, :cond_0

    .line 550
    :goto_0
    return v4

    .line 541
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "moveGroup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mStartMovePoint:I

    sub-int v5, p1, v5

    int-to-float v3, v5

    .line 543
    .local v3, touchChange:F
    const/4 v2, 0x0

    .line 544
    .local v2, res:Z
    const/4 v1, 0x0

    .line 545
    .local v1, preres:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v5, :cond_4

    .line 546
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->moveElemOnTouch(F)Z

    move-result v1

    .line 547
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 545
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    .line 547
    goto :goto_2

    .line 549
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->invalidate()V

    move v4, v2

    .line 550
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->findGroupElementsFromRes()V

    .line 709
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 782
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onInterceptTouchEvent: DOWN received: x= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SlidingDoor;->startTrackingGroup(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 791
    :cond_1
    :goto_0
    return v0

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    if-eqz v0, :cond_3

    .line 785
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;->onDoorHandleTouched(I)V

    .line 787
    :cond_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 788
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 789
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 750
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v2, :cond_0

    .line 751
    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnLayout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v2, :cond_2

    .line 777
    :cond_1
    return-void

    .line 754
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 759
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->invalidate()V

    .line 761
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v2, :cond_1

    .line 762
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v2, :cond_1

    .line 763
    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnLayout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": left="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", right="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", visibility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 768
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    if-eqz v2, :cond_3

    .line 769
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnLayout: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ((LayoutParams)params).initLeftMargin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    iget v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ((LayoutParams)params).initTopMargin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    iget v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ((LayoutParams)params).closedOffset"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    iget v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->closedOffset:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ((LayoutParams)params).openOffset"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    iget v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffset:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ((LayoutParams)params).otherDimOffset"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v1, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->otherDimOffset:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 714
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/SlidingDoor;->measureGroup(II)V

    .line 715
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 716
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_0

    .line 717
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OnMeasure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": measured width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 796
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-eqz v7, :cond_0

    .line 797
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 799
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 847
    .end local v0           #action:I
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-nez v7, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_1
    move v7, v9

    :goto_1
    return v7

    .line 801
    .restart local v0       #action:I
    :pswitch_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "onTouchEvent: MOVE received: x= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    :goto_2
    float-to-int v7, v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SlidingDoor;->moveGroup(I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    goto :goto_2

    .line 806
    :pswitch_1
    if-ne v0, v9, :cond_8

    .line 807
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "onTouchEvent: UP received: x= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 812
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityUnits:I

    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 814
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 815
    .local v6, yVelocity:F
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 818
    .local v5, xVelocity:F
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    .line 819
    .local v4, vertical:Z
    if-eqz v4, :cond_a

    .line 820
    cmpg-float v7, v6, v12

    if-gez v7, :cond_9

    move v1, v9

    .line 821
    .local v1, negative:Z
    :goto_4
    cmpg-float v7, v5, v12

    if-gez v7, :cond_5

    .line 822
    neg-float v5, v5

    .line 824
    :cond_5
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMinorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_6

    .line 825
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMinorVelocity:I

    int-to-float v5, v7

    .line 837
    :cond_6
    :goto_5
    float-to-double v10, v5

    float-to-double v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v2, v10

    .line 838
    .local v2, velocity:F
    if-eqz v1, :cond_7

    .line 839
    neg-float v2, v2

    .line 842
    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v7, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    :goto_6
    float-to-int v7, v7

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/policy/impl/SlidingDoor;->flingGroup(IF)V

    goto/16 :goto_0

    .line 809
    .end local v1           #negative:Z
    .end local v2           #velocity:F
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #vertical:Z
    .end local v5           #xVelocity:F
    .end local v6           #yVelocity:F
    :cond_8
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "onTouchEvent: CANCEL received: x= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .restart local v3       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v4       #vertical:Z
    .restart local v5       #xVelocity:F
    .restart local v6       #yVelocity:F
    :cond_9
    move v1, v8

    .line 820
    goto :goto_4

    .line 828
    :cond_a
    cmpg-float v7, v5, v12

    if-gez v7, :cond_c

    move v1, v9

    .line 829
    .restart local v1       #negative:Z
    :goto_7
    cmpg-float v7, v6, v12

    if-gez v7, :cond_b

    .line 830
    neg-float v6, v6

    .line 832
    :cond_b
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMinorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_6

    .line 833
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMinorVelocity:I

    int-to-float v6, v7

    goto :goto_5

    .end local v1           #negative:Z
    :cond_c
    move v1, v8

    .line 828
    goto :goto_7

    .line 842
    .restart local v1       #negative:Z
    .restart local v2       #velocity:F
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    goto :goto_6

    .end local v0           #action:I
    .end local v1           #negative:Z
    .end local v2           #velocity:F
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #vertical:Z
    .end local v5           #xVelocity:F
    .end local v6           #yVelocity:F
    :cond_e
    move v7, v8

    .line 847
    goto/16 :goto_1

    .line 799
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SlidingDoor;->changeDoorState(Z)V

    .line 737
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    .line 907
    return-void
.end method

.method public setOnDoorStateListener(Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;)V
    .locals 0
    .parameter "onDoorStateListener"

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    .line 889
    return-void
.end method

.method startTrackingGroup(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 494
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v7, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v5

    .line 495
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 496
    .local v0, frame:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 497
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 498
    .local v4, y:F
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    .line 500
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v2, v7, :cond_3

    .line 502
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getElemLeadStatus()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getElemLeadId()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    if-ne v7, v8, :cond_4

    .line 503
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 504
    float-to-int v7, v3

    float-to-int v8, v4

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 505
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    iput-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    .line 510
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    if-eqz v7, :cond_0

    .line 511
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v7, :cond_5

    .end local v4           #y:F
    :goto_2
    float-to-int v7, v4

    iput v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mStartMovePoint:I

    .line 512
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    invoke-virtual {v7, v6}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->activeLead(Z)Z

    .line 513
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getElemLeadId()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    .line 514
    const/4 v2, 0x0

    :goto_3
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v2, v7, :cond_6

    .line 515
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    iget v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->adjustForNewLead(I)V

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 500
    .restart local v4       #y:F
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v4, v3

    .line 511
    goto :goto_2

    .line 516
    .end local v4           #y:F
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getElemDirection()I

    move-result v1

    .line 517
    .local v1, groupDir:I
    const/4 v2, 0x0

    :goto_4
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v2, v7, :cond_7

    .line 518
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->startTracking(I)V

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 519
    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v7, :cond_9

    .line 520
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " startTrackingGroup: removeMessages(MSG_ANIMATE)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_8
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    .line 522
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    move v5, v6

    .line 525
    goto/16 :goto_0
.end method

.method stopTrackingGroup()V
    .locals 2

    .prologue
    .line 529
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->stopTracking()V

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    .line 533
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 535
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 537
    :cond_1
    return-void
.end method
