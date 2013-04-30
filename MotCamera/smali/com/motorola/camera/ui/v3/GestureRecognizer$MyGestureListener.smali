.class Lcom/motorola/camera/ui/v3/GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v3/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyGestureListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;Lcom/motorola/camera/ui/v3/GestureRecognizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyGestureListener;-><init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 50
    sget-boolean v0, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyGestureListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    #getter for: Lcom/motorola/camera/ui/v3/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$400(Lcom/motorola/camera/ui/v3/GestureRecognizer;)Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;->onFling(FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 56
    sget-boolean v0, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyGestureListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    #getter for: Lcom/motorola/camera/ui/v3/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$400(Lcom/motorola/camera/ui/v3/GestureRecognizer;)Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;->onLongPress(FF)V

    .line 58
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 62
    sget-boolean v0, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyGestureListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    #getter for: Lcom/motorola/camera/ui/v3/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$400(Lcom/motorola/camera/ui/v3/GestureRecognizer;)Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v0, p3, p4, v1, v2}, Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 68
    sget-boolean v0, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyGestureListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    #getter for: Lcom/motorola/camera/ui/v3/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$400(Lcom/motorola/camera/ui/v3/GestureRecognizer;)Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result v0

    return v0
.end method
