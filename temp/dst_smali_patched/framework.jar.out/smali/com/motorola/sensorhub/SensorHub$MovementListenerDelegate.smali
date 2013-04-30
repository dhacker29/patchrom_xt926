.class Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;
.super Lcom/motorola/sensorhub/ISensorHubMovementListener$Stub;
.source "SensorHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/sensorhub/SensorHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MovementListenerDelegate"
.end annotation


# static fields
.field private static final END_MOVEMENT_MSG:I = 0x2

.field private static final START_MOVEMENT_MSG:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

.field final synthetic this$0:Lcom/motorola/sensorhub/SensorHub;


# direct methods
.method public constructor <init>(Lcom/motorola/sensorhub/SensorHub;Lcom/motorola/sensorhub/SensorHub$MovementListener;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "listener"
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;->this$0:Lcom/motorola/sensorhub/SensorHub;

    invoke-direct {p0}, Lcom/motorola/sensorhub/ISensorHubMovementListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    new-instance v0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate$1;-><init>(Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;Landroid/os/Looper;Lcom/motorola/sensorhub/SensorHub;)V

    iput-object v0, p0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;)Lcom/motorola/sensorhub/SensorHub$MovementListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    return-object v0
.end method


# virtual methods
.method public onEndMovement()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartMovement()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
