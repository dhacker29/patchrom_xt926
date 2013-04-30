.class public abstract Landroid/bluetooth/IBluetoothGattCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattCallback"

.field static final TRANSACTION_onGattActionComplete:I = 0x2

.field static final TRANSACTION_onGattAppConfigurationStatusChange:I = 0x1

.field static final TRANSACTION_onGattDiscoverCharacteristicRequest:I = 0x7

.field static final TRANSACTION_onGattDiscoverPrimaryServiceByUuidRequest:I = 0x4

.field static final TRANSACTION_onGattDiscoverPrimaryServiceRequest:I = 0x3

.field static final TRANSACTION_onGattFindIncludedServiceRequest:I = 0x5

.field static final TRANSACTION_onGattFindInfoRequest:I = 0x6

.field static final TRANSACTION_onGattIndicateResponse:I = 0xd

.field static final TRANSACTION_onGattReadByTypeRequest:I = 0x8

.field static final TRANSACTION_onGattReadRequest:I = 0x9

.field static final TRANSACTION_onGattSetClientConfigDescriptor:I = 0xc

.field static final TRANSACTION_onGattWriteCommand:I = 0xa

.field static final TRANSACTION_onGattWriteRequest:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v1, _arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattAppConfigurationStatusChange(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_1

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :sswitch_2
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattActionComplete(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_2

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :sswitch_3
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattDiscoverPrimaryServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_3

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :sswitch_4
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .local v4, _arg3:Landroid/os/ParcelUuid;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattDiscoverPrimaryServiceByUuidRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;IILandroid/os/ParcelUuid;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Landroid/os/ParcelUuid;
    .end local v5           #_arg4:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_4

    .restart local v2       #_arg1:I
    .restart local v3       #_arg2:I
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/os/ParcelUuid;
    goto :goto_5

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Landroid/os/ParcelUuid;
    :sswitch_5
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattFindIncludedServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_6

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :sswitch_6
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattFindInfoRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_7

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :sswitch_7
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattDiscoverCharacteristicRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_8

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :sswitch_8
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .local v2, _arg1:Landroid/os/ParcelUuid;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattReadByTypeRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IILjava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:I
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_a

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_9
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattReadRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;ILjava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_b

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :sswitch_a
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .local v3, _arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattWriteCommand(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_c

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :sswitch_b
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .restart local v3       #_arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg5:I
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattWriteRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    :cond_c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_d

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :sswitch_c
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .restart local v3       #_arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattSetClientConfigDescriptor(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:I
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_e

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :sswitch_d
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v2, v7

    .local v2, _arg1:Z
    :goto_10
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGattIndicateResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #_arg1:Z
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
