.class Lcom/motorola/camera/ui/v3/UIManager$PhoneUICapture;
.super Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v3/UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneUICapture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v3/UIManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v3/UIManager;)V
    .locals 1
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUICapture;->this$0:Lcom/motorola/camera/ui/v3/UIManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUICapture;-><init>(Lcom/motorola/camera/ui/v3/UIManager;)V

    return-void
.end method


# virtual methods
.method onEntry()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method onExit()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method
