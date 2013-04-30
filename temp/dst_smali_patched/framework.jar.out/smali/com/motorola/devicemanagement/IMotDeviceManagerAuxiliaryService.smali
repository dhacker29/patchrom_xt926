.class public interface abstract Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
.super Ljava/lang/Object;
.source "IMotDeviceManagerAuxiliaryService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService$Stub;
    }
.end annotation


# virtual methods
.method public abstract disableNfc()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
