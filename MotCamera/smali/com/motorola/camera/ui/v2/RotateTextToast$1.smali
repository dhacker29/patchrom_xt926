.class Lcom/motorola/camera/ui/v2/RotateTextToast$1;
.super Ljava/lang/Object;
.source "RotateTextToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/RotateTextToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/RotateTextToast;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/RotateTextToast;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/RotateTextToast$1;->this$0:Lcom/motorola/camera/ui/v2/RotateTextToast;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateTextToast$1;->this$0:Lcom/motorola/camera/ui/v2/RotateTextToast;

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mToast:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-static {v0}, Lcom/motorola/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateTextToast$1;->this$0:Lcom/motorola/camera/ui/v2/RotateTextToast;

    iget-object v0, v0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mLayoutRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/RotateTextToast$1;->this$0:Lcom/motorola/camera/ui/v2/RotateTextToast;

    iget-object v1, v1, Lcom/motorola/camera/ui/v2/RotateTextToast;->mToast:Lcom/motorola/camera/ui/v2/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/RotateTextToast$1;->this$0:Lcom/motorola/camera/ui/v2/RotateTextToast;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/ui/v2/RotateTextToast;->mToast:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 67
    return-void
.end method
