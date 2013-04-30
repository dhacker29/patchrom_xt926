.class public Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "CAFStatusUIComponent.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAFStatusUIComponent"


# instance fields
.field private mCAFStatusImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 1
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 43
    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;->mCAFStatusImageView:Landroid/widget/ImageView;

    .line 44
    return-void
.end method

.method private handleCAFUpdate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-static {}, Lcom/motorola/camera/FocusManager;->getInstance()Lcom/motorola/camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/FocusManager;->isCAFStatusValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;->mCAFStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    const-string v1, "low-light"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    .local v0, isLowLight:Z
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;->mCAFStatusImageView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 86
    .end local v0           #isLowLight:Z
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0       #isLowLight:Z
    :cond_1
    const-string v1, "caf-update"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "caf-update"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    const-string v1, "CAFStatusUIComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CAF update status running/suspend"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "caf-update"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;->mCAFStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v1, "CAFStatusUIComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CAF update status idle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "caf-update"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;->mCAFStatusImageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 84
    .end local v0           #isLowLight:Z
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;->mCAFStatusImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2
    .parameter "type"
    .parameter "bundle"

    .prologue
    .line 49
    invoke-static {}, Lcom/motorola/camera/FocusManager;->getInstance()Lcom/motorola/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/FocusManager;->isCAFStatusValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;->mCAFStatusImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :goto_0
    sget-object v0, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent$1;->$SwitchMap$com$motorola$camera$Notifier$TYPE:[I

    invoke-virtual {p1}, Lcom/motorola/camera/Notifier$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    .end local p2
    :goto_1
    return-void

    .line 52
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;->mCAFStatusImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 56
    :pswitch_0
    check-cast p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/v2/uicomponents/CAFStatusUIComponent;->handleCAFUpdate(Landroid/os/Bundle;)V

    goto :goto_1

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public registerListeners()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FM_CAF_LOWLIGHT_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 91
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FM_FOCUS_PARAM_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 92
    return-void
.end method

.method public unregisterListeners()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FM_CAF_LOWLIGHT_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 97
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FM_FOCUS_PARAM_UPDATE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 98
    return-void
.end method
