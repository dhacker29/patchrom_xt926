.class public Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "Thumbnail.java"

# interfaces
.implements Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Thumbnail"

.field private static final TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "video/*"


# instance fields
.field private mEmptyThumb:Landroid/graphics/drawable/Drawable;

.field private mFilePath:Ljava/lang/String;

.field private mId:J

.field private mPadding:I

.field private mThumb:[Landroid/graphics/drawable/Drawable;

.field private mThumbTransitionTime:I

.field private mThumbnailController:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

.field private mType:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 3
    .parameter "context"
    .parameter "root"
    .parameter "listener"

    .prologue
    .line 69
    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mId:J

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumb:[Landroid/graphics/drawable/Drawable;

    .line 70
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;-><init>(Landroid/app/Application;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumbnailController:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    .line 72
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mEmptyThumb:Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumb:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mEmptyThumb:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mPadding:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumbTransitionTime:I

    .line 77
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumbnailController:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumbnailController:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->destroy()V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    check-cast v1, Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 102
    .local v0, layer:Landroid/graphics/drawable/LayerDrawable;
    const v1, 0x7f080063

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mEmptyThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 103
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    check-cast v1, Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/v2/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 108
    const v0, 0x7f080018

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080018

    if-ne v1, v2, :cond_2

    .line 156
    iget-wide v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "path"

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "type"

    iget-boolean v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mType:Z

    if-eqz v1, :cond_1

    const-string v1, "image/*"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "id"

    iget-wide v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 162
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v2, Lcom/motorola/camera/Event;

    sget-object v3, Lcom/motorola/camera/Event$ACTION;->LAUNCH_ACTIVITY:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 167
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void

    .line 159
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v1, "video/*"

    goto :goto_0

    .line 165
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, " Shouldn\'t be getting click events for anything else"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onUpdateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;ZJZ)V
    .locals 12
    .parameter "bitmap"
    .parameter "filePath"
    .parameter "type"
    .parameter "id"
    .parameter "secureContent"

    .prologue
    .line 122
    sget-boolean v6, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "Thumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---onUpdateThumbnail file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p4

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", secure: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iput-boolean p3, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mType:Z

    .line 126
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mId:J

    .line 128
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    check-cast v6, Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/v2/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 129
    .local v3, layer:Landroid/graphics/drawable/LayerDrawable;
    if-eqz p6, :cond_1

    .line 130
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumb:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mEmptyThumb:Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v7

    .line 131
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumb:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020090

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v6, v7

    .line 144
    :goto_0
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumb:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 145
    .local v5, transition:Landroid/graphics/drawable/TransitionDrawable;
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mPadding:I

    invoke-direct {v2, v5, v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 146
    .local v2, inset:Landroid/graphics/drawable/InsetDrawable;
    const v6, 0x7f080063

    invoke-virtual {v3, v6, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 147
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    check-cast v6, Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/v2/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    .line 149
    iget v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumbTransitionTime:I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 150
    return-void

    .line 134
    .end local v2           #inset:Landroid/graphics/drawable/InsetDrawable;
    .end local v5           #transition:Landroid/graphics/drawable/TransitionDrawable;
    :cond_1
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 135
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 136
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumb:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumb:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    .line 137
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumb:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v11, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p1, v10, v11}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v8, v6, v7

    goto :goto_0

    .line 140
    :cond_2
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumb:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mEmptyThumb:Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v7

    .line 141
    iget-object v6, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumb:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mEmptyThumb:Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v7

    goto :goto_0
.end method

.method public registerListener()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumbnailController:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->setLastThumbnailListener(Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController$LastThumbnailListener;)V

    .line 81
    return-void
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->rotate(I)V

    .line 93
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    check-cast v0, Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setOrientation(I)V

    .line 94
    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumbnailController:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumbnailController:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->destroy()V

    .line 88
    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->mThumbnailController:Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/ThumbnailController;->reload()V

    .line 114
    return-void
.end method
