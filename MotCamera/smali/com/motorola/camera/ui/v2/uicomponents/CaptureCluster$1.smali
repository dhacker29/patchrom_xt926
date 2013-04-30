.class Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster$1;
.super Ljava/lang/Object;
.source "CaptureCluster.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    #calls: Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->updateSwitchIcons(Z)V
    invoke-static {v0, p2}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->access$000(Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;Z)V

    .line 160
    if-eqz p2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->CAMERA_CAMCORDER_SWITCH:Lcom/motorola/camera/Event$ACTION;

    sget-object v3, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->CAMCORDER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->CAMERA_CAMCORDER_SWITCH:Lcom/motorola/camera/Event$ACTION;

    sget-object v3, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->SINGLESHOT:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0
.end method
