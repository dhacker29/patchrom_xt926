.class Lcom/motorola/camera/ui/v2/UIManager$1;
.super Ljava/lang/Object;
.source "UIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/v2/UIManager;->onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/UIManager;

.field final synthetic val$bundle:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/UIManager;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/UIManager$1;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    iput-object p2, p0, Lcom/motorola/camera/ui/v2/UIManager$1;->val$bundle:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$1;->val$bundle:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$1;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$1;->val$bundle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$2800(Lcom/motorola/camera/ui/v2/UIManager;Ljava/lang/String;)V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$1;->val$bundle:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/UIManager$1;->this$0:Lcom/motorola/camera/ui/v2/UIManager;

    iget-object v0, p0, Lcom/motorola/camera/ui/v2/UIManager$1;->val$bundle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/motorola/camera/ui/v2/UIManager;->showToast(I)V
    invoke-static {v1, v0}, Lcom/motorola/camera/ui/v2/UIManager;->access$2900(Lcom/motorola/camera/ui/v2/UIManager;I)V

    .line 775
    :cond_1
    return-void
.end method
