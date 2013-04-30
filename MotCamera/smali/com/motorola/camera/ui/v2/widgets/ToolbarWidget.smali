.class public Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;
.super Landroid/view/ViewGroup;
.source "ToolbarWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$1;,
        Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$SlidingHandler;,
        Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$DrawerToggler;,
        Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;,
        Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerCloseListener;,
        Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 1100.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final NUM_OF_ICONS:I = 0x6

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final STOP_POINT_1:I = 0xf4237

.field private static final STOP_POINT_2:I = 0xf4238

.field private static final STOP_POINT_3:I = 0xf4239

.field private static final STOP_POINT_4:I = 0xf423a

.field private static final STOP_POINT_5:I = 0xf423b

.field private static final STOP_POINT_6:I = 0xf423c

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final USER_THRESHOLD:I = 0xa

.field private static final VELOCITY_UNITS:I = 0x3e8

.field private static final VIBRATE_DURATION:I = 0x32

.field private static final mToolbarStopPoints:[I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mDragToFlexiblePoint:Z

.field private mExpanded:Z

.field private mFlexiPointAnimateDraw:Z

.field private mFlexibleExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleOpen:Z

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;

.field private mOpenIcons:I

.field private mScale:F

.field private mSliderRestore:Z

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z

.field private mVib:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mToolbarStopPoints:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x37t 0x42t 0xft 0x0t
        0x38t 0x42t 0xft 0x0t
        0x39t 0x42t 0xft 0x0t
        0x3at 0x42t 0xft 0x0t
        0x3bt 0x42t 0xft 0x0t
        0x3ct 0x42t 0xft 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f00

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 240
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFrame:Landroid/graphics/Rect;

    .line 133
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mInvalidate:Landroid/graphics/Rect;

    .line 150
    new-instance v5, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$SlidingHandler;-><init>(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$1;)V

    iput-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandler:Landroid/os/Handler;

    .line 171
    const-string v5, "ToolbarWidget"

    iput-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->TAG:Ljava/lang/String;

    .line 172
    iput-boolean v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleOpen:Z

    .line 173
    iput-boolean v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mSliderRestore:Z

    .line 241
    sget-object v5, Lcom/motorola/camera/R$styleable;->CustomToolbar:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 243
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 244
    .local v4, orientation:I
    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mScale:F

    .line 246
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    .line 247
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    .line 248
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAllowSingleTap:Z

    .line 249
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimateOnClick:Z

    .line 251
    const/16 v5, 0x96

    iput v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    .line 255
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 256
    .local v3, handleId:I
    if-nez v3, :cond_1

    .line 257
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_0
    move v5, v7

    .line 244
    goto :goto_0

    .line 261
    .restart local v3       #handleId:I
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 262
    .local v1, contentId:I
    if-nez v1, :cond_2

    .line 263
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 267
    :cond_2
    if-ne v3, v1, :cond_3

    .line 268
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 272
    :cond_3
    iput v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleId:I

    .line 273
    iput v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContentId:I

    .line 275
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 276
    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTapThreshold:I

    .line 277
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumTapVelocity:I

    .line 278
    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumMinorVelocity:I

    .line 279
    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumMajorVelocity:I

    .line 280
    const v5, 0x44898000

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumAcceleration:I

    .line 281
    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVelocityUnits:I

    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVib:Landroid/os/Vibrator;

    .line 287
    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 288
    return-void
.end method

.method static synthetic access$200(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->prepareTracking(I)V

    .line 674
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->performFling(IFZ)V

    .line 675
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->prepareTracking(I)V

    .line 681
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->performFling(IFZ)V

    .line 682
    return-void
.end method

.method private closeDrawer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1188
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->moveHandle(I)V

    .line 1189
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1193
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-nez v0, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    .line 1198
    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    .line 1199
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerCloseListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerCloseListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 952
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v3, v4, 0x6

    .line 953
    .local v3, toolbarFractionSize:I
    iget-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    if-eqz v4, :cond_2

    .line 954
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->incrementAnimation()V

    .line 955
    const/4 v2, 0x0

    .line 959
    .local v2, initialPosition:I
    iget v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    iget-boolean v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v6, :cond_0

    :cond_0
    iget v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    rsub-int/lit8 v6, v6, 0x0

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_3

    .line 960
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    .line 961
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "ToolbarWidget"

    const-string v5, "Do Animation: closeDrawer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_1
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->closeDrawer()V

    .line 1000
    .end local v2           #initialPosition:I
    :cond_2
    :goto_0
    return-void

    .line 964
    .restart local v2       #initialPosition:I
    :cond_3
    iget v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    iget-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getHeight()I

    move-result v4

    iget v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int/2addr v4, v7

    :goto_1
    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_6

    .line 966
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    .line 967
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ToolbarWidget"

    const-string v5, "Do Animation: openDrawer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_4
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->openDrawer()V

    goto :goto_0

    .line 964
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getWidth()I

    move-result v4

    iget v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int/2addr v4, v7

    goto :goto_1

    .line 969
    :cond_6
    iget-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mDragToFlexiblePoint:Z

    if-eqz v4, :cond_a

    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, count:I
    sget-object v4, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mToolbarStopPoints:[I

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    :goto_2
    if-ltz v0, :cond_7

    .line 972
    iget v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    iget-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v4, :cond_8

    move v4, v5

    :goto_3
    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_9

    .line 974
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    .line 975
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->openPoint(I)V

    .line 979
    :cond_7
    iget-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    if-eqz v4, :cond_2

    .line 980
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    .line 981
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->closeDrawer()V

    goto :goto_0

    .line 972
    :cond_8
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/lit8 v7, v0, 0x1

    mul-int/2addr v7, v3

    add-int/2addr v4, v7

    goto :goto_3

    .line 971
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 983
    .end local v0           #count:I
    :cond_a
    iget-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-eqz v4, :cond_c

    iget v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOpenIcons:I

    if-lez v4, :cond_c

    iget v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    iget-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v4, :cond_b

    move v4, v5

    :goto_4
    int-to-float v4, v4

    cmpg-float v4, v6, v4

    if-gez v4, :cond_c

    .line 985
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    .line 986
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    .line 987
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOpenIcons:I

    mul-int/2addr v5, v3

    sub-int v1, v4, v5

    .line 988
    .local v1, deltaX:I
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    rsub-int/lit8 v5, v1, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 989
    iput-boolean v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexiPointAnimateDraw:Z

    .line 990
    iput-boolean v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    .line 991
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate()V

    .line 992
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->requestLayout()V

    goto/16 :goto_0

    .line 983
    .end local v1           #deltaX:I
    :cond_b
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOpenIcons:I

    mul-int/2addr v7, v3

    add-int/2addr v4, v7

    goto :goto_4

    .line 994
    :cond_c
    iget v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->moveHandle(I)V

    .line 995
    iget-wide v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mCurrentAnimationTime:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mCurrentAnimationTime:J

    .line 996
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-wide v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mCurrentAnimationTime:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private incrementAnimation()V
    .locals 9

    .prologue
    .line 1003
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1004
    .local v1, now:J
    iget-wide v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 1005
    .local v4, t:F
    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    .line 1006
    .local v3, position:F
    iget v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedVelocity:F

    .line 1007
    .local v5, v:F
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedAcceleration:F

    .line 1008
    .local v0, a:F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    .line 1009
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedVelocity:F

    .line 1010
    iput-wide v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationLastTime:J

    .line 1011
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ToolbarWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "incrementAnimation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    return-void
.end method

.method private moveHandle(I)V
    .locals 14
    .parameter "position"

    .prologue
    const/16 v11, -0x2711

    const/16 v10, -0x2712

    const/4 v13, 0x0

    .line 793
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    .line 795
    .local v4, handle:Landroid/view/View;
    iget-boolean v9, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v9, :cond_5

    .line 796
    if-ne p1, v11, :cond_1

    .line 798
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int/2addr v9, v10

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 799
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate()V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    if-ne p1, v10, :cond_2

    .line 802
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getTop()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    add-int/2addr v9, v10

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 803
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate()V

    goto :goto_0

    .line 806
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 807
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 808
    .local v2, deltaY:I
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int/2addr v9, v10

    if-le p1, v9, :cond_4

    .line 809
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getBottom()I

    move-result v9

    sub-int/2addr v9, v0

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v2, v9, v10

    .line 814
    :cond_3
    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 816
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFrame:Landroid/graphics/Rect;

    .line 817
    .local v3, frame:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mInvalidate:Landroid/graphics/Rect;

    .line 819
    .local v6, region:Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 820
    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 822
    iget v9, v3, Landroid/graphics/Rect;->left:I

    iget v10, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v2

    iget v11, v3, Landroid/graphics/Rect;->right:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v2

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;->union(IIII)V

    .line 823
    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getWidth()I

    move-result v10

    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v2

    iget-object v12, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v6, v13, v9, v10, v11}, Landroid/graphics/Rect;->union(IIII)V

    .line 827
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getBottom()I

    move-result v10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v6, v13, v13, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 829
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 810
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v6           #region:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getBottom()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleWidth:I

    add-int/2addr v9, v10

    add-int/2addr v9, v0

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    sub-int/2addr v9, v10

    if-ge v2, v9, :cond_3

    .line 811
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getBottom()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v9, v0

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleWidth:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    sub-int v2, v9, v10

    goto :goto_1

    .line 832
    .end local v0           #bottom:I
    .end local v2           #deltaY:I
    :cond_5
    if-ne p1, v11, :cond_7

    .line 833
    sget-boolean v9, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "ToolbarWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FULL OPEN:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_6
    iput-boolean v13, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mDragToFlexiblePoint:Z

    .line 836
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int/2addr v9, v10

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 837
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate()V

    .line 839
    iput-boolean v13, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    .line 840
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->requestLayout()V

    goto/16 :goto_0

    .line 841
    :cond_7
    if-ne p1, v10, :cond_a

    .line 842
    sget-boolean v9, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "ToolbarWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FULL CLOSED:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_8
    iput-boolean v13, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mDragToFlexiblePoint:Z

    .line 844
    iput v13, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOpenIcons:I

    .line 846
    iget-boolean v9, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleOpen:Z

    if-eqz v9, :cond_9

    .line 847
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getLeft()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    add-int/2addr v9, v10

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 851
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate()V

    goto/16 :goto_0

    .line 849
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getLeft()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    add-int/2addr v9, v10

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2

    .line 852
    :cond_a
    iget-boolean v9, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mDragToFlexiblePoint:Z

    if-eqz v9, :cond_b

    .line 853
    iget-object v9, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v8, v9, 0x6

    .line 854
    .local v8, toolbarFractionSize:I
    const/4 v1, 0x0

    .line 855
    .local v1, deltaX:I
    sget-object v9, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mToolbarStopPoints:[I

    invoke-static {v9, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    .line 856
    .local v5, positionIndex:I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_0

    .line 858
    iget-object v9, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/lit8 v10, v5, 0x1

    mul-int/2addr v10, v8

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    sub-float/2addr v9, v10

    float-to-int v1, v9

    .line 860
    invoke-virtual {v4, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 861
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexiPointAnimateDraw:Z

    .line 862
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate()V

    .line 863
    iput-boolean v13, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mDragToFlexiblePoint:Z

    .line 864
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->requestLayout()V

    goto/16 :goto_0

    .line 869
    .end local v1           #deltaX:I
    .end local v5           #positionIndex:I
    .end local v8           #toolbarFractionSize:I
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    .line 870
    .local v7, right:I
    sub-int v1, p1, v7

    .line 872
    .restart local v1       #deltaX:I
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getRight()I

    move-result v9

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int/2addr v9, v10

    if-le p1, v9, :cond_d

    .line 873
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getRight()I

    move-result v9

    sub-int/2addr v9, v7

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v1, v9, v10

    .line 878
    :cond_c
    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 880
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFrame:Landroid/graphics/Rect;

    .line 881
    .restart local v3       #frame:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mInvalidate:Landroid/graphics/Rect;

    .line 883
    .restart local v6       #region:Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 884
    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 886
    iget v9, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v1

    iget v10, v3, Landroid/graphics/Rect;->top:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v1

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;->union(IIII)V

    .line 887
    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v1

    iget v10, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v1

    iget-object v11, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getHeight()I

    move-result v11

    invoke-virtual {v6, v9, v13, v10, v11}, Landroid/graphics/Rect;->union(IIII)V

    .line 891
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getHeight()I

    move-result v10

    invoke-virtual {v6, v13, v13, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 894
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->ShowHandle()V

    .line 896
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 875
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v6           #region:Landroid/graphics/Rect;
    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getRight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleWidth:I

    add-int/2addr v9, v10

    add-int/2addr v9, v7

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    sub-int/2addr v9, v10

    if-ge v1, v9, :cond_c

    .line 876
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getRight()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v9, v7

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleWidth:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    sub-int v1, v9, v10

    goto :goto_3
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1205
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->moveHandle(I)V

    .line 1206
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1209
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 1219
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    .line 1214
    iput-boolean v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    .line 1216
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerOpenListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerOpenListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private openPoint(I)V
    .locals 1
    .parameter "flexiblePosition"

    .prologue
    .line 1222
    sget-object v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mToolbarStopPoints:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->moveHandle(I)V

    .line 1223
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOpenIcons:I

    .line 1224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    .line 1225
    return-void
.end method

.method private performFling(IFZ)V
    .locals 8
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 685
    int-to-float v2, p1

    iput v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    .line 686
    iput p2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedVelocity:F

    .line 688
    iget-boolean v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-eqz v2, :cond_8

    .line 690
    if-nez p3, :cond_0

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleHeight:I

    sub-int/2addr v2, v3

    :goto_0
    if-ge p1, v2, :cond_5

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_5

    .line 696
    :cond_0
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ToolbarWidget"

    const-string v3, "Perfrom fling 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_1
    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedAcceleration:F

    .line 699
    cmpl-float v2, p2, v4

    if-lez v2, :cond_2

    .line 700
    iput v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedVelocity:F

    .line 703
    :cond_2
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mDragToFlexiblePoint:Z

    .line 704
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    .line 750
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 751
    .local v0, now:J
    iput-wide v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationLastTime:J

    .line 752
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mCurrentAnimationTime:J

    .line 753
    iput-boolean v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    .line 754
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 755
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 756
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->stopTracking()V

    .line 757
    return-void

    .line 690
    .end local v0           #now:J
    :cond_4
    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleWidth:I

    goto :goto_0

    .line 708
    :cond_5
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "ToolbarWidget"

    const-string v3, "Perfrom fling 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_6
    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedAcceleration:F

    .line 712
    cmpg-float v2, p2, v4

    if-gez v2, :cond_7

    .line 713
    iput v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedVelocity:F

    .line 716
    :cond_7
    iput-boolean v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mDragToFlexiblePoint:Z

    goto :goto_1

    .line 720
    :cond_8
    if-nez p3, :cond_d

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_9

    iget-boolean v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_2
    if-ge p1, v2, :cond_d

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_d

    .line 723
    :cond_9
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "ToolbarWidget"

    const-string v3, "Perfrom fling 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_a
    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedAcceleration:F

    .line 726
    cmpl-float v2, p2, v4

    if-lez v2, :cond_b

    .line 727
    iput v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedVelocity:F

    .line 729
    :cond_b
    iput-boolean v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mDragToFlexiblePoint:Z

    goto :goto_1

    .line 720
    :cond_c
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_2

    .line 734
    :cond_d
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string v2, "ToolbarWidget"

    const-string v3, "Perfrom fling 4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_e
    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedAcceleration:F

    .line 737
    cmpg-float v2, p2, v4

    if-gez v2, :cond_f

    .line 738
    iput v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimatedVelocity:F

    .line 741
    :cond_f
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mDragToFlexiblePoint:Z

    .line 742
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    .line 743
    if-nez p3, :cond_3

    .line 745
    iput v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOpenIcons:I

    goto/16 :goto_1
.end method

.method private prepareContent()V
    .locals 2

    .prologue
    .line 902
    iget-boolean v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    if-eqz v1, :cond_0

    .line 935
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    .line 931
    .local v0, content:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 932
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 934
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private prepareTracking(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/16 v8, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 760
    sget-boolean v5, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ToolbarWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareTracking:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    iput-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTracking:Z

    .line 762
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 763
    iget-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-nez v5, :cond_2

    move v2, v4

    .line 764
    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_5

    .line 765
    iget v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleHeight:I

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    .line 768
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ToolbarWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareTracking:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_1
    iget-boolean v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    if-nez v3, :cond_4

    .line 771
    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->moveHandle(I)V

    .line 775
    :goto_2
    iput-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    .line 776
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 778
    .local v0, now:J
    iput-wide v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimationLastTime:J

    .line 779
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mCurrentAnimationTime:J

    .line 780
    iput-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    .line 790
    .end local v0           #now:J
    :goto_3
    return-void

    .end local v2           #opening:Z
    :cond_2
    move v2, v3

    .line 763
    goto :goto_0

    .line 765
    .restart local v2       #opening:Z
    :cond_3
    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleWidth:I

    goto :goto_1

    .line 773
    :cond_4
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->moveHandle(I)V

    goto :goto_2

    .line 783
    :cond_5
    iget-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    if-eqz v4, :cond_6

    .line 784
    iput-boolean v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    .line 785
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 787
    :cond_6
    sget-boolean v3, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "ToolbarWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_7
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->moveHandle(I)V

    goto :goto_3
.end method

.method private resetLayout()V
    .locals 7

    .prologue
    .line 1382
    iget-boolean v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    if-eqz v2, :cond_0

    .line 1384
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getWidth()I

    move-result v1

    .line 1385
    .local v1, width:I
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1386
    .local v0, childWidth:I
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v3, v1, v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    iget v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v5, v1, v5

    sub-int/2addr v5, v0

    iget-object v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1391
    .end local v0           #childWidth:I
    .end local v1           #width:I
    :cond_0
    return-void
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 938
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 939
    iput-boolean v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTracking:Z

    .line 941
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerScrollListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerScrollListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;->onScrollEnded()V

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 947
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 949
    :cond_1
    return-void
.end method


# virtual methods
.method public HideContent()V
    .locals 2

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    :cond_0
    return-void
.end method

.method public HideHandle()V
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    :cond_0
    return-void
.end method

.method public ShowHandle()V
    .locals 2

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    :cond_0
    return-void
.end method

.method public animateClose()V
    .locals 2

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->prepareContent()V

    .line 1089
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerScrollListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;

    .line 1090
    .local v0, scrollListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 1091
    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;->onScrollStarted()V

    .line 1094
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->animateClose(I)V

    .line 1096
    if-eqz v0, :cond_1

    .line 1097
    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;->onScrollEnded()V

    .line 1099
    :cond_1
    return-void

    .line 1094
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public animateClose(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->resetLayout()V

    .line 1136
    iput-boolean p1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleOpen:Z

    .line 1137
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 1139
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->animateClose()V

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleOpen:Z

    if-nez v0, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->requestLayout()V

    .line 1145
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate()V

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->prepareContent()V

    .line 1112
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerScrollListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;

    .line 1113
    .local v0, scrollListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 1114
    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;->onScrollStarted()V

    .line 1116
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->animateOpen(I)V

    .line 1118
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->sendAccessibilityEvent(I)V

    .line 1120
    if-eqz v0, :cond_1

    .line 1121
    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;->onScrollEnded()V

    .line 1123
    :cond_1
    return-void

    .line 1116
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen(Z)V
    .locals 1
    .parameter "handleFlag"

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->resetLayout()V

    .line 1164
    iput-boolean p1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleOpen:Z

    .line 1165
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mSliderRestore:Z

    if-eqz v0, :cond_1

    .line 1167
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->animateOpen()V

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mSliderRestore:Z

    if-nez v0, :cond_0

    .line 1171
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->requestLayout()V

    .line 1172
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate()V

    .line 1174
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->ShowHandle()V

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-nez v0, :cond_0

    .line 1044
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->animateOpen()V

    .line 1048
    :goto_0
    return-void

    .line 1046
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->closeDrawer()V

    .line 1074
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate()V

    .line 1075
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->requestLayout()V

    .line 1076
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getDrawingTime()J

    move-result-wide v1

    .line 341
    .local v1, drawingTime:J
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    .line 342
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    .line 344
    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 347
    iget-boolean v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexiPointAnimateDraw:Z

    if-eqz v6, :cond_b

    .line 348
    :cond_0
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 349
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 350
    if-eqz v4, :cond_4

    .line 352
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 353
    if-eqz v4, :cond_3

    move v6, v5

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_1
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 355
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 356
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 382
    :goto_1
    iget-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexiPointAnimateDraw:Z

    if-eqz v5, :cond_2

    .line 384
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexiPointAnimateDraw:Z

    .line 390
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    return-void

    .line 353
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_0

    .line 359
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 362
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 364
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    if-eq v6, v7, :cond_9

    .line 367
    if-eqz v4, :cond_7

    move v6, v5

    :goto_3
    if-eqz v4, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getBottom()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    :goto_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 378
    :cond_6
    :goto_5
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 379
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 367
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v5

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    goto :goto_4

    .line 371
    :cond_9
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v6, v7, :cond_6

    .line 374
    if-eqz v4, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    :goto_6
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_a
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_6

    .line 386
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_b
    iget-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    if-eqz v5, :cond_2

    .line 387
    :cond_c
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_2
.end method

.method public drawWithoutAnimation()V
    .locals 0

    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->openDrawer()V

    .line 1378
    return-void
.end method

.method public getCompleteHeight()I
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompleteWidth()I
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1319
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1310
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mLocked:Z

    .line 1302
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 293
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$DrawerToggler;-><init>(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    .line 301
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/high16 v13, 0x4120

    const/4 v9, 0x1

    .line 463
    iget-boolean v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mLocked:Z

    if-eqz v10, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v8

    .line 467
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 469
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 470
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 472
    .local v7, y:F
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFrame:Landroid/graphics/Rect;

    .line 473
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    .line 475
    .local v3, handle:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 476
    .local v4, parent:Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 478
    sget-boolean v10, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string v10, "ToolbarWidget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "x:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " y:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_2
    iget v10, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v11, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mScale:F

    mul-float/2addr v11, v13

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Rect;->left:I

    .line 480
    iget v10, v2, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget v11, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mScale:F

    mul-float/2addr v11, v13

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Rect;->right:I

    .line 482
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    .line 483
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->top:I

    .line 484
    new-instance v10, Landroid/view/TouchDelegate;

    invoke-direct {v10, v2, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 487
    iget-boolean v10, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTracking:Z

    if-nez v10, :cond_3

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 492
    :cond_3
    if-nez v0, :cond_5

    .line 493
    iput-boolean v9, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTracking:Z

    .line 495
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->resetLayout()V

    .line 496
    iget-object v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVib:Landroid/os/Vibrator;

    const-wide/16 v10, 0x32

    invoke-virtual {v8, v10, v11}, Landroid/os/Vibrator;->vibrate(J)V

    .line 497
    invoke-virtual {v3, v9}, Landroid/view/View;->setPressed(Z)V

    .line 499
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->prepareContent()V

    .line 502
    iget-object v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerScrollListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;

    if-eqz v8, :cond_4

    .line 503
    iget-object v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerScrollListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;

    invoke-interface {v8}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;->onScrollStarted()V

    .line 506
    :cond_4
    iget-boolean v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v8, :cond_6

    .line 508
    iget-object v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 509
    .local v1, bottom:I
    float-to-int v8, v7

    sub-int v8, v1, v8

    iput v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTouchDelta:I

    .line 510
    invoke-direct {p0, v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->prepareTracking(I)V

    .line 517
    .end local v1           #bottom:I
    :goto_1
    iget-object v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_5
    move v8, v9

    .line 520
    goto/16 :goto_0

    .line 513
    :cond_6
    iget-object v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v5

    .line 514
    .local v5, right:I
    float-to-int v8, v6

    sub-int v8, v5, v8

    iput v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTouchDelta:I

    .line 515
    invoke-direct {p0, v5}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 394
    iget-boolean v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTracking:Z

    if-eqz v8, :cond_0

    .line 459
    :goto_0
    return-void

    .line 398
    :cond_0
    sub-int v7, p4, p2

    .line 399
    .local v7, width:I
    sub-int v6, p5, p3

    .line 401
    .local v6, height:I
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    .line 403
    .local v5, handle:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 404
    .local v3, childWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 409
    .local v0, childHeight:I
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    .line 411
    .local v4, content:Landroid/view/View;
    iget-boolean v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v8, :cond_2

    .line 412
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 414
    .local v1, childLeft:I
    iget-boolean v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-eqz v8, :cond_1

    sub-int v8, v6, v0

    iget v9, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v2, v8, v9

    .line 417
    .local v2, childTop:I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v9, v6, v9

    sub-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v11, v6, v11

    sub-int/2addr v11, v0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 446
    :goto_2
    iget-boolean v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleOpen:Z

    if-eqz v8, :cond_5

    .line 448
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 454
    :goto_3
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleHeight:I

    .line 455
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleWidth:I

    goto :goto_0

    .line 414
    .end local v2           #childTop:I
    :cond_1
    iget v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    rsub-int/lit8 v2, v8, 0x0

    goto :goto_1

    .line 423
    .end local v1           #childLeft:I
    :cond_2
    iget-boolean v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-eqz v8, :cond_3

    sub-int v8, v7, v3

    iget v9, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v1, v8, v9

    .line 427
    .restart local v1       #childLeft:I
    :goto_4
    sub-int v2, v6, v0

    .line 430
    .restart local v2       #childTop:I
    iget-boolean v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    if-eqz v8, :cond_4

    .line 432
    iget-object v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 433
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v1, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v4, v8, v2, v1, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 423
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_3
    iget v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    rsub-int/lit8 v1, v8, 0x0

    goto :goto_4

    .line 440
    .restart local v1       #childLeft:I
    .restart local v2       #childTop:I
    :cond_4
    iget v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v8, v7, v8

    sub-int/2addr v8, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v9, v7, v9

    sub-int/2addr v9, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v4, v8, v2, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 452
    :cond_5
    sub-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v8, v2, v1, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 311
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 312
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 314
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 315
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 317
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    .line 322
    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->measureChild(Landroid/view/View;II)V

    .line 324
    iget-boolean v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    if-eqz v7, :cond_1

    .line 325
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v1, v7, v8

    .line 326
    .local v1, height:I
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 335
    .end local v1           #height:I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->setMeasuredDimension(II)V

    .line 336
    return-void

    .line 330
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    sub-int v4, v7, v8

    .line 331
    .local v4, width:I
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "event"

    .prologue
    .line 525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mLocked:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 526
    const/4 v8, 0x1

    .line 667
    :cond_0
    :goto_0
    return v8

    .line 529
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v11, v20, 0x6

    .line 531
    .local v11, toolbarFractionSize:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTracking:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 534
    .local v2, action:I
    packed-switch v2, :pswitch_data_0

    .line 656
    .end local v2           #action:I
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 657
    .local v16, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 658
    .local v18, y:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTracking:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1f

    :cond_3
    const/4 v8, 0x1

    .line 659
    .local v8, result:Z
    :goto_2
    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-nez v20, :cond_0

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v20, v16, v20

    if-lez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mContent:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v16, v20

    if-gez v20, :cond_4

    .line 661
    const/4 v8, 0x1

    .line 663
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v20, v16, v20

    if-lez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v16, v20

    if-gez v20, :cond_0

    .line 664
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 537
    .end local v8           #result:Z
    .end local v16           #x:F
    .end local v18           #y:F
    .restart local v2       #action:I
    :pswitch_0
    const/4 v4, 0x0

    .line 538
    .local v4, count:I
    sget-object v20, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mToolbarStopPoints:[I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v4, v20, -0x1

    :goto_3
    if-ltz v4, :cond_5

    .line 540
    add-int/lit8 v20, v4, 0x1

    mul-int v7, v11, v20

    .line 541
    .local v7, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v7

    move/from16 v21, v0

    const/high16 v22, 0x4120

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    cmpl-float v20, v20, v21

    if-nez v20, :cond_6

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVib:Landroid/os/Vibrator;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x32

    invoke-virtual/range {v20 .. v22}, Landroid/os/Vibrator;->vibrate(J)V

    .line 547
    .end local v7           #position:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTouchDelta:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    :goto_4
    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTouchDelta:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->moveHandle(I)V

    goto/16 :goto_1

    .line 538
    .restart local v7       #position:I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 547
    .end local v7           #position:I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    goto :goto_4

    .line 552
    .end local v4           #count:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 553
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVelocityUnits:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 555
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v19

    .line 556
    .local v19, yVelocity:F
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v17

    .line 559
    .local v17, xVelocity:F
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mVertical:Z

    .line 560
    .local v15, vertical:Z
    if-eqz v15, :cond_10

    .line 561
    const/16 v20, 0x0

    cmpg-float v20, v19, v20

    if-gez v20, :cond_f

    const/4 v6, 0x1

    .line 562
    .local v6, negative:Z
    :goto_5
    const/16 v20, 0x0

    cmpg-float v20, v17, v20

    if-gez v20, :cond_8

    .line 563
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    .line 565
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumMinorVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v20, v17, v20

    if-lez v20, :cond_9

    .line 566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumMinorVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    .line 578
    :cond_9
    :goto_6
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v13, v0

    .line 579
    .local v13, velocity:F
    if-eqz v6, :cond_a

    .line 580
    neg-float v13, v13

    .line 583
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v12

    .line 584
    .local v12, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 586
    .local v5, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v9

    .line 587
    .local v9, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandle:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 589
    .local v3, bottom:I
    const/4 v10, 0x0

    .line 591
    .local v10, tapped:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mFlexibleExpanded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleWidth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTapThreshold:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOpenIcons:I

    move/from16 v21, v0

    mul-int v21, v21, v11

    add-int v20, v20, v21

    move/from16 v0, v20

    if-ge v9, v0, :cond_b

    .line 596
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleWidth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int/lit8 v20, v20, -0x32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOpenIcons:I

    move/from16 v21, v0

    mul-int v21, v21, v11

    add-int v20, v20, v21

    move/from16 v0, v20

    if-le v9, v0, :cond_b

    .line 599
    const/4 v10, 0x1

    .line 607
    :cond_b
    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getBottom()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getTop()I

    move-result v21

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTapThreshold:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    if-gt v3, v0, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleHeight:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTapThreshold:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    if-ge v3, v0, :cond_16

    .line 618
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAllowSingleTap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1c

    .line 619
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->playSoundEffect(I)V

    .line 621
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    .line 622
    sget-boolean v20, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v20, :cond_e

    const-string v20, "ToolbarWidget"

    const-string v21, "log 1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_e
    if-eqz v15, :cond_18

    .end local v3           #bottom:I
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->animateClose(I)V

    goto/16 :goto_1

    .line 561
    .end local v5           #left:I
    .end local v6           #negative:Z
    .end local v9           #right:I
    .end local v10           #tapped:Z
    .end local v12           #top:I
    .end local v13           #velocity:F
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 569
    :cond_10
    const/16 v20, 0x0

    cmpg-float v20, v17, v20

    if-gez v20, :cond_12

    const/4 v6, 0x1

    .line 570
    .restart local v6       #negative:Z
    :goto_8
    const/16 v20, 0x0

    cmpg-float v20, v19, v20

    if-gez v20, :cond_11

    .line 571
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    .line 573
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumMinorVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v20, v19, v20

    if-lez v20, :cond_9

    .line 574
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mMaximumMinorVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    goto/16 :goto_6

    .line 569
    .end local v6           #negative:Z
    :cond_12
    const/4 v6, 0x0

    goto :goto_8

    .line 607
    .restart local v3       #bottom:I
    .restart local v5       #left:I
    .restart local v6       #negative:Z
    .restart local v9       #right:I
    .restart local v10       #tapped:Z
    .restart local v12       #top:I
    .restart local v13       #velocity:F
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getRight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->getLeft()I

    move-result v21

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTapThreshold:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTopOffset:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleWidth:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    if-gt v9, v0, :cond_d

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    move/from16 v20, v0

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mBottomOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mHandleWidth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mTapThreshold:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    if-lt v9, v0, :cond_d

    :cond_15
    if-nez v10, :cond_d

    .line 640
    :cond_16
    sget-boolean v20, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v20, :cond_17

    const-string v20, "ToolbarWidget"

    const-string v21, "log 4"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_17
    if-eqz v15, :cond_1e

    .end local v3           #bottom:I
    :goto_9
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v3, v13, v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #bottom:I
    :cond_18
    move v3, v9

    .line 624
    goto/16 :goto_7

    .line 626
    :cond_19
    sget-boolean v20, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v20, :cond_1a

    const-string v20, "ToolbarWidget"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 629
    const-string v20, "ToolbarWidget"

    const-string v21, "log 2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1a
    if-eqz v15, :cond_1b

    .end local v3           #bottom:I
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v3       #bottom:I
    :cond_1b
    move v3, v9

    goto :goto_a

    .line 636
    :cond_1c
    if-eqz v15, :cond_1d

    .end local v3           #bottom:I
    :goto_b
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v3, v13, v1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #bottom:I
    :cond_1d
    move v3, v9

    goto :goto_b

    :cond_1e
    move v3, v9

    .line 642
    goto :goto_9

    .line 658
    .end local v2           #action:I
    .end local v3           #bottom:I
    .end local v5           #left:I
    .end local v6           #negative:Z
    .end local v9           #right:I
    .end local v10           #tapped:Z
    .end local v12           #top:I
    .end local v13           #velocity:F
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #vertical:Z
    .end local v17           #xVelocity:F
    .end local v19           #yVelocity:F
    .restart local v16       #x:F
    .restart local v18       #y:F
    :cond_1f
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 534
    nop

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
    .line 1058
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->openDrawer()V

    .line 1059
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate()V

    .line 1060
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->requestLayout()V

    .line 1062
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->sendAccessibilityEvent(I)V

    .line 1063
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerCloseListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerCloseListener;

    .line 1252
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerOpenListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerOpenListener;

    .line 1243
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mOnDrawerScrollListener:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$OnDrawerScrollListener;

    .line 1264
    return-void
.end method

.method public setSliderRestoreState(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1184
    iput-boolean p1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mSliderRestore:Z

    .line 1185
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mExpanded:Z

    if-nez v0, :cond_0

    .line 1025
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->openDrawer()V

    .line 1029
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->invalidate()V

    .line 1030
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->requestLayout()V

    .line 1031
    return-void

    .line 1027
    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mLocked:Z

    .line 1293
    return-void
.end method
