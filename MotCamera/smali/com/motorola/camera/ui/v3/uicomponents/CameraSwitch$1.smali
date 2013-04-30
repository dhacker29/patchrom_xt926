.class Lcom/motorola/camera/ui/v3/uicomponents/CameraSwitch$1;
.super Ljava/lang/Object;
.source "CameraSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/v3/uicomponents/CameraSwitch;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v3/uicomponents/CameraSwitch;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v3/uicomponents/CameraSwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/motorola/camera/ui/v3/uicomponents/CameraSwitch$1;->this$0:Lcom/motorola/camera/ui/v3/uicomponents/CameraSwitch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/uicomponents/CameraSwitch$1;->this$0:Lcom/motorola/camera/ui/v3/uicomponents/CameraSwitch;

    iget-object v0, v0, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->FRONT_BACK_SWITCH:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 47
    return-void
.end method
