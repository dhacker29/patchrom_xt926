.class public Lcom/motorola/camera/ui/v2/UIManager;
.super Ljava/lang/Object;
.source "UIManager.java"

# interfaces
.implements Lcom/motorola/camera/ui/UI;
.implements Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/motorola/camera/Notifier$Listener;
.implements Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/UIManager$2;,
        Lcom/motorola/camera/ui/v2/UIManager$MainHandler;,
        Lcom/motorola/camera/ui/v2/UIManager$PhoneUIClose;,
        Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPostCapture;,
        Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;,
        Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;,
        Lcom/motorola/camera/ui/v2/UIManager$PhoneUIIdle;,
        Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;,
        Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    }
.end annotation


# static fields
.field private static final ROTATE_LAYOUT:I = 0x1

.field private static final ROTATE_LAYOUT_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "MotoCameraPhoneUI"


# instance fields
.field private mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

.field private mAppContext:Landroid/content/Context;

.field private mAutoTimer:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

.field private mCameraView:Lcom/motorola/camera/ui/v2/uicomponents/CameraView;

.field private mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

.field private mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

.field protected mController:Lcom/motorola/camera/Controller;

.field private mDeviceOrientation:I

.field private mFocusViewComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

.field private mHandler:Lcom/motorola/camera/ui/v2/UIManager$MainHandler;

.field private mInflated:Z

.field private mInflatedViewStub:Landroid/view/View;

.field private mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

.field private mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field private mOrientation:I

.field private mPanProgressBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

.field private mPanSavingComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

.field private mPortraitView:Lcom/motorola/camera/ui/v2/RotateLayout;

.field protected mRootView:Landroid/view/ViewGroup;

.field private mSettings:Lcom/motorola/camera/AppSettings;

.field private mSnapshotBorder:Landroid/widget/FrameLayout;

.field private mStorageProgressBarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

.field private mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

.field private mToast:Lcom/motorola/camera/ui/v2/RotateTextToast;

.field private mToolbarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

.field private mUIComponentInterfaceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Controller;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "cm"
    .parameter "root"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAppContext:Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInflated:Z

    .line 91
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mHandler:Lcom/motorola/camera/ui/v2/UIManager$MainHandler;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    .line 109
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 110
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    .line 111
    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/AppSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mSettings:Lcom/motorola/camera/AppSettings;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mPanProgressBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->enableClick()V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->hideAll()V

    return-void
.end method

.method static synthetic access$2000(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAutoTimer:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->removeUI()V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/camera/ui/v2/UIManager;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mSnapshotBorder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mStorageProgressBarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->deregisterForEvents()V

    return-void
.end method

.method static synthetic access$2500(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToolbarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/motorola/camera/ui/v2/UIManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/UIManager;->moveRequiredElements(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/motorola/camera/ui/v2/UIManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->isAnyPopupShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/motorola/camera/ui/v2/UIManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/UIManager;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/motorola/camera/ui/v2/UIManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/UIManager;->showToast(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->restoreUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->disableClick()V

    return-void
.end method

.method private deregisterForEvents()V
    .locals 4

    .prologue
    .line 229
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 230
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->LOCATION_SETTINGS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 231
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 232
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;)V

    .line 233
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 234
    .local v0, componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->unregisterListeners()V

    goto :goto_0

    .line 236
    .end local v0           #componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    :cond_0
    return-void
.end method

.method private disableClick()V
    .locals 3

    .prologue
    .line 251
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 252
    .local v0, componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->disableClick()V

    goto :goto_0

    .line 254
    .end local v0           #componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    :cond_0
    return-void
.end method

.method private disableForServiceMode()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->remove()V

    .line 294
    return-void
.end method

.method private dismissAlertPopup()Z
    .locals 2

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, result:Z
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    if-eqz v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/AlertPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/AlertPopup;->cancel()V

    .line 834
    const/4 v0, 0x1

    .line 837
    :cond_0
    return v0
.end method

.method private enableClick()V
    .locals 3

    .prologue
    .line 242
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 243
    .local v0, componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->enableClick()V

    goto :goto_0

    .line 245
    .end local v0           #componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    :cond_0
    return-void
.end method

.method private hideAll()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->hide()V

    .line 548
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToolbarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->hide()V

    .line 549
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->hide()V

    .line 551
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->PANORAMA:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-eq v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->hide()V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->hide()V

    .line 555
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->hide()V

    .line 556
    return-void
.end method

.method private isAnyPopupShowing()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->isAnyPopupShowing()Z

    move-result v0

    return v0
.end method

.method private moveInfobar(Z)V
    .locals 5
    .parameter "portrait"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 428
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 429
    .local v0, infobarParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->getContainerId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 431
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 436
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1, v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->setComponentParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 437
    return-void

    .line 433
    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 434
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->getContainerId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private moveRequiredElements(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 412
    rem-int/lit16 p1, p1, 0x168

    .line 413
    sparse-switch p1, :sswitch_data_0

    .line 425
    :goto_0
    return-void

    .line 416
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/UIManager;->moveInfobar(Z)V

    .line 417
    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v2/UIManager;->moveZoom(Z)V

    goto :goto_0

    .line 421
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/motorola/camera/ui/v2/UIManager;->moveInfobar(Z)V

    .line 422
    invoke-direct {p0, v1}, Lcom/motorola/camera/ui/v2/UIManager;->moveZoom(Z)V

    goto :goto_0

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private moveZoom(Z)V
    .locals 7
    .parameter "portrait"

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 440
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 441
    .local v0, zoomParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->getContainerId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 443
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToolbarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->getContainerId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 444
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 445
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 452
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1, v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->setComponentParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 453
    return-void

    .line 447
    :cond_0
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 448
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 449
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 450
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private popupDismissed()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->show()V

    .line 848
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->show()V

    .line 849
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->show()V

    .line 850
    :cond_0
    return-void
.end method

.method private popupShown()V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->hide()V

    .line 842
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->hide()V

    .line 843
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->hide()V

    .line 844
    :cond_0
    return-void
.end method

.method private registerForEvents()V
    .locals 4

    .prologue
    .line 215
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 216
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->LOCATION_SETTINGS:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 217
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 218
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCameraView:Lcom/motorola/camera/ui/v2/uicomponents/CameraView;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/AppSettings;->registerPreviewSizeChangeListener(Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;)V

    .line 219
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;)V

    .line 220
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 221
    .local v0, componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->registerListeners()V

    goto :goto_0

    .line 223
    .end local v0           #componentInterface:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    :cond_0
    return-void
.end method

.method private removeUI()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->remove()V

    .line 284
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->setComponentParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 285
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToolbarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->hide()V

    .line 287
    :cond_0
    return-void
.end method

.method private restoreUI()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->postCapture()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->show()V

    .line 264
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->setComponentParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToolbarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->show()V

    .line 269
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->show()V

    .line 272
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 273
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->show()V

    .line 274
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->show()V

    .line 275
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->remove()V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 4
    .parameter "textId"

    .prologue
    .line 788
    new-instance v1, Lcom/motorola/camera/ui/v2/RotateTextToast;

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f080015

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v3, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/motorola/camera/ui/v2/RotateTextToast;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;II)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToast:Lcom/motorola/camera/ui/v2/RotateTextToast;

    .line 790
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToast:Lcom/motorola/camera/ui/v2/RotateTextToast;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/RotateTextToast;->show()V

    .line 791
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 794
    new-instance v1, Lcom/motorola/camera/ui/v2/RotateTextToast;

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f080015

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v3, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/motorola/camera/ui/v2/RotateTextToast;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToast:Lcom/motorola/camera/ui/v2/RotateTextToast;

    .line 796
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToast:Lcom/motorola/camera/ui/v2/RotateTextToast;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/RotateTextToast;->show()V

    .line 797
    return-void
.end method

.method private updateView()V
    .locals 3

    .prologue
    .line 868
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 869
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getRawSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 870
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getRawSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 871
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 872
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInflatedViewStub:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 873
    .local v1, px:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 874
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 875
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInflatedViewStub:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 876
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->destroy()V

    .line 855
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCameraView:Lcom/motorola/camera/ui/v2/uicomponents/CameraView;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppSettings;->unregisterPreviewSizeChangeListener(Lcom/motorola/camera/AppSettings$PreviewSizeChangeListener;)V

    .line 856
    return-void
.end method

.method public dispatchEvent(Lcom/motorola/camera/Event;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/Controller;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public isPopupShowing()Z
    .locals 2

    .prologue
    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, result:Z
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/AlertPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    const/4 v0, 0x1

    .line 826
    :cond_0
    return v0
.end method

.method public onEntry(Lcom/motorola/camera/states/StateManager$CAMERA_STATE;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 5
    .parameter "state"
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 301
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 302
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraPhoneUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onEntry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 307
    .local v0, phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    sget-object v1, Lcom/motorola/camera/ui/v2/UIManager$2;->$SwitchMap$com$motorola$camera$states$StateManager$CAMERA_STATE:[I

    invoke-virtual {p1}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 327
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recieved onExit for default state."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :pswitch_0
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 330
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;->onEntry()V

    .line 331
    :cond_1
    return-void

    .line 312
    :pswitch_1
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIIdle;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIIdle;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 313
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 315
    :pswitch_2
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 316
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 318
    :pswitch_3
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 319
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 321
    :pswitch_4
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPostCapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPostCapture;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 322
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 324
    :pswitch_5
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIClose;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIClose;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 325
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onExit(Lcom/motorola/camera/states/StateManager$CAMERA_STATE;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 5
    .parameter "state"
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 335
    iput-object p2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 336
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraPhoneUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onExit for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 341
    .local v0, phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    sget-object v1, Lcom/motorola/camera/ui/v2/UIManager$2;->$SwitchMap$com$motorola$camera$states$StateManager$CAMERA_STATE:[I

    invoke-virtual {p1}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 361
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recieved onExit for default state."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :pswitch_0
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 364
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;->onExit()V

    .line 365
    :cond_1
    return-void

    .line 346
    :pswitch_1
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIIdle;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIIdle;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 347
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 349
    :pswitch_2
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 350
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 352
    :pswitch_3
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 353
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 355
    :pswitch_4
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPostCapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPostCapture;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 356
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 358
    :pswitch_5
    new-instance v0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIClose;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIClose;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    .line 359
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 463
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCameraPhoneUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key down: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 501
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 466
    :sswitch_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v1}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    .line 467
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToolbarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->toggleOpen()Z

    move-result v1

    goto :goto_0

    .line 469
    :sswitch_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->isVolumeKeyZoom()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 470
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v2}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    .line 471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "direction"

    const-string v3, "out"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v2, Lcom/motorola/camera/Event;

    sget-object v3, Lcom/motorola/camera/Event$ACTION;->ZOOM:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v2/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0

    .line 477
    .end local v0           #bundle:Landroid/os/Bundle;
    :sswitch_2
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->isVolumeKeyZoom()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v2}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    .line 479
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 480
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v2, "direction"

    const-string v3, "in"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v2, Lcom/motorola/camera/Event;

    sget-object v3, Lcom/motorola/camera/Event$ACTION;->ZOOM:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v2/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0

    .line 485
    .end local v0           #bundle:Landroid/os/Bundle;
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 486
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v2}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    .line 487
    new-instance v2, Lcom/motorola/camera/Event;

    sget-object v3, Lcom/motorola/camera/Event$ACTION;->FOCUS:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v2, v3}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v2/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto/16 :goto_0

    .line 493
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v2}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    .line 495
    new-instance v2, Lcom/motorola/camera/Event;

    sget-object v3, Lcom/motorola/camera/Event$ACTION;->CAPTURE:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v2, v3}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v2/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto/16 :goto_0

    .line 464
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_4
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1b -> :sswitch_4
        0x42 -> :sswitch_4
        0x50 -> :sswitch_3
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 512
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraPhoneUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key up: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 526
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 515
    :sswitch_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToolbarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->onBackKeyPressed()Z

    move-result v0

    .line 516
    .local v0, toolbar:Z
    goto :goto_0

    .line 519
    .end local v0           #toolbar:Z
    :sswitch_1
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/BlurCheckin;->setVolumeKeyUsed()V

    .line 520
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->isVolumeKeyZoom()Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v1}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    .line 522
    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->CAPTURE:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v2/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 524
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 513
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOtherPopupShowed()Z
    .locals 1

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->isAnyPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->popupShown()V

    .line 804
    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->dismissAlertPopup()Z

    move-result v0

    return v0
.end method

.method public onPopupDismissRequested()Z
    .locals 1

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->dismissAlertPopup()Z

    move-result v0

    return v0
.end method

.method public onPopupDismissed()V
    .locals 1

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->isAnyPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->popupDismissed()V

    .line 813
    :cond_0
    return-void
.end method

.method public declared-synchronized onRotationChanged(II)V
    .locals 3
    .parameter "orientation"
    .parameter "displayRotation"

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mDeviceOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 372
    add-int/lit8 p1, p1, 0x5a

    .line 375
    :cond_0
    add-int v0, p1, p2

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    .line 376
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraPhoneUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received rotatation event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/v2/UIManager;->rotateUI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 732
    const/4 v1, 0x0

    .line 733
    .local v1, result:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 737
    .local v0, action:I
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v2}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/v2/PopupNotifier;->notifyShowPopup(Landroid/view/View;)Z

    move-result v1

    .line 739
    if-nez v1, :cond_0

    .line 740
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCameraView:Lcom/motorola/camera/ui/v2/uicomponents/CameraView;

    invoke-virtual {v2, p2}, Lcom/motorola/camera/ui/v2/uicomponents/CameraView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 742
    :cond_0
    return v1
.end method

.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 7
    .parameter "type"
    .parameter "bundle"

    .prologue
    .line 748
    sget-boolean v4, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCameraPhoneUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onNotification type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    sget-object v4, Lcom/motorola/camera/ui/v2/UIManager$2;->$SwitchMap$com$motorola$camera$Notifier$TYPE:[I

    invoke-virtual {p1}, Lcom/motorola/camera/Notifier$TYPE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 785
    .end local p2
    :goto_0
    return-void

    .restart local p2
    :pswitch_0
    move-object v1, p2

    .line 751
    check-cast v1, Landroid/os/Bundle;

    .line 752
    .local v1, data:Landroid/os/Bundle;
    const-string v4, "enabled"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 754
    .local v2, enabled:Z
    if-eqz v2, :cond_1

    .line 755
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    check-cast v4, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->disableVideoSnapshotUI()V

    .line 756
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UIManager;->mSnapshotBorder:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 758
    :cond_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/AppSettings;->isVideoSnapshotSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 759
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    check-cast v4, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->enableVideoSnapshotUI()V

    .line 761
    :cond_2
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UIManager;->mSnapshotBorder:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 765
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #enabled:Z
    :pswitch_1
    new-instance v0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v4}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v5

    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v6, 0x7f080015

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {v0, v5, v4}, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 766
    .local v0, builder:Lcom/motorola/camera/ui/v2/AlertPopup$Builder;
    check-cast p2, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;

    .end local p2
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->setAlertPopupData(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)Lcom/motorola/camera/ui/v2/AlertPopup$Builder;

    .line 767
    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->create()Lcom/motorola/camera/ui/v2/AlertPopup;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    .line 768
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    iget v5, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/v2/AlertPopup;->showPopup(I)V

    goto :goto_0

    .line 771
    .end local v0           #builder:Lcom/motorola/camera/ui/v2/AlertPopup$Builder;
    .restart local p2
    :pswitch_2
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v4}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/ui/v2/UIManager$1;

    invoke-direct {v5, p0, p2}, Lcom/motorola/camera/ui/v2/UIManager$1;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 780
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .local v3, settingsIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v4}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 749
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public orientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 859
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mPortraitView:Lcom/motorola/camera/ui/v2/RotateLayout;

    if-eqz v0, :cond_0

    .line 860
    iput p1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mDeviceOrientation:I

    .line 861
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mPortraitView:Lcom/motorola/camera/ui/v2/RotateLayout;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 863
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->updateView()V

    .line 865
    :cond_0
    return-void

    .line 861
    :cond_1
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method public rotateUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 382
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->isAnyPopupShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->fadeOut()V

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->fadeOut()V

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    iget v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-interface {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->rotate(I)V

    .line 389
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    iget v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-interface {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->rotate(I)V

    .line 390
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToolbarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    iget v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-interface {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->rotate(I)V

    .line 391
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAutoTimer:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    iget v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-interface {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->rotate(I)V

    .line 392
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/AlertPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/AlertPopup;->dismissPopup()V

    .line 395
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    iget v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/AlertPopup;->setOrientation(I)V

    .line 396
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAlertPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    iget v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/AlertPopup;->showPopup(I)V

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToast:Lcom/motorola/camera/ui/v2/RotateTextToast;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToast:Lcom/motorola/camera/ui/v2/RotateTextToast;

    iget v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/RotateTextToast;->setOrientation(I)V

    .line 401
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mPanProgressBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    iget v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-interface {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->rotate(I)V

    .line 402
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mPanSavingComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    iget v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    invoke-interface {v1, v2}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->rotate(I)V

    .line 404
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mHandler:Lcom/motorola/camera/ui/v2/UIManager$MainHandler;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->removeMessages(I)V

    .line 405
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 406
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 407
    iget v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mOrientation:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 408
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mHandler:Lcom/motorola/camera/ui/v2/UIManager$MainHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 409
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 117
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraPhoneUI"

    const-string v2, "ui starting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->UI_START:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 119
    :cond_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mSettings:Lcom/motorola/camera/AppSettings;

    .line 125
    iget-boolean v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInflated:Z

    if-nez v1, :cond_7

    .line 129
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f080013

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 130
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInflatedViewStub:Landroid/view/View;

    .line 131
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->updateView()V

    .line 132
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mPortraitView:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 134
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mDeviceOrientation:I

    .line 135
    iget v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mDeviceOrientation:I

    if-ne v1, v5, :cond_2

    .line 136
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mPortraitView:Lcom/motorola/camera/ui/v2/RotateLayout;

    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 138
    :cond_2
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/Capture;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f080016

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/v2/uicomponents/Capture;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 139
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f080021

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/UIManager;->mSettings:Lcom/motorola/camera/AppSettings;

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v3

    invoke-direct {v1, v2, p0, v3}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;Z)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 143
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f080018

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 146
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/v2/uicomponents/ZoomComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 149
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f080059

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/v2/uicomponents/ToolbarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToolbarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 153
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mToolbarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f080019

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/motorola/camera/ui/v2/uicomponents/InfoBar;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 156
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/CameraView;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f080011

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/v2/uicomponents/CameraView;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCameraView:Lcom/motorola/camera/ui/v2/uicomponents/CameraView;

    .line 159
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mCameraView:Lcom/motorola/camera/ui/v2/uicomponents/CameraView;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/v2/uicomponents/TimerComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAutoTimer:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 162
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mAutoTimer:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/FocusViewComponent;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f080012

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/v2/uicomponents/FocusViewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mFocusViewComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 165
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mFocusViewComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f080055

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/v2/uicomponents/StorageProgressBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mStorageProgressBarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 169
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mStorageProgressBarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f08003d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoProgressUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mPanProgressBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 173
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mPanProgressBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f080044

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/v2/uicomponents/PanoSavingUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/ui/v2/uicomponents/AbstractUIComponent$EventListener;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mPanSavingComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    .line 177
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mUIComponentInterfaceSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager;->mPanSavingComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v1}, Lcom/motorola/camera/Controller;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/v2/PopupNotifier;->setPopupListener(Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;)V

    .line 181
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager;->mSnapshotBorder:Landroid/widget/FrameLayout;

    .line 183
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCameraPhoneUI"

    const-string v2, "camera controls created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_3
    iput-boolean v5, p0, Lcom/motorola/camera/ui/v2/UIManager;->mInflated:Z

    .line 191
    .end local v0           #stub:Landroid/view/ViewStub;
    :goto_0
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->disableClick()V

    .line 193
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->disableForServiceMode()V

    .line 197
    :cond_4
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->registerForEvents()V

    .line 199
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->UI_START:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 200
    :cond_5
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCameraPhoneUI"

    const-string v2, "registered for events"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_6
    return-void

    .line 187
    :cond_7
    invoke-direct {p0}, Lcom/motorola/camera/ui/v2/UIManager;->restoreUI()V

    goto :goto_0
.end method

.method public windowHasFocus()V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->update()V

    .line 885
    return-void
.end method
