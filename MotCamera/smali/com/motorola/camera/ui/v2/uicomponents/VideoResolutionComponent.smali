.class public Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "VideoResolutionComponent.java"


# instance fields
.field private resString:[Ljava/lang/String;

.field private vidRes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 2
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 38
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;->vidRes:[Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;->resString:[Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;->init()V

    .line 43
    return-void
.end method


# virtual methods
.method public init()V
    .locals 10

    .prologue
    .line 48
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/AppSettings;->getVideoResName()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, resolution:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/AppSettings;->getVideoFrameRate()I

    move-result v0

    .line 54
    .local v0, frameRate:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;->vidRes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 55
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;->vidRes:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;->resString:[Ljava/lang/String;

    aget-object v2, v5, v1

    .line 57
    .local v2, res:Ljava/lang/String;
    const-string v5, "480p"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/AppSettings;->getVideoResolution()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, resdimen:Ljava/lang/String;
    const-string v5, "640x480"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b005e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    .end local v3           #resdimen:Ljava/lang/String;
    :cond_0
    if-lez v0, :cond_1

    const/16 v5, 0x1e

    if-eq v0, v5, :cond_1

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00a6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    :cond_1
    iget-object v5, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .end local v2           #res:Ljava/lang/String;
    :cond_2
    return-void

    .line 54
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
