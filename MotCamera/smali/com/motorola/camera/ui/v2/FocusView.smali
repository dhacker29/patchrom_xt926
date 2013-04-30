.class public Lcom/motorola/camera/ui/v2/FocusView;
.super Landroid/view/View;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/FocusView$1;,
        Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;,
        Lcom/motorola/camera/ui/v2/FocusView$FOCUS_UPDATE_TYPE;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FocusView"


# instance fields
.field protected campabilityChecked:Z

.field private mContext:Landroid/content/Context;

.field private mDrawableActive:Landroid/graphics/drawable/Drawable;

.field private mDrawableFace:Landroid/graphics/drawable/Drawable;

.field private mDrawableNormal:Landroid/graphics/drawable/Drawable;

.field protected mFocusArea:Landroid/graphics/RectF;

.field private mFocusAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected mFocusFail:Z

.field protected mFocusRegion:Landroid/graphics/RectF;

.field private mFocusViewUpdate:Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;

.field protected mFocused:Z

.field protected mInitialized:Z

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWeight:I

.field protected mLastLeft:F

.field protected mLastTop:F

.field protected mPaint:Landroid/graphics/Paint;

.field mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/v2/FocusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/ui/v2/FocusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocused:Z

    .line 50
    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mSelected:Z

    .line 51
    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusFail:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusAreas:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    .line 56
    iput v1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mLastLeft:F

    .line 57
    iput v1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mLastTop:F

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mPaint:Landroid/graphics/Paint;

    .line 59
    iput-boolean v3, p0, Lcom/motorola/camera/ui/v2/FocusView;->campabilityChecked:Z

    .line 63
    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mInitialized:Z

    .line 64
    new-instance v0, Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;-><init>(Lcom/motorola/camera/ui/v2/FocusView;Lcom/motorola/camera/ui/v2/FocusView$1;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusViewUpdate:Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;

    .line 139
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mDrawableActive:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mDrawableFace:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mIntrinsicHeight:I

    .line 144
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mIntrinsicWeight:I

    .line 146
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 149
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 150
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/camera/ui/v2/FocusView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/FocusView;->initFocusView(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/camera/ui/v2/FocusView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/FocusView;->updateFocusRegion(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/camera/ui/v2/FocusView;Landroid/graphics/RectF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/FocusView;->setFocusArea(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/camera/ui/v2/FocusView;ZZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/ui/v2/FocusView;->updateFocusArea(ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/camera/ui/v2/FocusView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/FocusView;->resetFocusArea()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/camera/ui/v2/FocusView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/FocusView;->updateFocusAreaVisibility(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/camera/ui/v2/FocusView;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/FocusView;->updateFaces([I)V

    return-void
.end method

.method private initFocusView(II)Z
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    iput-boolean v4, p0, Lcom/motorola/camera/ui/v2/FocusView;->mInitialized:Z

    .line 225
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 226
    .local v0, rect:Landroid/graphics/RectF;
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/FocusView;->setFocusRegion(Landroid/graphics/RectF;)V

    .line 228
    const-string v1, "FocusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init focusview mFocusRegion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v4
.end method

.method private resetFocusArea()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 203
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mIntrinsicWeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 204
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mIntrinsicHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 205
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mIntrinsicWeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 206
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mIntrinsicHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 207
    return-void
.end method

.method private setFocusArea(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "focusRect"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    .line 182
    :cond_0
    return-void
.end method

.method private setFocusRegion(Landroid/graphics/RectF;)V
    .locals 3
    .parameter "focusRect"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    .line 167
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusRegion mFocusRegion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    return-void
.end method

.method private updateFaces([I)V
    .locals 6
    .parameter "faces"

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, i:I
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3

    .line 245
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 246
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 247
    new-instance v1, Landroid/graphics/Rect;

    aget v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, p1, v4

    add-int/lit8 v5, v0, 0x3

    aget v5, p1, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 248
    .local v1, rect:Landroid/graphics/Rect;
    add-int/lit8 v0, v0, 0x4

    .line 249
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_0
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FocusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFocusAreas.size():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    array-length v2, p1

    if-eqz v2, :cond_2

    .line 253
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v2/FocusView;->setVisibility(I)V

    .line 259
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/FocusView;->invalidate()V

    .line 264
    :goto_2
    return-void

    .line 256
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v2/FocusView;->setVisibility(I)V

    .line 257
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 262
    :cond_3
    const-string v2, "FocusView"

    const-string v3, "face list was not passed correctly."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateFocusArea(ZZZ)Z
    .locals 3
    .parameter "focused"
    .parameter "selected"
    .parameter "focusfail"

    .prologue
    const/high16 v2, 0x4040

    .line 187
    iget v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mLastLeft:F

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mLastTop:F

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocused:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mSelected:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusFail:Z

    if-eq v0, p3, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mLastLeft:F

    .line 191
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/motorola/camera/ui/v2/FocusView;->mLastTop:F

    .line 192
    iput-boolean p1, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocused:Z

    .line 193
    iput-boolean p2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mSelected:Z

    .line 194
    iput-boolean p3, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusFail:Z

    .line 195
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/FocusView;->invalidate()V

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFocusAreaVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 210
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVisibility():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/FocusView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v0, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBottom():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/FocusView;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/FocusView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 215
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/v2/FocusView;->setVisibility(I)V

    .line 217
    :cond_1
    return-void
.end method

.method private updateFocusRegion(II)V
    .locals 6
    .parameter "left"
    .parameter "top"

    .prologue
    .line 237
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p1

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 239
    .local v0, rect:Landroid/graphics/RectF;
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/FocusView;->setFocusRegion(Landroid/graphics/RectF;)V

    .line 240
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v5, 0x1

    .line 281
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FocusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFocusAreas.isEmpty():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 284
    .local v0, face:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mDrawableFace:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 287
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mDrawableFace:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 290
    .end local v0           #face:Landroid/graphics/Rect;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocused:Z

    if-ne v2, v5, :cond_3

    .line 291
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mDrawableActive:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mDrawableActive:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 302
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 303
    return-void

    .line 296
    :cond_3
    iget-boolean v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mSelected:Z

    if-ne v2, v5, :cond_2

    .line 297
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mDrawableNormal:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 271
    .local v1, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 274
    .local v0, heightSize:I
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 276
    return-void
.end method

.method public registerListeners()V
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusViewUpdate:Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 157
    return-void
.end method

.method public unregisterListeners()V
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FOCUS:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/FocusView;->mFocusViewUpdate:Lcom/motorola/camera/ui/v2/FocusView$FocusViewUpdate;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 161
    return-void
.end method
