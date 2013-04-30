.class Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$1;
.super Ljava/lang/Object;
.source "ZoomComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->onDeviceZoomChange(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;

.field final synthetic val$zoomValue:I


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;

    iput p2, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$1;->val$zoomValue:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->mZoomBar:Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;->access$000(Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;)Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent$1;->val$zoomValue:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControlBar;->setZoomIndex(I)V

    .line 57
    return-void
.end method
