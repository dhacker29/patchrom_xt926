.class public Lcom/motorola/camera/ui/v3/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v3/GestureRecognizer$1;,
        Lcom/motorola/camera/ui/v3/GestureRecognizer$MyDownUpListener;,
        Lcom/motorola/camera/ui/v3/GestureRecognizer$MyScaleGestureListener;,
        Lcom/motorola/camera/ui/v3/GestureRecognizer$MyGestureListener;,
        Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDownUpDetector:Lcom/motorola/camera/ui/v3/DownUpDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/motorola/camera/ui/v3/GestureRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/v3/GestureRecognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

    .line 32
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyGestureListener;-><init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;Lcom/motorola/camera/ui/v3/GestureRecognizer$1;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 33
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyScaleGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyScaleGestureListener;-><init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;Lcom/motorola/camera/ui/v3/GestureRecognizer$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 34
    new-instance v0, Lcom/motorola/camera/ui/v3/DownUpDetector;

    new-instance v1, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyDownUpListener;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/v3/GestureRecognizer$MyDownUpListener;-><init>(Lcom/motorola/camera/ui/v3/GestureRecognizer;Lcom/motorola/camera/ui/v3/GestureRecognizer$1;)V

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/v3/DownUpDetector;-><init>(Lcom/motorola/camera/ui/v3/DownUpDetector$DownUpListener;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer;->mDownUpDetector:Lcom/motorola/camera/ui/v3/DownUpDetector;

    .line 35
    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/motorola/camera/ui/v3/GestureRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/camera/ui/v3/GestureRecognizer;)Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;

    return-object v0
.end method


# virtual methods
.method public isDown()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer;->mDownUpDetector:Lcom/motorola/camera/ui/v3/DownUpDetector;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v3/DownUpDetector;->isDown()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 40
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/GestureRecognizer;->mDownUpDetector:Lcom/motorola/camera/ui/v3/DownUpDetector;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/v3/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 41
    return-void
.end method
