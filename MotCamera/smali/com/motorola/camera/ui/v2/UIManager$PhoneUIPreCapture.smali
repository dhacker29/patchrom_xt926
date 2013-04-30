.class Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;
.super Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneUIPreCapture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/UIManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 1
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;-><init>(Lcom/motorola/camera/ui/v2/UIManager;)V

    return-void
.end method


# virtual methods
.method onEntry()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1700(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v0, v1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->hideAll()V
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1900(Lcom/motorola/camera/ui/v2/UIManager;)V

    .line 616
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mAutoTimer:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$2000(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->show()V

    .line 618
    :cond_0
    return-void
.end method

.method onExit()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1700(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->TIMER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mAutoTimer:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$2000(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->hide()V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1700(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPreCapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1300(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->preCapture()V

    .line 624
    :cond_1
    return-void
.end method
