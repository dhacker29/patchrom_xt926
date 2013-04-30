.class Lcom/motorola/camera/ui/v3/GestureRecognizer$MyScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v3/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyScaleGestureListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;Lcom/motorola/camera/ui/v3/GestureRecognizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyScaleGestureListener;-><init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    .line 82
    sget-boolean v0, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScale"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyScaleGestureListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    #getter for: Lcom/motorola/camera/ui/v3/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$400(Lcom/motorola/camera/ui/v3/GestureRecognizer;)Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;->onScale(FFFF)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 76
    sget-boolean v0, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScaleBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyScaleGestureListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    #getter for: Lcom/motorola/camera/ui/v3/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$400(Lcom/motorola/camera/ui/v3/GestureRecognizer;)Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;->onScaleBegin(FF)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 89
    sget-boolean v0, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyScaleGestureListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    #getter for: Lcom/motorola/camera/ui/v3/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$400(Lcom/motorola/camera/ui/v3/GestureRecognizer;)Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;->onScaleEnd()V

    .line 91
    return-void
.end method
