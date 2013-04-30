.class Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;
.super Landroid/os/Handler;
.source "VzwLocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationCallbacksHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;


# direct methods
.method private constructor <init>(Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->this$1:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;Lcom/vzw/location/VzwLocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;-><init>(Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->this$1:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    #calls: Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->UpdateGpsStatus(Ljava/lang/Boolean;)V
    invoke-static {v1, v0}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->access$700(Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->this$1:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    iget-object v0, v0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->releaseWakeLock()V
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$800(Lcom/vzw/location/VzwLocationManagerService;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->this$1:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    iget-boolean v0, v0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mGpsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks$LocationCallbacksHandler;->this$1:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    iget-object v0, v0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    const/4 v1, 0x0

    #calls: Lcom/vzw/location/VzwLocationManagerService;->setGpsIconFixChange(Z)V
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocationManagerService;->access$900(Lcom/vzw/location/VzwLocationManagerService;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
