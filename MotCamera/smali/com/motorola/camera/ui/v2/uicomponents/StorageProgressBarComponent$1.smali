.class Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent$1;
.super Ljava/lang/Object;
.source "StorageProgressBarComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mProgressStatus:I
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->access$000(Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->access$100(Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mProgressStatus:I
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->access$000(Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 56
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mView:Lcom/motorola/camera/ui/v2/RotateLayout;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->access$200(Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;)Lcom/motorola/camera/ui/v2/RotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent$1;->this$0:Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;

    #getter for: Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->mView:Lcom/motorola/camera/ui/v2/RotateLayout;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;->access$200(Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;)Lcom/motorola/camera/ui/v2/RotateLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/RotateLayout;->setVisibility(I)V

    goto :goto_0
.end method
