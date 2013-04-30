.class public Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "InfoBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Infobar"


# instance fields
.field private mFocusIconComponent:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;

.field private mInfobarContainer:Landroid/view/View;

.field private mInfobarLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

.field private mLocationEnabled:Z

.field private mRecord:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

.field private mUIComponentInterfaceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoRes:Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 5
    .parameter "context"
    .parameter "root"
    .parameter "listener"

    .prologue
    const v4, 0x7f08003b

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 46
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mLocationEnabled:Z

    .line 49
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    .line 58
    const v2, 0x7f08001a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mInfobarLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 59
    const v2, 0x7f080019

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mInfobarContainer:Landroid/view/View;

    .line 60
    new-instance v2, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    invoke-direct {v2, p2, p3}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mRecord:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    .line 61
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mRecord:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v2, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;

    const v3, 0x7f080038

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mVideoRes:Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;

    .line 63
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mVideoRes:Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mFocusIconComponent:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;

    .line 65
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mFocusIconComponent:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2, p3}, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 70
    .local v0, cafStatus:Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/HandshakeUIComponent;

    const v2, 0x7f08003c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/motorola/camera/ui/v2/uicomponents/HandshakeUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 72
    .local v1, handshakeIcon:Lcom/motorola/camera/ui/v2/uicomponents/HandshakeUIComponent;
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->destroy()V

    .line 154
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mRecord:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->destroy()V

    .line 155
    return-void
.end method

.method public getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mInfobarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->hide()V

    .line 117
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Infobar"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mVideoRes:Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;->remove()V

    .line 119
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 96
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Infobar"

    const-string v1, "init:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mVideoRes:Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;->init()V

    .line 99
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mVideoRes:Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;->show()V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mVideoRes:Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;->remove()V

    goto :goto_0
.end method

.method public postCapture()V
    .locals 2

    .prologue
    .line 130
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Infobar"

    const-string v1, "postCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mRecord:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->postCapture()V

    .line 132
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mFocusIconComponent:Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/FocusIconComponent;->hide()V

    .line 133
    return-void
.end method

.method public postCaptureEntry()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mRecord:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->hide()V

    .line 138
    return-void
.end method

.method public preCapture()V
    .locals 2

    .prologue
    .line 123
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Infobar"

    const-string v1, "preCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mRecord:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->show()V

    .line 125
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mRecord:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->preCapture()V

    .line 126
    return-void
.end method

.method public registerListeners()V
    .locals 3

    .prologue
    .line 159
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 160
    .local v0, componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->registerListeners()V

    goto :goto_0

    .line 162
    .end local v0           #componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    :cond_0
    return-void
.end method

.method public rotate(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->rotate(I)V

    .line 80
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Infobar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mInfobarLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mInfobarLayout:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 85
    :cond_1
    return-void
.end method

.method public setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 90
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Infobar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mRecord:Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/RecordComponent;->setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 92
    return-void
.end method

.method public setComponentParams(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mInfobarContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mInfobarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 144
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->show()V

    .line 108
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Infobar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show mMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mVideoRes:Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/VideoResolutionComponent;->show()V

    .line 112
    :cond_1
    return-void
.end method

.method public unregisterListeners()V
    .locals 3

    .prologue
    .line 166
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 167
    .local v0, componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->unregisterListeners()V

    goto :goto_0

    .line 169
    .end local v0           #componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    :cond_0
    return-void
.end method
