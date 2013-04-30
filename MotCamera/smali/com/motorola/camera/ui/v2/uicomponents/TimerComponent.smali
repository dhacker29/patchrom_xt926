.class public Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "TimerComponent.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TimerComponent"


# instance fields
.field private autoTimerSoundCountId:I

.field private autoTimerSoundEndId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTimerResourceArray:[I

.field private mTimerView:Lcom/motorola/camera/ui/v2/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 6
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 33
    const v2, 0x7f080017

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/v2/RotateImageView;

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->mTimerView:Lcom/motorola/camera/ui/v2/RotateImageView;

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->mTimerResourceArray:[I

    .line 37
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->mTimerResourceArray:[I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->mSoundPool:Landroid/media/SoundPool;

    .line 43
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->autoTimerSoundCountId:I

    .line 45
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->autoTimerSoundEndId:I

    .line 48
    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 9
    .parameter "type"
    .parameter "bun"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 58
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerComponent"

    const-string v1, " onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v7, p2

    .line 60
    check-cast v7, Landroid/os/Bundle;

    .line 61
    .local v7, bundle:Landroid/os/Bundle;
    if-nez v7, :cond_2

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    const-string v0, "time"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 63
    .local v8, time:I
    if-lez v8, :cond_1

    .line 67
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->isShutterToneEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const/4 v0, 0x1

    if-ne v8, v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->autoTimerSoundEndId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 74
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->mTimerView:Lcom/motorola/camera/ui/v2/RotateImageView;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->mTimerResourceArray:[I

    add-int/lit8 v2, v8, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->autoTimerSoundCountId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1
.end method

.method public registerListeners()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->TIMER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 81
    return-void
.end method

.method public rotate(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;->mTimerView:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setOrientation(I)V

    .line 53
    return-void
.end method

.method public unregisterListeners()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->TIMER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 86
    return-void
.end method
