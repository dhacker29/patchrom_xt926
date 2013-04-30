.class Lcom/motorola/camera/ui/v2/uicomponents/Capture$1;
.super Ljava/lang/Object;
.source "Capture.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/uicomponents/Capture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/uicomponents/Capture;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/Capture;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/Capture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/Capture;

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->CAPTURE:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 61
    return-void
.end method
