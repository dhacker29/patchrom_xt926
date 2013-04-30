.class public Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "ZoomComponent.java"

# interfaces
.implements Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;
.implements Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomComponent"


# instance fields
.field private mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

.field private mZoomContainer:Lcom/motorola/camera/ui/v2/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 1
    .parameter "root"
    .parameter "parent"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 34
    const v0, 0x7f08001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    .line 35
    const v0, 0x7f08001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomContainer:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 36
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->init()V

    .line 37
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->setOnZoomChangeListener(Lcom/motorola/camera/ui/v2/widgets/ZoomControl$OnZoomChangedListener;)V

    .line 38
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ZoomManager;->setOnZoomChangeListener(Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;)Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    return-object v0
.end method


# virtual methods
.method public disableClick()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->disableClick()V

    .line 106
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->setActivated(Z)V

    .line 107
    return-void
.end method

.method public enableClick()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->enableClick()V

    .line 133
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->setActivated(Z)V

    .line 134
    return-void
.end method

.method public fadeIn()V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ZoomManager;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->fadeIn()V

    .line 123
    :cond_0
    return-void
.end method

.method public fadeOut()V
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ZoomManager;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->fadeOut()V

    .line 128
    :cond_0
    return-void
.end method

.method public getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomContainer:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 45
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomComponent"

    const-string v1, "init() : \t"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ZoomManager;->getMaxZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->setZoomMax(I)V

    .line 47
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->setZoomIndex(I)V

    .line 48
    return-void
.end method

.method public onDeviceZoomChange(IZ)V
    .locals 3
    .parameter "zoomValue"
    .parameter "uiChange"

    .prologue
    .line 52
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceZoomChange: \t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    if-eqz p2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$1;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_1
    return-void
.end method

.method public onReset(I)V
    .locals 3
    .parameter "maxValue"

    .prologue
    .line 92
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMaxValueChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$2;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$2;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public onZoomStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 82
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 72
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZoomComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUiZoomChange: \t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v2, Lcom/motorola/camera/Event;

    sget-object v3, Lcom/motorola/camera/Event$ACTION;->ZOOM:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 78
    return-void
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomContainer:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 66
    return-void
.end method

.method public setComponentParams(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomContainer:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomContainer:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/RotateLayout;->requestLayout()V

    .line 142
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$3;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$3;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ZoomManager;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->show()V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->hide()V

    goto :goto_0
.end method
