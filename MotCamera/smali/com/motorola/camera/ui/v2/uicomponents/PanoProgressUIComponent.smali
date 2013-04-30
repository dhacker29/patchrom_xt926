.class public Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "PanoProgressUIComponent.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;,
        Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;
    }
.end annotation


# static fields
.field private static final HORIZONTAL:I = 0x0

.field private static final PANNING_SPEED_THRESHOLD:F = 25.0f

.field private static final TAG:Ljava/lang/String; = null

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mCapturing:Z

.field private final mErrorLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private final mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

.field private final mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 3
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 53
    const v1, 0x7f08003f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    .line 54
    const v1, 0x7f08003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 56
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mIndicatorColor:I

    .line 58
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mIndicatorColorFast:I

    .line 60
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    const v2, 0x7f090008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setBackgroundColor(I)V

    .line 61
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setDoneColor(I)V

    .line 62
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    iget v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setIndicatorColor(I)V

    .line 64
    const v1, 0x7f080040

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 65
    const v1, 0x7f080042

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mErrorLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 67
    const v1, 0x7f080041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageView:Landroid/widget/TextView;

    .line 68
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleMosaicPreparingPanorama(Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"

    .prologue
    const/16 v2, 0x8

    .line 213
    const-string v1, "preparing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 214
    .local v0, preparing:Z
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f0b0095

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleMosaicViewFinderInfo(Landroid/os/Bundle;)V
    .locals 11
    .parameter "data"

    .prologue
    const/high16 v10, 0x41c8

    const/4 v7, 0x0

    const/16 v9, 0x8

    .line 163
    iget-boolean v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mCapturing:Z

    if-nez v6, :cond_0

    .line 210
    :goto_0
    return-void

    .line 166
    :cond_0
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 167
    sget-object v6, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->TAG:Ljava/lang/String;

    const-string v8, "handleMosaicViewFinderInfo"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    const-string v6, "aborted"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 171
    .local v0, aborted:Z
    const-string v6, "panningRateX"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 172
    .local v2, panningRateXInDegree:F
    const-string v6, "panningRateY"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 173
    .local v3, panningRateYInDegree:F
    const-string v6, "progressX"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 174
    .local v4, progressHorizontalAngle:F
    const-string v6, "progressY"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 176
    .local v5, progressVerticalAngle:F
    if-eqz v0, :cond_2

    .line 177
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v6, v9}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setVisibility(I)V

    .line 179
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mErrorLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v6, v9}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    .line 180
    iput-boolean v7, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mCapturing:Z

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v10

    if-gtz v6, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v10

    if-lez v6, :cond_7

    .line 186
    :cond_3
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->showTooFastIndication()V

    .line 191
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_8

    float-to-int v1, v4

    .line 196
    .local v1, angleInMajorDirection:I
    :goto_2
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->isShown()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v8, 0x5

    if-le v6, v8, :cond_6

    .line 197
    iget v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mOrientation:I

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mOrientation:I

    const/16 v8, 0xb4

    if-ne v6, v8, :cond_9

    :cond_4
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_a

    :cond_5
    move v6, v7

    :goto_3
    invoke-direct {p0, v6}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->movePanProgressBar(I)V

    .line 202
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setVisibility(I)V

    .line 203
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v6, v9}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    .line 209
    :cond_6
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v6, v1}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 189
    .end local v1           #angleInMajorDirection:I
    :cond_7
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->hideTooFastIndication()V

    goto :goto_1

    .line 191
    :cond_8
    float-to-int v1, v5

    goto :goto_2

    .line 197
    .restart local v1       #angleInMajorDirection:I
    :cond_9
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_5

    :cond_a
    const/4 v6, 0x1

    goto :goto_3
.end method

.method private hideTooFastIndication()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    iget v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setIndicatorColor(I)V

    .line 232
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mErrorLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    .line 233
    return-void
.end method

.method private movePanProgressBar(I)V
    .locals 13
    .parameter "direction"

    .prologue
    .line 237
    sget-boolean v10, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 238
    sget-object v11, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "movePanProgressBar orientation: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mOrientation:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " horizontal:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez p1, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    .line 242
    .local v9, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mOrientation:I

    invoke-static {v10, p1}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->getPanProgressParam(II)Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    move-result-object v8

    .line 244
    .local v8, panParams:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;
    invoke-virtual {v8}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->getLayoutParams()[[I

    move-result-object v6

    .line 245
    .local v6, layoutParams:[[I
    move-object v0, v6

    .local v0, arr$:[[I
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v5, v0, v4

    .line 246
    .local v5, layoutParam:[I
    const/4 v10, 0x1

    aget v10, v5, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 247
    const/4 v10, 0x0

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 245
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 238
    .end local v0           #arr$:[[I
    .end local v4           #i$:I
    .end local v5           #layoutParam:[I
    .end local v6           #layoutParams:[[I
    .end local v7           #len$:I
    .end local v8           #panParams:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;
    .end local v9           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 250
    .restart local v0       #arr$:[[I
    .restart local v4       #i$:I
    .restart local v5       #layoutParam:[I
    .restart local v6       #layoutParams:[[I
    .restart local v7       #len$:I
    .restart local v8       #panParams:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;
    .restart local v9       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 254
    .end local v5           #layoutParam:[I
    :cond_3
    invoke-virtual {p0, v9}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->setComponentParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 255
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->getPanProgressOrientation()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 257
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mErrorLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/v2/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 258
    .local v1, errLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v8}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->getErrorLayoutParams()[[I

    move-result-object v3

    .line 259
    .local v3, errParams:[[I
    move-object v0, v3

    array-length v7, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_5

    aget-object v2, v0, v4

    .line 260
    .local v2, errParam:[I
    const/4 v10, 0x1

    aget v10, v2, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 261
    const/4 v10, 0x0

    aget v10, v2, v10

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 259
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 264
    :cond_4
    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    invoke-virtual {v1, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    .line 267
    .end local v2           #errParam:[I
    :cond_5
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mErrorLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v10, v1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mErrorLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/v2/RotateLayout;->requestLayout()V

    .line 269
    return-void
.end method

.method private movePanStartMessage()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 273
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    iget v8, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mOrientation:I

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 274
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/v2/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    .local v6, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mOrientation:I

    invoke-static {v7, v9}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->getPanProgressParam(II)Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;

    move-result-object v5

    .line 276
    .local v5, panParams:Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;
    invoke-virtual {v5}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PanProgressParams;->getLayoutParams()[[I

    move-result-object v3

    .line 277
    .local v3, layoutParams:[[I
    move-object v0, v3

    .local v0, arr$:[[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 278
    .local v2, layoutParam:[I
    aget v7, v2, v10

    if-ne v7, v10, :cond_0

    .line 279
    aget v7, v2, v9

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 277
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_0
    aget v7, v2, v9

    aget v8, v2, v10

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 285
    .end local v2           #layoutParam:[I
    :cond_1
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/v2/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v7, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/v2/RotateLayout;->requestLayout()V

    .line 287
    return-void
.end method

.method private showTooFastIndication()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    iget v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setIndicatorColor(I)V

    .line 227
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mErrorLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    .line 228
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public postCapture()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 92
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->TAG:Ljava/lang/String;

    const-string v1, "postCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->PANORAMA:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v0, v1, :cond_2

    .line 97
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mErrorLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    .line 99
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->isShutterToneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    const v2, 0x7f060003

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->play()V

    .line 102
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mCapturing:Z

    .line 104
    :cond_2
    return-void
.end method

.method public preCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->TAG:Ljava/lang/String;

    const-string v1, "preCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->PANORAMA:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v0, v1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mMessageView:Landroid/widget/TextView;

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->reset()V

    .line 81
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setIndicatorWidth(F)V

    .line 82
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setMaxProgress(I)V

    .line 83
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->isShutterToneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    const v2, 0x7f060003

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent$PlaySound;->play()V

    .line 86
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mCapturing:Z

    .line 88
    :cond_2
    return-void
.end method

.method public registerListeners()V
    .locals 2

    .prologue
    .line 130
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->TAG:Ljava/lang/String;

    const-string v1, "registerListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->registerListeners()V

    .line 132
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getPanoramaManager()Lcom/motorola/camera/PanoramaManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/PanoramaManager;->addObserver(Ljava/util/Observer;)V

    .line 133
    return-void
.end method

.method public rotate(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 108
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->rotate(I)V

    .line 112
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->movePanStartMessage()V

    .line 113
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mErrorLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 114
    return-void
.end method

.method public setComponentParams(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/RotateLayout;->requestLayout()V

    .line 139
    return-void
.end method

.method public unregisterListeners()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 118
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->TAG:Ljava/lang/String;

    const-string v1, "unregisterListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->unregisterListeners()V

    .line 120
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getPanoramaManager()Lcom/motorola/camera/PanoramaManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/PanoramaManager;->deleteObserver(Ljava/util/Observer;)V

    .line 122
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mErrorLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->mCapturing:Z

    .line 126
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 150
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 151
    .local v0, newData:Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 153
    .local v1, type:I
    sget-object v2, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_VIEWFINDER_INFO:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-virtual {v2}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 154
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->handleMosaicViewFinderInfo(Landroid/os/Bundle;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    sget-object v2, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_PREPARING_PANORAMA:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-virtual {v2}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 157
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;->handleMosaicPreparingPanorama(Landroid/os/Bundle;)V

    goto :goto_0
.end method
