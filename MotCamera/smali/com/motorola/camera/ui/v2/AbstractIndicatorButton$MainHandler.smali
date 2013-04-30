.class Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$MainHandler;
.super Landroid/os/Handler;
.source "AbstractIndicatorButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$MainHandler;-><init>(Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 270
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 272
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton$MainHandler;->this$0:Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v2/AbstractIndicatorButton;->dismissAllPopup()Z

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
