.class Lcom/motorola/camera/ui/v3/GestureRecognizer$MyDownUpListener;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"

# interfaces
.implements Lcom/motorola/camera/ui/v3/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v3/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyDownUpListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;Lcom/motorola/camera/ui/v3/GestureRecognizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyDownUpListener;-><init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 97
    sget-boolean v0, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyDownUpListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    #getter for: Lcom/motorola/camera/ui/v3/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$400(Lcom/motorola/camera/ui/v3/GestureRecognizer;)Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;->onDown(FF)V

    .line 99
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 103
    sget-boolean v0, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyDownUpListener;->this$0:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    #getter for: Lcom/motorola/camera/ui/v3/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->access$400(Lcom/motorola/camera/ui/v3/GestureRecognizer;)Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;->onUp()V

    .line 105
    return-void
.end method
