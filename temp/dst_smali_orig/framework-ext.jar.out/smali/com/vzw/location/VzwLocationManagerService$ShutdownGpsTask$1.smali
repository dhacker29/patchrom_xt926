.class Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;
.super Ljava/lang/Object;
.source "VzwLocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->start(Lcom/vzw/location/VzwLocationProviderProxy;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

.field final synthetic val$provider:Lcom/vzw/location/VzwLocationProviderProxy;

.field final synthetic val$startTime:J

.field final synthetic val$timeoutMs:J


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;JJLcom/vzw/location/VzwLocationProviderProxy;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->this$1:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    iput-wide p2, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->val$startTime:J

    iput-wide p4, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->val$timeoutMs:J

    iput-object p6, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->val$provider:Lcom/vzw/location/VzwLocationProviderProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->this$1:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    iget-object v0, v0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$200(Lcom/vzw/location/VzwLocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->this$1:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    iget-object v0, v0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->mTimer:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->this$1:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    iget-object v0, v0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLocationManagerCallbacks:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$400(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    move-result-object v0

    iget-boolean v0, v0, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;->mGpsRunning:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->val$startTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->val$timeoutMs:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->val$provider:Lcom/vzw/location/VzwLocationProviderProxy;

    invoke-virtual {v0}, Lcom/vzw/location/VzwLocationProviderProxy;->shutdown()V

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->this$1:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->mTimer:Ljava/lang/Runnable;

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->this$1:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    iget-object v0, v0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask$1;->this$1:Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;

    iget-object v2, v2, Lcom/vzw/location/VzwLocationManagerService$ShutdownGpsTask;->mTimer:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
