.class Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPostCapture;
.super Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneUIPostCapture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/UIManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 1
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPostCapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPostCapture;-><init>(Lcom/motorola/camera/ui/v2/UIManager;)V

    return-void
.end method


# virtual methods
.method onEntry()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPostCapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mPanProgressBar:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1400(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->postCapture()V

    .line 683
    return-void
.end method

.method onExit()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIPostCapture;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #getter for: Lcom/motorola/camera/ui/v2/UIManager;->mStorageProgressBarComponent:Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$2300(Lcom/motorola/camera/ui/v2/UIManager;)Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/v2/uicomponents/UIComponentInterface;->remove()V

    .line 688
    return-void
.end method
