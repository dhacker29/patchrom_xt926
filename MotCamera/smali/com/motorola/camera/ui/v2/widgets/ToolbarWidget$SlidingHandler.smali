.class Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$SlidingHandler;
.super Landroid/os/Handler;
.source "ToolbarWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$SlidingHandler;->this$0:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1339
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$SlidingHandler;-><init>(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1341
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1346
    :goto_0
    return-void

    .line 1343
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$SlidingHandler;->this$0:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    #calls: Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->doAnimation()V
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->access$400(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;)V

    goto :goto_0

    .line 1341
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
