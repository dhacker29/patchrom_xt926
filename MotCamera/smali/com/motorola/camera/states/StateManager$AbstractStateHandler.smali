.class public Lcom/motorola/camera/states/StateManager$AbstractStateHandler;
.super Landroid/os/Handler;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/states/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AbstractStateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/states/StateManager;


# direct methods
.method protected constructor <init>(Lcom/motorola/camera/states/StateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/motorola/camera/states/StateManager$AbstractStateHandler;->this$0:Lcom/motorola/camera/states/StateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager$AbstractStateHandler;->this$0:Lcom/motorola/camera/states/StateManager;

    #getter for: Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;
    invoke-static {v0}, Lcom/motorola/camera/states/StateManager;->access$000(Lcom/motorola/camera/states/StateManager;)Lcom/motorola/camera/states/AbstractState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/states/AbstractState;->handleModesCallback(Landroid/os/Message;)V

    .line 130
    return-void
.end method
