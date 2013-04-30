.class public Lcom/motorola/camera/ui/v2/uicomponents/Capture;
.super Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;
.source "Capture.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCaptureButton:Lcom/motorola/camera/ui/v2/CaptureButton;

.field mListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "Capture"

    sput-object v0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V
    .locals 2
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    .line 58
    new-instance v0, Lcom/motorola/camera/ui/v2/uicomponents/Capture$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/v2/uicomponents/Capture$1;-><init>(Lcom/motorola/camera/ui/v2/uicomponents/Capture;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mListener:Landroid/view/View$OnClickListener;

    .line 51
    check-cast p1, Lcom/motorola/camera/ui/v2/CaptureButton;

    .end local p1
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mCaptureButton:Lcom/motorola/camera/ui/v2/CaptureButton;

    .line 52
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mCaptureButton:Lcom/motorola/camera/ui/v2/CaptureButton;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/CaptureButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method public disableClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mCaptureButton:Lcom/motorola/camera/ui/v2/CaptureButton;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/CaptureButton;->setClickable(Z)V

    .line 79
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mCaptureButton:Lcom/motorola/camera/ui/v2/CaptureButton;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/CaptureButton;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mCaptureButton:Lcom/motorola/camera/ui/v2/CaptureButton;

    sget-object v1, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mDisabledFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/CaptureButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 81
    return-void
.end method

.method public enableClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mCaptureButton:Lcom/motorola/camera/ui/v2/CaptureButton;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/CaptureButton;->setClickable(Z)V

    .line 72
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mCaptureButton:Lcom/motorola/camera/ui/v2/CaptureButton;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/CaptureButton;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mCaptureButton:Lcom/motorola/camera/ui/v2/CaptureButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/CaptureButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 74
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public postCapture()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public preCapture()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mCaptureButton:Lcom/motorola/camera/ui/v2/CaptureButton;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/CaptureButton;->setImageResource(I)V

    .line 99
    return-void
.end method

.method public rotate(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 86
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/uicomponents/Capture;->mCaptureButton:Lcom/motorola/camera/ui/v2/CaptureButton;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/v2/CaptureButton;->setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 87
    return-void
.end method
