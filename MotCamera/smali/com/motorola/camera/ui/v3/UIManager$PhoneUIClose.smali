.class Lcom/motorola/camera/ui/v3/UIManager$PhoneUIClose;
.super Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v3/UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneUIClose"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v3/UIManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v3/UIManager;)V
    .locals 1
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIClose;->this$0:Lcom/motorola/camera/ui/v3/UIManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIClose;-><init>(Lcom/motorola/camera/ui/v3/UIManager;)V

    return-void
.end method


# virtual methods
.method onEntry()V
    .locals 3

    .prologue
    .line 380
    iget-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIClose;->this$0:Lcom/motorola/camera/ui/v3/UIManager;

    #getter for: Lcom/motorola/camera/ui/v3/UIManager;->mComponents:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/motorola/camera/ui/v3/UIManager;->access$700(Lcom/motorola/camera/ui/v3/UIManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;

    .line 381
    .local v0, comp:Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;
    invoke-interface {v0}, Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;->stop()V

    goto :goto_0

    .line 383
    .end local v0           #comp:Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIClose;->this$0:Lcom/motorola/camera/ui/v3/UIManager;

    #calls: Lcom/motorola/camera/ui/v3/UIManager;->deregisterForEvents()V
    invoke-static {v2}, Lcom/motorola/camera/ui/v3/UIManager;->access$800(Lcom/motorola/camera/ui/v3/UIManager;)V

    .line 384
    return-void
.end method

.method onExit()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method
