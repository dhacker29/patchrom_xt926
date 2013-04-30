.class public Lcom/motorola/camera/ui/v2/uicomponents/HandshakeUIComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "HandshakeUIComponent.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/uicomponents/HandshakeUIComponent$1;
    }
.end annotation


# instance fields
.field private mHandshakeImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 1
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 41
    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/HandshakeUIComponent;->mHandshakeImageView:Landroid/widget/ImageView;

    .line 42
    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 4
    .parameter "type"
    .parameter "bundle"

    .prologue
    const/16 v3, 0x8

    .line 46
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 48
    .local v0, data:Landroid/os/Bundle;
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->isEnvironmentalSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/HandshakeUIComponent;->mHandshakeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :goto_0
    return-void

    .line 51
    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/HandshakeUIComponent$1;->$SwitchMap$com$motorola$camera$Notifier$TYPE:[I

    invoke-virtual {p1}, Lcom/motorola/camera/Notifier$TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    const-string v1, "handshake-data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/HandshakeUIComponent;->mHandshakeImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/HandshakeUIComponent;->mHandshakeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public registerListeners()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ENV_HANDSHAKE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 66
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FM_FOCUS_PARAM_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 67
    return-void
.end method

.method public unregisterListeners()V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ENV_HANDSHAKE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 72
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FM_FOCUS_PARAM_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 73
    return-void
.end method
