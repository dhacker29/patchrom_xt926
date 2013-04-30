.class Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;
.super Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneUICapture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/UIManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 1
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;-><init>(Lcom/motorola/camera/ui/v2/UIManager;)V

    return-void
.end method


# virtual methods
.method onEntry()V
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->removeUI()V
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$2100(Lcom/motorola/camera/ui/v2/UIManager;)V

    .line 635
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1700(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->PANORAMA:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v0, v1, :cond_1

    .line 637
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->hideAll()V
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1900(Lcom/motorola/camera/ui/v2/UIManager;)V

    .line 638
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1100(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->preCapture()V

    .line 639
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1100(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->enableClick()V

    .line 640
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mPanProgressBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1400(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->preCapture()V

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1700(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1100(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->preCapture()V

    .line 643
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1100(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->enableClick()V

    .line 644
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1500(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->enableClick()V

    .line 645
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1300(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->enableClick()V

    .line 647
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1200(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->showVideoSnapshotUI()V

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1200(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->showMuteUI()V

    .line 652
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1700(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMELAPSE:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v0, v1, :cond_3

    .line 653
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1200(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->disableMuteUI()V

    .line 658
    :goto_1
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->VIDEO_SNAP:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_0

    .line 655
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1200(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->enableMuteUI()V

    goto :goto_1
.end method

.method onExit()V
    .locals 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->disableClick()V
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$900(Lcom/motorola/camera/ui/v2/UIManager;)V

    .line 665
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1200(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->hideVideoSnapshotUI()V

    .line 666
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1200(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/uicomponents/CaptureCluster;->hideMuteUI()V

    .line 667
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mSnapshotBorder:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$2200(Lcom/motorola/camera/ui/v2/UIManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1100(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->postCapture()V

    .line 671
    invoke-static {}, Lcom/motorola/camera/Notifier;->getInstance()Lcom/motorola/camera/Notifier;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->VIDEO_SNAP:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 672
    return-void
.end method
