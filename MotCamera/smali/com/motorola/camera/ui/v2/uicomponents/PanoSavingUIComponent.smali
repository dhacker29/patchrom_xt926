.class public Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "PanoSavingUIComponent.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIndicatorColor:I

.field private final mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

.field private final mPreviewImage:Landroid/widget/ImageView;

.field private final mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

.field private final mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

.field private final mSavingLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 3
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 45
    const v1, 0x7f080044

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mSavingLayout:Landroid/widget/RelativeLayout;

    .line 46
    const v1, 0x7f080047

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    .line 47
    const v1, 0x7f080046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 48
    const v1, 0x7f080048

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 49
    const v1, 0x7f080045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mPreviewImage:Landroid/widget/ImageView;

    .line 51
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mIndicatorColor:I

    .line 54
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    const v2, 0x7f090008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setBackgroundColor(I)V

    .line 55
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setDoneColor(I)V

    .line 56
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    iget v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setIndicatorColor(I)V

    .line 57
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setIndicatorWidth(F)V

    .line 58
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setMaxProgress(I)V

    .line 59
    return-void
.end method

.method private handleMosaicPreviewImage(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 143
    const-string v1, "imagePreview"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 144
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    return-void
.end method

.method private handleMosaicSavingProgress(Landroid/os/Bundle;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 124
    const-string v4, "savingProgress"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, progress:I
    const-string v4, "done"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 126
    .local v0, done:Z
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mSavingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 127
    .local v2, visible:Z
    :goto_0
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 128
    sget-object v4, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMosaicSavingProgress -> progress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", done:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    if-nez v2, :cond_3

    if-nez v0, :cond_3

    if-lez v1, :cond_3

    .line 131
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->reset()V

    .line 132
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mSavingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 133
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setProgress(I)V

    .line 140
    :cond_1
    :goto_1
    return-void

    .end local v2           #visible:Z
    :cond_2
    move v2, v3

    .line 126
    goto :goto_0

    .line 134
    .restart local v2       #visible:Z
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 135
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mSavingLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->reset()V

    goto :goto_1

    .line 137
    :cond_4
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    if-lez v1, :cond_1

    .line 138
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->setProgress(I)V

    goto :goto_1
.end method


# virtual methods
.method public registerListeners()V
    .locals 2

    .prologue
    .line 106
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->TAG:Ljava/lang/String;

    const-string v1, "registerListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->registerListeners()V

    .line 108
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getPanoramaManager()Lcom/motorola/camera/PanoramaManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/PanoramaManager;->addObserver(Ljava/util/Observer;)V

    .line 109
    return-void
.end method

.method public rotate(I)V
    .locals 13
    .parameter "degree"

    .prologue
    .line 63
    sget-boolean v10, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 64
    sget-object v10, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rotate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->rotate(I)V

    .line 66
    iget v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mOrientation:I

    invoke-static {v10}, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->getRotationParams(I)Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;

    move-result-object v9

    .line 68
    .local v9, rotateParams:Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/v2/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    .local v8, progressParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v9}, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->getProgressLayoutParams()[[I

    move-result-object v7

    .line 70
    .local v7, params:[[I
    move-object v0, v7

    .local v0, arr$:[[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v6, v0, v1

    .line 71
    .local v6, param:[I
    const/4 v10, 0x1

    aget v10, v6, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 72
    const/4 v10, 0x0

    aget v10, v6, v10

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 76
    .end local v6           #param:[I
    :cond_2
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v10, v8}, Lcom/motorola/camera/ui/v2/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v10, p1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 78
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/v2/RotateLayout;->requestLayout()V

    .line 80
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/v2/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    .local v3, messageParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v9}, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent$RotationLayoutParams;->getMessageLayoutParams()[[I

    move-result-object v5

    .line 82
    .local v5, msgParams:[[I
    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 83
    .local v4, msgParam:[I
    const/4 v10, 0x1

    aget v10, v4, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 84
    const/4 v10, 0x0

    aget v10, v4, v10

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_3
    const/4 v10, 0x0

    aget v10, v4, v10

    const/4 v11, 0x1

    aget v11, v4, v11

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    .line 88
    .end local v4           #msgParam:[I
    :cond_4
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v10, v3}, Lcom/motorola/camera/ui/v2/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v10, p1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 90
    iget-object v10, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mMessageLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/v2/RotateLayout;->requestLayout()V

    .line 92
    return-void
.end method

.method public unregisterListeners()V
    .locals 2

    .prologue
    .line 96
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->TAG:Ljava/lang/String;

    const-string v1, "unregisterListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->unregisterListeners()V

    .line 98
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getPanoramaManager()Lcom/motorola/camera/PanoramaManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/PanoramaManager;->deleteObserver(Ljava/util/Observer;)V

    .line 100
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mSavingLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->mProgressBar:Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/widgets/PanoProgressBar;->reset()V

    .line 102
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 113
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 114
    .local v0, newData:Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 115
    .local v1, type:I
    sget-object v2, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_SAVING_PROGRESS:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-virtual {v2}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 116
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->handleMosaicSavingProgress(Landroid/os/Bundle;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    sget-object v2, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_SAVING_ERROR:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-virtual {v2}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 118
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v4, 0x7f0b0091

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/Notifier;->notify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_2
    sget-object v2, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->MOSAIC_PREVIEW_IMAGE:Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;

    invoke-virtual {v2}, Lcom/motorola/camera/PanoramaManager$PANORAMA_DATA;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 120
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;->handleMosaicPreviewImage(Landroid/os/Bundle;)V

    goto :goto_0
.end method
