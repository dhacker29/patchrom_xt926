.class Lcom/motorola/camera/ui/v2/UIManager$MainHandler;
.super Landroid/os/Handler;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/UIManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;-><init>(Lcom/motorola/camera/ui/v2/UIManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 712
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 715
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1300(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->rotate(I)V

    .line 716
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1500(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->rotate(I)V

    .line 717
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mStorageProgressBarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$2300(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->rotate(I)V

    .line 718
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->moveRequiredElements(I)V
    invoke-static {v0, v1}, Lcom/motorola/camera/ui/v2/UIManager;->access$2600(Lcom/motorola/camera/ui/v2/UIManager;I)V

    .line 719
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->isAnyPopupShowing()Z
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$2700(Lcom/motorola/camera/ui/v2/UIManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1500(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mZoom:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1500(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->fadeIn()V

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1300(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mInfoBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1300(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->fadeIn()V

    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
