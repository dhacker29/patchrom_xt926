.class Lcom/motorola/camera/ui/v2/widgets/ZoomControl$1;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/widgets/ZoomControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/widgets/ZoomControl;


# direct methods
.method constructor <init>(Lcom/motorola/camera/ui/v2/widgets/ZoomControl;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl$1;->this$0:Lcom/motorola/camera/ui/v2/widgets/ZoomControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl$1;->this$0:Lcom/motorola/camera/ui/v2/widgets/ZoomControl;

    iget-object v1, p0, Lcom/motorola/camera/ui/v2/widgets/ZoomControl$1;->this$0:Lcom/motorola/camera/ui/v2/widgets/ZoomControl;

    #getter for: Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->mState:I
    invoke-static {v1}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->access$000(Lcom/motorola/camera/ui/v2/widgets/ZoomControl;)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->performZoom(IZ)V
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/ui/v2/widgets/ZoomControl;->access$100(Lcom/motorola/camera/ui/v2/widgets/ZoomControl;IZ)V

    .line 84
    return-void
.end method
