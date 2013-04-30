.class public interface abstract Lcom/motorola/camera/Device$DeviceCBInterface;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceCBInterface"
.end annotation


# virtual methods
.method public abstract onDeviceConnected()V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onMediaRecorderStopped(Lcom/motorola/camera/CameraOperationException;J)V
.end method
