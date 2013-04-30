.class Lcom/android/internal/policy/impl/LockScreen$DimHandler;
.super Landroid/os/Handler;
.source "LockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/policy/impl/LockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen$DimHandler;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreen;->invalidate()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/LockScreen;->mShouldDim:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$2402(Lcom/android/internal/policy/impl/LockScreen;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    const/16 v1, 0x99

    #setter for: Lcom/android/internal/policy/impl/LockScreen;->mCurrentBgAlpha:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$2502(Lcom/android/internal/policy/impl/LockScreen;I)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->resumeBackgroundColor()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$2300(Lcom/android/internal/policy/impl/LockScreen;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/LockScreen;->mShouldDim:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$2402(Lcom/android/internal/policy/impl/LockScreen;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
