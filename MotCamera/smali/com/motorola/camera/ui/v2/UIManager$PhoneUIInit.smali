.class Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;
.super Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneUIInit"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/UIManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 1
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;-><init>(Lcom/motorola/camera/ui/v2/UIManager;)V

    return-void
.end method


# virtual methods
.method onEntry()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->restoreUI()V
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$800(Lcom/motorola/camera/ui/v2/UIManager;)V

    .line 566
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->disableClick()V
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$900(Lcom/motorola/camera/ui/v2/UIManager;)V

    .line 567
    return-void
.end method

.method onExit()V
    .locals 4

    .prologue
    .line 571
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraPhoneUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " PhoneUIInit: onExit() setting capture modes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mSettings:Lcom/motorola/camera/AppSettings;
    invoke-static {v3}, Lcom/motorola/camera/ui/v2/UIManager;->access$1000(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mSettings:Lcom/motorola/camera/AppSettings;
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$1000(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    .line 573
    .local v0, mode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureButton:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$1100(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 574
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mCaptureCluster:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$1200(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 575
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$1300(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 576
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mPanProgressBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$1400(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->setCaptureMode(Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V

    .line 578
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$1300(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->init()V

    .line 579
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$1500(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->show()V

    .line 580
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 581
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$1600(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/v2/uicomponents/Thumbnail;->registerListener()V

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$1700(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 584
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$1600(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->show()V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIInit;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mThumbnail:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$1600(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->remove()V

    goto :goto_0
.end method
