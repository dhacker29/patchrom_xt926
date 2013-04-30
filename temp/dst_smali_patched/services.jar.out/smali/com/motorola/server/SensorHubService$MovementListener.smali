.class final Lcom/motorola/server/SensorHubService$MovementListener;
.super Ljava/lang/Object;
.source "SensorHubService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/SensorHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MovementListener"
.end annotation


# instance fields
.field final mBinder:Landroid/os/IBinder;

.field final mEndDuration:I

.field final mId:I

.field final mStartDuration:I

.field final synthetic this$0:Lcom/motorola/server/SensorHubService;


# direct methods
.method constructor <init>(Lcom/motorola/server/SensorHubService;Landroid/os/IBinder;III)V
    .locals 0
    .parameter
    .parameter "binder"
    .parameter "id"
    .parameter "startDuration"
    .parameter "endDuration"

    .prologue
    iput-object p1, p0, Lcom/motorola/server/SensorHubService$MovementListener;->this$0:Lcom/motorola/server/SensorHubService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/server/SensorHubService$MovementListener;->mBinder:Landroid/os/IBinder;

    iput p3, p0, Lcom/motorola/server/SensorHubService$MovementListener;->mId:I

    iput p4, p0, Lcom/motorola/server/SensorHubService$MovementListener;->mStartDuration:I

    iput p5, p0, Lcom/motorola/server/SensorHubService$MovementListener;->mEndDuration:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/motorola/server/SensorHubService$MovementListener;->this$0:Lcom/motorola/server/SensorHubService;

    #getter for: Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/server/SensorHubService;->access$000(Lcom/motorola/server/SensorHubService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/server/SensorHubService$MovementListener;->this$0:Lcom/motorola/server/SensorHubService;

    iget-object v2, p0, Lcom/motorola/server/SensorHubService$MovementListener;->mBinder:Landroid/os/IBinder;

    iget v3, p0, Lcom/motorola/server/SensorHubService$MovementListener;->mId:I

    #calls: Lcom/motorola/server/SensorHubService;->disableMovementInternalLocked(Landroid/os/IBinder;I)V
    invoke-static {v0, v2, v3}, Lcom/motorola/server/SensorHubService;->access$100(Lcom/motorola/server/SensorHubService;Landroid/os/IBinder;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onEndMovement()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/SensorHubService$MovementListener;->mBinder:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/motorola/sensorhub/ISensorHubMovementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/sensorhub/ISensorHubMovementListener;

    move-result-object v0

    .local v0, asInterface:Lcom/motorola/sensorhub/ISensorHubMovementListener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/sensorhub/ISensorHubMovementListener;->onEndMovement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #asInterface:Lcom/motorola/sensorhub/ISensorHubMovementListener;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onStartMovement()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/SensorHubService$MovementListener;->mBinder:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/motorola/sensorhub/ISensorHubMovementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/sensorhub/ISensorHubMovementListener;

    move-result-object v0

    .local v0, asInterface:Lcom/motorola/sensorhub/ISensorHubMovementListener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/sensorhub/ISensorHubMovementListener;->onStartMovement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #asInterface:Lcom/motorola/sensorhub/ISensorHubMovementListener;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
