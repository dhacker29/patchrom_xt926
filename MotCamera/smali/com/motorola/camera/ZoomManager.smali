.class public Lcom/motorola/camera/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomManager"

.field private static final ZOOM_STEP:I = 0x1

.field private static sZoomManager:Lcom/motorola/camera/ZoomManager;


# instance fields
.field private isSmooth:Z

.field private isZoomAllowed:Z

.field private isZoomSupported:Z

.field private isZooming:Z

.field private mCurrentZoomValue:Ljava/lang/Integer;

.field private mHardKeyZoom:Ljava/lang/Boolean;

.field private mListener:Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;

.field private mMaxZoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ZoomManager;->mCurrentZoomValue:Ljava/lang/Integer;

    .line 35
    iput v1, p0, Lcom/motorola/camera/ZoomManager;->mMaxZoomValue:I

    .line 36
    iput-boolean v1, p0, Lcom/motorola/camera/ZoomManager;->isZooming:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ZoomManager;->mListener:Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;

    .line 38
    iput-boolean v1, p0, Lcom/motorola/camera/ZoomManager;->isZoomSupported:Z

    .line 39
    iput-boolean v1, p0, Lcom/motorola/camera/ZoomManager;->isSmooth:Z

    .line 40
    iput-boolean v1, p0, Lcom/motorola/camera/ZoomManager;->isZoomAllowed:Z

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ZoomManager;->mHardKeyZoom:Ljava/lang/Boolean;

    .line 161
    return-void
.end method

.method private ZoomManager()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/ZoomManager;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/motorola/camera/ZoomManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/ZoomManager;->sZoomManager:Lcom/motorola/camera/ZoomManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/motorola/camera/ZoomManager;

    invoke-direct {v0}, Lcom/motorola/camera/ZoomManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/ZoomManager;->sZoomManager:Lcom/motorola/camera/ZoomManager;

    .line 47
    :cond_0
    sget-object v0, Lcom/motorola/camera/ZoomManager;->sZoomManager:Lcom/motorola/camera/ZoomManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getMaxZoomValue()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/motorola/camera/ZoomManager;->mMaxZoomValue:I

    return v0
.end method

.method public declared-synchronized getZoomValue()I
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ZoomManager;->mCurrentZoomValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/motorola/camera/ZoomManager;->isZoomSupported:Z

    return v0
.end method

.method public declared-synchronized onIdle()V
    .locals 1

    .prologue
    .line 154
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/ZoomManager;->isZoomAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onParametersChanged(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 176
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on params changed zoom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    if-eqz p1, :cond_3

    .line 178
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    .line 179
    .local v0, max:I
    iget-object v1, p0, Lcom/motorola/camera/ZoomManager;->mListener:Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/motorola/camera/ZoomManager;->mMaxZoomValue:I

    if-eq v1, v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/motorola/camera/ZoomManager;->mListener:Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;

    invoke-interface {v1, v0}, Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;->onReset(I)V

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ZoomManager;->mListener:Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ZoomManager;->mListener:Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;->onDeviceZoomChange(IZ)V

    .line 183
    :cond_2
    iput v0, p0, Lcom/motorola/camera/ZoomManager;->mMaxZoomValue:I

    .line 184
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ZoomManager;->mCurrentZoomValue:Ljava/lang/Integer;

    .line 185
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/ZoomManager;->isZoomSupported:Z

    .line 189
    .end local v0           #max:I
    :cond_3
    return-void
.end method

.method public declared-synchronized onPreCapture()V
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ZoomManager;->stopSmoothZoom()V

    .line 143
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/AppSettings;->getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->isStillCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ZoomManager;->isZoomAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/motorola/camera/ZoomManager;->isZoomAllowed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "zoomValue"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    const/4 v3, 0x0

    .line 54
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ZoomManager;->mListener:Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ZoomManager;->mListener:Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;

    iget-object v1, p0, Lcom/motorola/camera/ZoomManager;->mHardKeyZoom:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;->onDeviceZoomChange(IZ)V

    .line 58
    :cond_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/AppSettings;->setZoomValue(I)V

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ZoomManager;->mCurrentZoomValue:Ljava/lang/Integer;

    .line 62
    if-eqz p2, :cond_2

    .line 63
    iput-boolean v3, p0, Lcom/motorola/camera/ZoomManager;->isZooming:Z

    .line 64
    iget-object v1, p0, Lcom/motorola/camera/ZoomManager;->mHardKeyZoom:Ljava/lang/Boolean;

    monitor-enter v1

    .line 65
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ZoomManager;->mHardKeyZoom:Ljava/lang/Boolean;

    .line 66
    monitor-exit v1

    .line 68
    :cond_2
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ZoomManager;->mCurrentZoomValue:Ljava/lang/Integer;

    .line 173
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/motorola/camera/ZoomManager;->mListener:Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;

    .line 72
    return-void
.end method

.method public stopSmoothZoom()V
    .locals 2

    .prologue
    .line 130
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomManager"

    const-string v1, "stop smooth zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ZoomManager;->isZooming:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->stopSmoothZoom()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ZoomManager;->isZooming:Z

    .line 136
    :cond_1
    return-void
.end method

.method public zoom(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ZoomManager;->zoom(IZ)V

    .line 76
    return-void
.end method

.method public zoom(IZ)V
    .locals 3
    .parameter "zoomValue"
    .parameter "hardKeyZoom"

    .prologue
    .line 84
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ZoomManager;->mHardKeyZoom:Ljava/lang/Boolean;

    monitor-enter v1

    .line 86
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ZoomManager;->mHardKeyZoom:Ljava/lang/Boolean;

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-boolean v0, p0, Lcom/motorola/camera/ZoomManager;->isZoomAllowed:Z

    if-eqz v0, :cond_1

    if-gez p1, :cond_2

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 91
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/camera/ZoomManager;->isSmooth:Z

    if-eqz v0, :cond_4

    .line 92
    iget-boolean v0, p0, Lcom/motorola/camera/ZoomManager;->isZooming:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->stopSmoothZoom()V

    .line 94
    :cond_3
    iget v0, p0, Lcom/motorola/camera/ZoomManager;->mMaxZoomValue:I

    if-gt p1, v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/Device;->startSmoothZoom(I)V

    goto :goto_0

    .line 97
    :cond_4
    iget-boolean v0, p0, Lcom/motorola/camera/ZoomManager;->isZoomSupported:Z

    if-eqz v0, :cond_1

    .line 98
    iget v0, p0, Lcom/motorola/camera/ZoomManager;->mMaxZoomValue:I

    if-gt p1, v0, :cond_1

    .line 99
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/AppSettings;->setZoomValue(I)V

    .line 100
    iget-object v1, p0, Lcom/motorola/camera/ZoomManager;->mCurrentZoomValue:Ljava/lang/Integer;

    monitor-enter v1

    .line 101
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ZoomManager;->mCurrentZoomValue:Ljava/lang/Integer;

    .line 102
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 103
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/Device;->setParameters()V

    .line 104
    iget-object v0, p0, Lcom/motorola/camera/ZoomManager;->mListener:Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ZoomManager;->mListener:Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;

    iget-object v1, p0, Lcom/motorola/camera/ZoomManager;->mHardKeyZoom:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/motorola/camera/ZoomManager$OnZoomChangeListener;->onDeviceZoomChange(IZ)V

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ZoomManager;->mHardKeyZoom:Ljava/lang/Boolean;

    monitor-enter v1

    .line 107
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ZoomManager;->mHardKeyZoom:Ljava/lang/Boolean;

    .line 108
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 102
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public zoom(Z)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/motorola/camera/ZoomManager;->mCurrentZoomValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ZoomManager;->zoom(IZ)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ZoomManager;->mCurrentZoomValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ZoomManager;->zoom(IZ)V

    goto :goto_0
.end method
