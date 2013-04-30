.class public abstract Lcom/motorola/camera/ui/v2/widgets/ZoomControl;
.super Landroid/widget/RelativeLayout;
.source "ZoomControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomIndexChangedListener;,
        Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomControl"

.field private static final ZOOMING_INTERVAL:I = 0x3e8

.field public static final ZOOM_IN:I = 0x0

.field public static final ZOOM_OUT:I = 0x1

.field public static final ZOOM_STOP:I = 0x2


# instance fields
.field protected mDegree:I

.field private mHandler:Landroid/os/Handler;

.field private mIndexListener:Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomIndexChangedListener;

.field private mListener:Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;

.field protected mOnZoomIndicatorEventListener:Lcom/motorola/camera/ui/v2/widgets/OnZoomIndicatorEventListener;

.field protected final mRunnable:Ljava/lang/Runnable;

.field protected mSliderPosition:I

.field private mSmoothZoomSupported:Z

.field private mState:I

.field private mStep:I

.field protected mZoomIn:Landroid/widget/ImageView;

.field protected mZoomIndex:I

.field protected mZoomMax:I

.field protected mZoomOut:Landroid/widget/ImageView;

.field protected mZoomSlider:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mSliderPosition:I

    .line 81
    new-instance v0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl$1;-><init>(Lcom/motorola/camera/ui/v2/widgets/ZoomControl;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    .line 95
    const v0, 0x7f02009d

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f0200a3

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f0200a0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/ui/v2/widgets/ZoomControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mState:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/camera/ui/v2/widgets/ZoomControl;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->performZoom(IZ)V

    return-void
.end method

.method private changeZoomIndex(I)Z
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 247
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mListener:Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;

    if-eqz v2, :cond_2

    .line 248
    iget-boolean v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mSmoothZoomSupported:Z

    if-eqz v2, :cond_4

    .line 249
    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    if-ge p1, v2, :cond_3

    move v0, v1

    .line 250
    .local v0, zoomType:I
    :goto_0
    if-nez v0, :cond_0

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomMax:I

    if-ne v2, v3, :cond_1

    :cond_0
    if-ne v0, v1, :cond_2

    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    if-eqz v2, :cond_2

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mListener:Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;

    invoke-interface {v2, v0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;->onZoomStateChanged(I)V

    .line 261
    .end local v0           #zoomType:I
    :cond_2
    :goto_1
    return v1

    .line 249
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :cond_4
    iget v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomMax:I

    if-le p1, v2, :cond_5

    iget p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomMax:I

    .line 256
    :cond_5
    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 257
    :cond_6
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mListener:Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;

    invoke-interface {v2, p1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 258
    iput p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    goto :goto_1
.end method

.method private performZoom(IZ)V
    .locals 4
    .parameter "state"
    .parameter "fromUser"

    .prologue
    .line 213
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mState:I

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    :cond_2
    iput p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mState:I

    .line 216
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mSmoothZoomSupported:Z

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomMax:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 218
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->zoomIn()Z

    goto :goto_1

    .line 221
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->zoomOut()Z

    goto :goto_1

    .line 224
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->stopZooming()V

    goto :goto_1

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopZooming()V
    .locals 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mListener:Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mListener:Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;->onZoomStateChanged(I)V

    .line 204
    :cond_0
    return-void
.end method

.method private zoomIn()Z
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomMax:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mStep:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->changeZoomIndex(I)Z

    move-result v0

    goto :goto_0
.end method

.method private zoomOut()Z
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mStep:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->changeZoomIndex(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 3
    .parameter "context"
    .parameter "iconResourceId"

    .prologue
    .line 115
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    const v1, 0x7f0200a3

    if-ne p2, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public closeZoomControl()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 133
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->stopZooming()V

    .line 134
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mSmoothZoomSupported:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mOnZoomIndicatorEventListener:Lcom/motorola/camera/ui/v2/widgets/OnZoomIndicatorEventListener;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mOnZoomIndicatorEventListener:Lcom/motorola/camera/ui/v2/widgets/OnZoomIndicatorEventListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/OnZoomIndicatorEventListener;->onIndicatorEvent(I)V

    .line 139
    :cond_1
    return-void
.end method

.method protected performZoom(D)V
    .locals 3
    .parameter "zoomPercentage"

    .prologue
    .line 236
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomMax:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 237
    .local v0, index:I
    iget v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    if-ne v1, v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->changeZoomIndex(I)Z

    goto :goto_0
.end method

.method protected performZoom(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 242
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    if-ne v0, p1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->changeZoomIndex(I)Z

    goto :goto_0
.end method

.method protected performZoomToState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->performZoom(IZ)V

    .line 210
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 282
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 283
    return-void
.end method

.method public setDegree(I)V
    .locals 4
    .parameter "degree"

    .prologue
    .line 269
    iput p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mDegree:I

    .line 270
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->getChildCount()I

    move-result v0

    .line 271
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 272
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 273
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/motorola/camera/ui/v2/RotateImageView;

    if-eqz v3, :cond_0

    .line 274
    check-cast v2, Lcom/motorola/camera/ui/v2/RotateImageView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setDegree(I)V

    .line 271
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_1
    return-void
.end method

.method public setOnIndicatorEventListener(Lcom/motorola/camera/ui/v2/widgets/OnZoomIndicatorEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mOnZoomIndicatorEventListener:Lcom/motorola/camera/ui/v2/widgets/OnZoomIndicatorEventListener;

    .line 166
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mListener:Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;

    .line 162
    return-void
.end method

.method public setSmoothZoomSupported(Z)V
    .locals 0
    .parameter "smoothZoomSupported"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mSmoothZoomSupported:Z

    .line 186
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 173
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_1

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    iput p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    .line 177
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->invalidate()V

    .line 178
    return-void
.end method

.method public setZoomMax(I)V
    .locals 0
    .parameter "zoomMax"

    .prologue
    .line 148
    iput p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomMax:I

    .line 152
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->requestLayout()V

    .line 153
    return-void
.end method

.method protected setZoomStep(I)V
    .locals 0
    .parameter "step"

    .prologue
    .line 197
    iput p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mStep:I

    .line 198
    return-void
.end method

.method public startZoomControl()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 104
    iget v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mZoomIndex:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->setZoomIndex(I)V

    .line 105
    return-void
.end method
