.class Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$DrawerToggler;
.super Ljava/lang/Object;
.source "ToolbarWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$DrawerToggler;->this$0:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1322
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$DrawerToggler;-><init>(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$DrawerToggler;->this$0:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    #getter for: Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mLocked:Z
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->access$200(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    :goto_0
    return-void

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$DrawerToggler;->this$0:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    #getter for: Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->mAnimateOnClick:Z
    invoke-static {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->access$300(Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$DrawerToggler;->this$0:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->animateToggle()V

    goto :goto_0

    .line 1334
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget$DrawerToggler;->this$0:Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/widgets/ToolbarWidget;->toggle()V

    goto :goto_0
.end method
