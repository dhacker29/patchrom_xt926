.class public Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "CaptureCluster.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCameraCamcorderCluster:Landroid/widget/RelativeLayout;

.field private mCameraCamcorderSwitch:Landroid/widget/Switch;

.field private mCameraCamcorderWrapper:Lcom/motorola/camera/ui/v2/RotateAnimate;

.field private mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

.field private mIcCamera:Landroid/widget/ImageView;

.field private mIcVideo:Landroid/widget/ImageView;

.field private mIsToggleAllowed:Z

.field mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

.field private volatile mResult:Z

.field private mVideoSnapshot:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;Z)V
    .locals 4
    .parameter "view"
    .parameter "parent"
    .parameter "singleshot"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 51
    const-string v0, "CaptureCluster"

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->TAG:Ljava/lang/String;

    .line 61
    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mIsToggleAllowed:Z

    .line 155
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster$1;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 73
    const v0, 0x7f080023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mVideoSnapshot:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mVideoSnapshot:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f080025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/RotateImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    .line 77
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setSelected(Z)V

    .line 80
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mIcCamera:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f080028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mIcVideo:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f080029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderSwitch:Landroid/widget/Switch;

    .line 83
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderSwitch:Landroid/widget/Switch;

    if-nez p3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    const v0, 0x7f080026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderCluster:Landroid/widget/RelativeLayout;

    .line 86
    invoke-direct {p0, v2}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->enableCameraCamcorderCluster(Z)V

    .line 87
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderCluster:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v0, Lcom/motorola/camera/ui/v2/RotateAnimate;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderCluster:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v3}, Lcom/motorola/camera/ui/v2/RotateAnimate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderWrapper:Lcom/motorola/camera/ui/v2/RotateAnimate;

    .line 91
    const v0, 0x7f080024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/RotateImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    .line 92
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setActivated(Z)V

    .line 93
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getNumOfCameras()I

    move-result v0

    if-le v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mIsToggleAllowed:Z

    .line 95
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mIsToggleAllowed:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/v2/RotateImageView;->setClickable(Z)V

    .line 97
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderCluster:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    return-void

    :cond_1
    move v0, v2

    .line 83
    goto :goto_0

    :cond_2
    move v1, v2

    .line 94
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->updateSwitchIcons(Z)V

    return-void
.end method

.method private enableCameraCamcorderCluster(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderCluster:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 207
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setClickable(Z)V

    .line 208
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->updateSwitchIcons(Z)V

    .line 215
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderCluster:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 211
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 212
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mIcCamera:Landroid/widget/ImageView;

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 213
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mIcVideo:Landroid/widget/ImageView;

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private setAudioMute(Z)V
    .locals 4
    .parameter "mute"

    .prologue
    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v2, Lcom/motorola/camera/Event;

    sget-object v3, Lcom/motorola/camera/Event$ACTION;->MUTE_TOGGLE:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 202
    return-void
.end method

.method private updateSwitchIcons(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mIcCamera:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 177
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mIcVideo:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 178
    return-void

    :cond_1
    move-object v0, v1

    .line 176
    goto :goto_0
.end method


# virtual methods
.method public disableClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->enableCameraCamcorderCluster(Z)V

    .line 236
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setClickable(Z)V

    .line 237
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 238
    return-void
.end method

.method public disableMuteUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setClickable(Z)V

    .line 132
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setSelected(Z)V

    .line 133
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 134
    return-void
.end method

.method public disableVideoSnapshotUI()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mVideoSnapshot:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 144
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mVideoSnapshot:Landroid/widget/ImageView;

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 145
    return-void
.end method

.method public enableClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 226
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->enableCameraCamcorderCluster(Z)V

    .line 227
    iget-boolean v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mIsToggleAllowed:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setClickable(Z)V

    .line 229
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 231
    :cond_0
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableMuteUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 137
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setClickable(Z)V

    .line 138
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setSelected(Z)V

    .line 139
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 140
    return-void
.end method

.method public enableVideoSnapshotUI()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mVideoSnapshot:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 149
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mVideoSnapshot:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 150
    return-void
.end method

.method public hideMuteUI()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderWrapper:Lcom/motorola/camera/ui/v2/RotateAnimate;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/RotateAnimate;->show()V

    .line 125
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->enableCameraCamcorderCluster(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public hideVideoSnapshotUI()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mVideoSnapshot:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->CAPTURE_VIDEO_SNAPSHOT:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/RotateImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/v2/RotateImageView;->setSelected(Z)V

    .line 191
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/RotateImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    invoke-direct {p0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->setAudioMute(Z)V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 190
    goto :goto_1

    :cond_1
    move v1, v2

    .line 191
    goto :goto_2

    .line 194
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->FRONT_BACK_SWITCH:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x7f080023
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceGroupChanged(Lcom/motorola/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 4
    .parameter "prefGroup"
    .parameter "keys"

    .prologue
    const/4 v3, 0x1

    .line 281
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getNumOfCameras()I

    move-result v1

    .line 282
    .local v1, numCameras:I
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getCameraFacing()I

    move-result v0

    .line 283
    .local v0, facing:I
    if-le v1, v3, :cond_0

    .line 284
    if-ne v0, v3, :cond_1

    .line 285
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/v2/RotateImageView;->setActivated(Z)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/v2/RotateImageView;->setActivated(Z)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, result:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 253
    .local v0, action:I
    iget-boolean v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mResult:Z

    if-eqz v3, :cond_1

    .line 254
    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 266
    :goto_0
    return v2

    .line 258
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mResult:Z

    goto :goto_0

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    move-result v1

    .line 263
    if-eqz v1, :cond_2

    .line 264
    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mResult:Z

    :cond_2
    move v2, v1

    .line 266
    goto :goto_0
.end method

.method public registerListeners()V
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/AppSettings;->addOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 272
    return-void
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setOrientation(I)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setOrientation(I)V

    .line 221
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderWrapper:Lcom/motorola/camera/ui/v2/RotateAnimate;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateAnimate;->rotate(I)V

    .line 222
    return-void
.end method

.method public setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 243
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 244
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 246
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showMuteUI()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mMuteButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setSelected(Z)V

    .line 119
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mCameraCamcorderWrapper:Lcom/motorola/camera/ui/v2/RotateAnimate;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/RotateAnimate;->hide()V

    .line 120
    return-void
.end method

.method public showVideoSnapshotUI()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->enableVideoSnapshotUI()V

    .line 107
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mVideoSnapshot:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->mFrontBackButton:Lcom/motorola/camera/ui/v2/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateImageView;->setVisibility(I)V

    .line 109
    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/AppSettings;->removeOnPreferenceChangeListener(Lcom/motorola/camera/AppSettings$OnPreferenceChangeListener;)V

    .line 277
    return-void
.end method
