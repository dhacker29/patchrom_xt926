.class public abstract Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService$Stub;
.super Landroid/os/Binder;
.source "IMotDeviceManagerAuxiliaryService.java"

# interfaces
.implements Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.devicemanagement.IMotDeviceManagerAuxiliaryService"

.field static final TRANSACTION_disableNfc:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.motorola.devicemanagement.IMotDeviceManagerAuxiliaryService"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.motorola.devicemanagement.IMotDeviceManagerAuxiliaryService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 49
    :sswitch_0
    const-string v1, "com.motorola.devicemanagement.IMotDeviceManagerAuxiliaryService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v1, "com.motorola.devicemanagement.IMotDeviceManagerAuxiliaryService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService$Stub;->disableNfc()Z

    move-result v0

    .line 56
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
