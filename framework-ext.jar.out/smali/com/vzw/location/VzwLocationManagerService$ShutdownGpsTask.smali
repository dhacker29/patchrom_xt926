.class Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;
.super Ljava/lang/Object;
.source "VzwLocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutdownGpsTask"
.end annotation


# instance fields
.field mTimer:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManagerService;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->mTimer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->mTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->mTimer:Ljava/lang/Runnable;

    .line 361
    :cond_0
    return-void
.end method

.method public start(Lcom/vzw/location/VzwLocationProviderProxy;J)V
    .locals 7
    .parameter "provider"
    .parameter "timeoutMs"

    .prologue
    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 337
    .local v2, startTime:J
    new-instance v0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;-><init>(Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;JJLcom/vzw/location/VzwLocationProviderProxy;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->mTimer:Ljava/lang/Runnable;

    .line 353
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->mTimer:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    return-void
.end method
