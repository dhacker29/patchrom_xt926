.class Lcom/motorola/camera/ui/v2/UIManager$PhoneUIIdle;
.super Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneUIIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/UIManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;)V
    .locals 1
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIIdle;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/v2/UIManager$AbstractPhoneUI;-><init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;Lcom/motorola/camera/ui/v2/UIManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIIdle;-><init>(Lcom/motorola/camera/ui/v2/UIManager;)V

    return-void
.end method


# virtual methods
.method onEntry()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIIdle;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->enableClick()V
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$1800(Lcom/motorola/camera/ui/v2/UIManager;)V

    .line 599
    return-void
.end method

.method onExit()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$PhoneUIIdle;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->disableClick()V
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$900(Lcom/motorola/camera/ui/v2/UIManager;)V

    .line 604
    return-void
.end method
