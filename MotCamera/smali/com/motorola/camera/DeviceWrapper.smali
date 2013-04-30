.class public Lcom/motorola/camera/DeviceWrapper;
.super Ljava/lang/Object;
.source "DeviceWrapper.java"


# static fields
.field private static sDevice:Lcom/motorola/camera/Device;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDevice()Lcom/motorola/camera/Device;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/motorola/camera/DeviceWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/DeviceWrapper;->sDevice:Lcom/motorola/camera/Device;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/motorola/camera/Device;

    invoke-direct {v0}, Lcom/motorola/camera/Device;-><init>()V

    sput-object v0, Lcom/motorola/camera/DeviceWrapper;->sDevice:Lcom/motorola/camera/Device;

    .line 42
    :cond_0
    sget-object v0, Lcom/motorola/camera/DeviceWrapper;->sDevice:Lcom/motorola/camera/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
