.class abstract Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
.super Ljava/lang/Object;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v3/UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractPhoneUI"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v3/UIManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v3/UIManager;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;->this$0:Lcom/motorola/camera/ui/v3/UIManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;-><init>(Lcom/motorola/camera/ui/v3/UIManager;)V

    return-void
.end method


# virtual methods
.method abstract onEntry()V
.end method

.method abstract onExit()V
.end method
