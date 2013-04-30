.class public Lcom/motorola/camera/modes/ShutterCallback;
.super Ljava/lang/Object;
.source "ShutterCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mMode:Lcom/motorola/camera/modes/AbstractMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/modes/AbstractMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "ShutterCallback"

    iput-object v0, p0, Lcom/motorola/camera/modes/ShutterCallback;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/motorola/camera/modes/ShutterCallback;->mMode:Lcom/motorola/camera/modes/AbstractMode;

    .line 26
    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 30
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 31
    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/modes/ShutterCallback;->TAG:Ljava/lang/String;

    const-string v1, "onShutterCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    return-void
.end method
