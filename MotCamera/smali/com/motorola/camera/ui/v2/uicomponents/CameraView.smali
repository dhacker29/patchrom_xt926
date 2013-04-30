.class public Lcom/motorola/camera/ui/v2/uicomponents/CameraView;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "CameraView.java"

# interfaces
.implements Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/motorola/camera/ui/v2/uicomponents/CameraView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/CameraView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 0
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public disableClick()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mEventHandler:Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;

    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->TOUCH_TO_FOCUS:Lcom/motorola/camera/Event$ACTION;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/view/MotionEvent;II)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public enableClick()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public onPreviewSizeChanged(Landroid/graphics/Point;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 53
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 56
    return-void
.end method
