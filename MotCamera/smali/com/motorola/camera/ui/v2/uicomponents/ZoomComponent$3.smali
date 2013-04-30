.class Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$3;
.super Ljava/lang/Object;
.source "ZoomComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->setComponentParams(Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$3;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$3;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->access$000(Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;)Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ZoomManager;->getMaxZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->setZoomMax(I)V

    .line 147
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$3;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->access$000(Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;)Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/ZoomManager;->getInstance()Lcom/motorola/camera/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ZoomManager;->getZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->setZoomIndex(I)V

    .line 148
    return-void
.end method
