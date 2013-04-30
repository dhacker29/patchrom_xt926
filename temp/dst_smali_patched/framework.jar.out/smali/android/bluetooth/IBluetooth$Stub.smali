.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_addRfcommServiceRecord:I = 0x35

.field static final TRANSACTION_addSdpHidControl:I = 0x42

.field static final TRANSACTION_allowIncomingProfileConnect:I = 0x37

.field static final TRANSACTION_cancelBondProcess:I = 0x1a

.field static final TRANSACTION_cancelDiscovery:I = 0x12

.field static final TRANSACTION_cancelPairingUserInput:I = 0x31

.field static final TRANSACTION_changeApplicationBluetoothState:I = 0x17

.field static final TRANSACTION_closeGattLeConnection:I = 0x69

.field static final TRANSACTION_closeRemoteGattService:I = 0x66

.field static final TRANSACTION_connectChannelToSink:I = 0x4e

.field static final TRANSACTION_connectChannelToSource:I = 0x4d

.field static final TRANSACTION_connectHeadset:I = 0x38

.field static final TRANSACTION_connectInputDevice:I = 0x3b

.field static final TRANSACTION_connectPanDevice:I = 0x49

.field static final TRANSACTION_createBond:I = 0x18

.field static final TRANSACTION_createBondOutOfBand:I = 0x19

.field static final TRANSACTION_delSdpHidControl:I = 0x43

.field static final TRANSACTION_deregisterCharacteristicsWatcher:I = 0x64

.field static final TRANSACTION_deregisterEl2capConnection:I = 0x56

.field static final TRANSACTION_disable:I = 0x7

.field static final TRANSACTION_disableDUN:I = 0x76

.field static final TRANSACTION_disconnectChannel:I = 0x4f

.field static final TRANSACTION_disconnectDUN:I = 0x75

.field static final TRANSACTION_disconnectHeadset:I = 0x39

.field static final TRANSACTION_disconnectInputDevice:I = 0x3c

.field static final TRANSACTION_disconnectPanDevice:I = 0x4a

.field static final TRANSACTION_disconnectSap:I = 0x73

.field static final TRANSACTION_discoverCharacteristicResponse:I = 0x6e

.field static final TRANSACTION_discoverCharacteristics:I = 0x5e

.field static final TRANSACTION_discoverPrimaryByUuidResponse:I = 0x6c

.field static final TRANSACTION_discoverPrimaryResponse:I = 0x6b

.field static final TRANSACTION_enable:I = 0x5

.field static final TRANSACTION_enableDUN:I = 0x77

.field static final TRANSACTION_enableNoAutoConnect:I = 0x6

.field static final TRANSACTION_fetchRemoteUuids:I = 0x29

.field static final TRANSACTION_findIncludedResponse:I = 0x6d

.field static final TRANSACTION_findInfoResponse:I = 0x6f

.field static final TRANSACTION_gattConnect:I = 0x5b

.field static final TRANSACTION_gattConnectCancel:I = 0x5c

.field static final TRANSACTION_getAdapterConnectionState:I = 0x15

.field static final TRANSACTION_getAddress:I = 0x8

.field static final TRANSACTION_getBluetoothState:I = 0x4

.field static final TRANSACTION_getBondState:I = 0x1d

.field static final TRANSACTION_getCOD:I = 0xa

.field static final TRANSACTION_getCharacteristicProperties:I = 0x60

.field static final TRANSACTION_getConnectedHealthDevices:I = 0x51

.field static final TRANSACTION_getConnectedInputDevices:I = 0x3d

.field static final TRANSACTION_getConnectedPanDevices:I = 0x47

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xf

.field static final TRANSACTION_getEffectiveAmpPolicy:I = 0x57

.field static final TRANSACTION_getGattServiceName:I = 0x5d

.field static final TRANSACTION_getGattServiceProperty:I = 0x5f

.field static final TRANSACTION_getGattServices:I = 0x5a

.field static final TRANSACTION_getHealthDeviceConnectionState:I = 0x53

.field static final TRANSACTION_getHealthDevicesMatchingConnectionStates:I = 0x52

.field static final TRANSACTION_getInputDeviceConnectionState:I = 0x3f

.field static final TRANSACTION_getInputDevicePriority:I = 0x41

.field static final TRANSACTION_getInputDevicesMatchingConnectionStates:I = 0x3e

.field static final TRANSACTION_getMainChannelFd:I = 0x50

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPanDeviceConnectionState:I = 0x46

.field static final TRANSACTION_getPanDevicesMatchingConnectionStates:I = 0x48

.field static final TRANSACTION_getProfileConnectionState:I = 0x16

.field static final TRANSACTION_getRemoteAlias:I = 0x25

.field static final TRANSACTION_getRemoteClass:I = 0x27

.field static final TRANSACTION_getRemoteDeviceId:I = 0x78

.field static final TRANSACTION_getRemoteDeviceType:I = 0x79

.field static final TRANSACTION_getRemoteFeature:I = 0x2c

.field static final TRANSACTION_getRemoteL2capPsm:I = 0x2b

.field static final TRANSACTION_getRemoteName:I = 0x24

.field static final TRANSACTION_getRemoteServiceChannel:I = 0x2a

.field static final TRANSACTION_getRemoteUuids:I = 0x28

.field static final TRANSACTION_getScanMode:I = 0xd

.field static final TRANSACTION_getTrustState:I = 0x33

.field static final TRANSACTION_getUuids:I = 0xc

.field static final TRANSACTION_isBluetoothDock:I = 0x34

.field static final TRANSACTION_isDiscovering:I = 0x13

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isHostPatchRequired:I = 0x74

.field static final TRANSACTION_isServiceRegistered:I = 0x2

.field static final TRANSACTION_isTetheringOn:I = 0x44

.field static final TRANSACTION_listBonds:I = 0x1c

.field static final TRANSACTION_notifyIncomingConnection:I = 0x3a

.field static final TRANSACTION_readByTypeResponse:I = 0x70

.field static final TRANSACTION_readOutOfBandData:I = 0x14

.field static final TRANSACTION_readResponse:I = 0x71

.field static final TRANSACTION_registerAppConfiguration:I = 0x4b

.field static final TRANSACTION_registerCharacteristicsWatcher:I = 0x62

.field static final TRANSACTION_registerEl2capConnection:I = 0x55

.field static final TRANSACTION_registerGattAppConfiguration:I = 0x67

.field static final TRANSACTION_registerRssiUpdateWatcher:I = 0x20

.field static final TRANSACTION_registerService:I = 0x3

.field static final TRANSACTION_removeBond:I = 0x1b

.field static final TRANSACTION_removeServiceRecord:I = 0x36

.field static final TRANSACTION_sendConnectionStateChange:I = 0x54

.field static final TRANSACTION_sendIndication:I = 0x6a

.field static final TRANSACTION_setBluetoothClass:I = 0x1f

.field static final TRANSACTION_setBluetoothTethering:I = 0x45

.field static final TRANSACTION_setCharacteristicProperty:I = 0x61

.field static final TRANSACTION_setDesiredAmpPolicy:I = 0x58

.field static final TRANSACTION_setDeviceOutOfBandData:I = 0x1e

.field static final TRANSACTION_setDiscoverableTimeout:I = 0x10

.field static final TRANSACTION_setInputDevicePriority:I = 0x40

.field static final TRANSACTION_setLEConnectionParams:I = 0x22

.field static final TRANSACTION_setName:I = 0xb

.field static final TRANSACTION_setPairingConfirmation:I = 0x2f

.field static final TRANSACTION_setPasskey:I = 0x2e

.field static final TRANSACTION_setPin:I = 0x2d

.field static final TRANSACTION_setRemoteAlias:I = 0x26

.field static final TRANSACTION_setRemoteOutOfBandData:I = 0x30

.field static final TRANSACTION_setScanMode:I = 0xe

.field static final TRANSACTION_setTrust:I = 0x32

.field static final TRANSACTION_setUseWifiForBtTransfers:I = 0x59

.field static final TRANSACTION_startDiscovery:I = 0x11

.field static final TRANSACTION_startRemoteGattService:I = 0x65

.field static final TRANSACTION_unregisterAppConfiguration:I = 0x4c

.field static final TRANSACTION_unregisterGattAppConfiguration:I = 0x68

.field static final TRANSACTION_unregisterRssiUpdateWatcher:I = 0x21

.field static final TRANSACTION_updateCharacteristicValue:I = 0x63

.field static final TRANSACTION_updateLEConnectionParams:I = 0x23

.field static final TRANSACTION_writeResponse:I = 0x72


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetooth;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .end local v16           #_result:Z
    :sswitch_2
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .local v3, _arg0:Landroid/os/ParcelUuid;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->isServiceRegistered(Landroid/os/ParcelUuid;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto :goto_0

    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_2

    .restart local v16       #_result:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :sswitch_3
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .restart local v3       #_arg0:Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    .local v4, _arg1:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerService(Landroid/os/ParcelUuid;Z)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_4
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothState()I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v16           #_result:I
    :sswitch_5
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .end local v16           #_result:Z
    :sswitch_6
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enableNoAutoConnect()Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .end local v16           #_result:Z
    :sswitch_7
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    .local v3, _arg0:Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disable(Z)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .restart local v3       #_arg0:Z
    .restart local v16       #_result:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :sswitch_8
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v16

    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v16           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v16           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getCOD()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v16           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v16

    .local v16, _result:[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v16           #_result:[Landroid/os/ParcelUuid;
    :sswitch_d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v16           #_result:I
    :sswitch_e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v16           #_result:I
    :sswitch_10
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .end local v3           #_arg0:I
    .end local v16           #_result:Z
    :sswitch_11
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .end local v16           #_result:Z
    :sswitch_12
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .end local v16           #_result:Z
    :sswitch_13
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_f

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .end local v16           #_result:Z
    :sswitch_14
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->readOutOfBandData()[B

    move-result-object v16

    .local v16, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v16           #_result:[B
    :sswitch_15
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v16           #_result:I
    :sswitch_16
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:I
    .end local v16           #_result:I
    :sswitch_17
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v3, 0x1

    .local v3, _arg0:Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v4

    .local v4, _arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .local v5, _arg2:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_11

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Z
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v5           #_arg2:Landroid/os/IBinder;
    .end local v16           #_result:Z
    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    .restart local v3       #_arg0:Z
    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .restart local v5       #_arg2:Landroid/os/IBinder;
    .restart local v16       #_result:Z
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .end local v3           #_arg0:Z
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v5           #_arg2:Landroid/os/IBinder;
    .end local v16           #_result:Z
    :sswitch_18
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_19
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .local v4, _arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, _arg2:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Ljava/lang/String;[B[B)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_13

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:[B
    .end local v5           #_arg2:[B
    .end local v16           #_result:Z
    :sswitch_1a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_1b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_15

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_1c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->listBonds()[Ljava/lang/String;

    move-result-object v16

    .local v16, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v16           #_result:[Ljava/lang/String;
    :sswitch_1d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Ljava/lang/String;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:I
    :sswitch_1e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .restart local v4       #_arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg2:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_16

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:[B
    .end local v5           #_arg2:[B
    .end local v16           #_result:Z
    :sswitch_1f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setBluetoothClass(Ljava/lang/String;I)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_17

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_20
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v6, 0x1

    .local v6, _arg3:Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->registerRssiUpdateWatcher(Ljava/lang/String;IIZ)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_19

    const/4 v2, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v6           #_arg3:Z
    .end local v16           #_result:Z
    :cond_18
    const/4 v6, 0x0

    goto :goto_19

    .restart local v6       #_arg3:Z
    .restart local v16       #_result:Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Z
    .end local v16           #_result:Z
    :sswitch_21
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->unregisterRssiUpdateWatcher(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1a

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v2, 0x0

    goto :goto_1b

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_22
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .local v4, _arg1:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .local v5, _arg2:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, _arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, _arg10:I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v13}, Landroid/bluetooth/IBluetooth$Stub;->setLEConnectionParams(Ljava/lang/String;BBIIIIIIII)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1b

    const/4 v2, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1c

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:B
    .end local v5           #_arg2:B
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    .end local v11           #_arg8:I
    .end local v12           #_arg9:I
    .end local v13           #_arg10:I
    .end local v16           #_result:Z
    :sswitch_23
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .restart local v4       #_arg1:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetooth$Stub;->updateLEConnectionParams(Ljava/lang/String;BIIII)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1c

    const/4 v2, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:B
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :sswitch_24
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_25
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_26
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1d

    const/4 v2, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1e

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_27
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Ljava/lang/String;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:I
    :sswitch_28
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v16

    .local v16, _result:[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:[Landroid/os/ParcelUuid;
    :sswitch_29
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v5

    .local v5, _arg2:Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1f

    const/4 v2, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v16           #_result:Z
    :cond_1e
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_1f

    .restart local v5       #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .restart local v16       #_result:Z
    :cond_1f
    const/4 v2, 0x0

    goto :goto_20

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v16           #_result:Z
    :sswitch_2a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:I
    :cond_20
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_21

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_2b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteL2capPsm(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:I
    :cond_21
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_22

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_2c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .local v4, _arg1:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Ljava/lang/String;[B)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_22

    const/4 v2, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_22
    const/4 v2, 0x0

    goto :goto_23

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:[B
    .end local v16           #_result:Z
    :sswitch_2e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Ljava/lang/String;I)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_23

    const/4 v2, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_23
    const/4 v2, 0x0

    goto :goto_24

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_2f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    const/4 v4, 0x1

    .local v4, _arg1:Z
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Ljava/lang/String;Z)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_25

    const/4 v2, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_24
    const/4 v4, 0x0

    goto :goto_25

    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_25
    const/4 v2, 0x0

    goto :goto_26

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_30
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteOutOfBandData(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_26

    const/4 v2, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_26
    const/4 v2, 0x0

    goto :goto_27

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_31
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_27

    const/4 v2, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_27
    const/4 v2, 0x0

    goto :goto_28

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_32
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    const/4 v4, 0x1

    .restart local v4       #_arg1:Z
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setTrust(Ljava/lang/String;Z)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_29

    const/4 v2, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_28
    const/4 v4, 0x0

    goto :goto_29

    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_29
    const/4 v2, 0x0

    goto :goto_2a

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_33
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getTrustState(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_2a

    const/4 v2, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_2a
    const/4 v2, 0x0

    goto :goto_2b

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_34
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_2b

    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2c

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_35
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .local v6, _arg3:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Landroid/os/IBinder;
    .end local v16           #_result:I
    :cond_2c
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_2d

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_36
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->removeServiceRecord(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:I
    :sswitch_37
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v4, 0x1

    .local v4, _arg1:Z
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_2f

    const/4 v2, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_2d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_2e

    :cond_2e
    const/4 v4, 0x0

    goto :goto_2f

    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_2f
    const/4 v2, 0x0

    goto :goto_30

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_38
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->connectHeadset(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_30

    const/4 v2, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_30
    const/4 v2, 0x0

    goto :goto_31

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_39
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disconnectHeadset(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_31

    const/4 v2, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_3a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    const/4 v4, 0x1

    .restart local v4       #_arg1:Z
    :goto_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->notifyIncomingConnection(Ljava/lang/String;Z)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_33

    const/4 v2, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_32
    const/4 v4, 0x0

    goto :goto_33

    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_33
    const/4 v2, 0x0

    goto :goto_34

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_3b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_35

    const/4 v2, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_34
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_35

    .restart local v16       #_result:Z
    :cond_35
    const/4 v2, 0x0

    goto :goto_36

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_3c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_36

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_37

    const/4 v2, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_36
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_37

    .restart local v16       #_result:Z
    :cond_37
    const/4 v2, 0x0

    goto :goto_38

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_3d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v17

    .local v17, _result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .local v3, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v17

    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:[I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_39
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_38
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_39

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_40
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_3a

    const/4 v2, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :cond_39
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3a

    .restart local v4       #_arg1:I
    .restart local v16       #_result:Z
    :cond_3a
    const/4 v2, 0x0

    goto :goto_3b

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_41
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_3b
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3c

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_42
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->addSdpHidControl()Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_3c

    const/4 v2, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_3c
    const/4 v2, 0x0

    goto :goto_3d

    .end local v16           #_result:Z
    :sswitch_43
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->delSdpHidControl()Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_3d

    const/4 v2, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_3d
    const/4 v2, 0x0

    goto :goto_3e

    .end local v16           #_result:Z
    :sswitch_44
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isTetheringOn()Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_3e

    const/4 v2, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_3e
    const/4 v2, 0x0

    goto :goto_3f

    .end local v16           #_result:Z
    :sswitch_45
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v3, 0x1

    .local v3, _arg0:Z
    :goto_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setBluetoothTethering(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Z
    :cond_3f
    const/4 v3, 0x0

    goto :goto_40

    :sswitch_46
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_40
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_41

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_47
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v17

    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_48
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .local v3, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getPanDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v17

    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:[I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_49
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_41

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_42
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_42

    const/4 v2, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_41
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_42

    .restart local v16       #_result:Z
    :cond_42
    const/4 v2, 0x0

    goto :goto_43

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_4a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_43

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_44
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_44

    const/4 v2, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_43
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_44

    .restart local v16       #_result:Z
    :cond_44
    const/4 v2, 0x0

    goto :goto_45

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_4b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .local v3, _arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v4

    .local v4, _arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_46

    const/4 v2, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    .end local v16           #_result:Z
    :cond_45
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_46

    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    .restart local v16       #_result:Z
    :cond_46
    const/4 v2, 0x0

    goto :goto_47

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    .end local v16           #_result:Z
    :sswitch_4c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47

    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_48
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_48

    const/4 v2, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :cond_47
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_48

    .restart local v16       #_result:Z
    :cond_48
    const/4 v2, 0x0

    goto :goto_49

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :sswitch_4d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_49

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a

    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .local v4, _arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_4b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_4b

    const/4 v2, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :cond_49
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_4a

    :cond_4a
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_4b

    .restart local v16       #_result:Z
    :cond_4b
    const/4 v2, 0x0

    goto :goto_4c

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :sswitch_4e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4c

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4d

    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_4e

    const/4 v2, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :cond_4c
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_4d

    :cond_4d
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_4e

    .restart local v5       #_arg2:I
    .restart local v16       #_result:Z
    :cond_4e
    const/4 v2, 0x0

    goto :goto_4f

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :sswitch_4f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4f

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_50

    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_51

    const/4 v2, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :cond_4f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_50

    :cond_50
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_51

    .restart local v5       #_arg2:I
    .restart local v16       #_result:Z
    :cond_51
    const/4 v2, 0x0

    goto :goto_52

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :sswitch_50
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_52

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_53

    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_54
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .local v16, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_54

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_55
    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_52
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_53

    :cond_53
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_54

    .restart local v16       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_54
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_51
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v17

    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_52
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .local v3, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v17

    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:[I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_53
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_55

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_56
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_55
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_56

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_54
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_56

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    :cond_56
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_57

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_55
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v3

    .local v3, _arg0:Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerEl2capConnection(Landroid/bluetooth/IBluetoothCallback;I)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/IBluetoothCallback;
    .end local v4           #_arg1:I
    .end local v16           #_result:I
    :sswitch_56
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->deregisterEl2capConnection(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:I
    :sswitch_57
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getEffectiveAmpPolicy(I)I

    move-result v16

    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:I
    .end local v16           #_result:I
    :sswitch_58
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setDesiredAmpPolicy(II)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_57

    const/4 v2, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_57
    const/4 v2, 0x0

    goto :goto_58

    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_59
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_58

    const/4 v3, 0x1

    .local v3, _arg0:Z
    :goto_59
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setUseWifiForBtTransfers(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Z
    :cond_58
    const/4 v3, 0x0

    goto :goto_59

    :sswitch_5a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_5a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getGattServices(Ljava/lang/String;Landroid/os/ParcelUuid;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_5a

    const/4 v2, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :cond_59
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_5a

    .restart local v16       #_result:Z
    :cond_5a
    const/4 v2, 0x0

    goto :goto_5b

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :sswitch_5b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .local v5, _arg2:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .local v6, _arg3:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #_arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12       #_arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13       #_arg10:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, _arg11:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, _arg12:I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v15}, Landroid/bluetooth/IBluetooth$Stub;->gattConnect(Ljava/lang/String;Ljava/lang/String;BBIIIIIIIII)I

    move-result v16

    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:B
    .end local v6           #_arg3:B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    .end local v11           #_arg8:I
    .end local v12           #_arg9:I
    .end local v13           #_arg10:I
    .end local v14           #_arg11:I
    .end local v15           #_arg12:I
    .end local v16           #_result:I
    :sswitch_5c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->gattConnectCancel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_5b

    const/4 v2, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5b
    const/4 v2, 0x0

    goto :goto_5c

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_5d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getGattServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_5e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->discoverCharacteristics(Ljava/lang/String;)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_5c

    const/4 v2, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5c
    const/4 v2, 0x0

    goto :goto_5d

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_5f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getGattServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_60
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getCharacteristicProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .local v16, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:[Ljava/lang/String;
    :sswitch_61
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5d

    const/4 v6, 0x1

    .local v6, _arg3:Z
    :goto_5e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->setCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;[BZ)Z

    move-result v16

    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_5e

    const/4 v2, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v6           #_arg3:Z
    .end local v16           #_result:Z
    :cond_5d
    const/4 v6, 0x0

    goto :goto_5e

    .restart local v6       #_arg3:Z
    .restart local v16       #_result:Z
    :cond_5e
    const/4 v2, 0x0

    goto :goto_5f

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:Z
    .end local v16           #_result:Z
    :sswitch_62
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattService;

    move-result-object v4

    .local v4, _arg1:Landroid/bluetooth/IBluetoothGattService;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerCharacteristicsWatcher(Ljava/lang/String;Landroid/bluetooth/IBluetoothGattService;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_5f

    const/4 v2, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5f
    const/4 v2, 0x0

    goto :goto_60

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattService;
    .end local v16           #_result:Z
    :sswitch_63
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->updateCharacteristicValue(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_60

    const/4 v2, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_60
    const/4 v2, 0x0

    goto :goto_61

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_64
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->deregisterCharacteristicsWatcher(Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_61

    const/4 v2, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_61
    const/4 v2, 0x0

    goto :goto_62

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_65
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattService;

    move-result-object v4

    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothGattService;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->startRemoteGattService(Ljava/lang/String;Landroid/bluetooth/IBluetoothGattService;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_62

    const/4 v2, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_62
    const/4 v2, 0x0

    goto :goto_63

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattService;
    .end local v16           #_result:Z
    :sswitch_66
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->closeRemoteGattService(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_67
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_63

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .local v3, _arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v4

    .local v4, _arg1:Landroid/bluetooth/IBluetoothGattCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerGattAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/bluetooth/IBluetoothGattCallback;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_64

    const/4 v2, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v16           #_result:Z
    :cond_63
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_64

    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v16       #_result:Z
    :cond_64
    const/4 v2, 0x0

    goto :goto_65

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v16           #_result:Z
    :sswitch_68
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_65

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_66
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->unregisterGattAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_66

    const/4 v2, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v16           #_result:Z
    :cond_65
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_66

    .restart local v16       #_result:Z
    :cond_66
    const/4 v2, 0x0

    goto :goto_67

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v16           #_result:Z
    :sswitch_69
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_67

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->closeGattLeConnection(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_68

    const/4 v2, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :cond_67
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_68

    .restart local v4       #_arg1:Ljava/lang/String;
    .restart local v16       #_result:Z
    :cond_68
    const/4 v2, 0x0

    goto :goto_69

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_6a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_69

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6a

    const/4 v6, 0x1

    .restart local v6       #_arg3:Z
    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->sendIndication(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BZI)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_6b

    const/4 v2, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:Z
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_69
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_6a

    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:[B
    :cond_6a
    const/4 v6, 0x0

    goto :goto_6b

    .restart local v6       #_arg3:Z
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_6b
    const/4 v2, 0x0

    goto :goto_6c

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:Z
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_6b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6c

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetooth$Stub;->discoverPrimaryResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IIII)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_6e

    const/4 v2, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :cond_6c
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_6d

    :cond_6d
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_6e

    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v16       #_result:Z
    :cond_6e
    const/4 v2, 0x0

    goto :goto_6f

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :sswitch_6c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6f

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->discoverPrimaryByUuidResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIII)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_70

    const/4 v2, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_6f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_70

    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_70
    const/4 v2, 0x0

    goto :goto_71

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_6d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_71

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_72

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg6:I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/IBluetooth$Stub;->findIncludedResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IIIII)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_73

    const/4 v2, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :cond_71
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_72

    :cond_72
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_73

    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v9       #_arg6:I
    .restart local v16       #_result:Z
    :cond_73
    const/4 v2, 0x0

    goto :goto_74

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :sswitch_6e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_74

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_75

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .local v6, _arg3:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg6:I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/IBluetooth$Stub;->discoverCharacteristicResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IBIII)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_76

    const/4 v2, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :cond_74
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_75

    :cond_75
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_76

    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:B
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v9       #_arg6:I
    .restart local v16       #_result:Z
    :cond_76
    const/4 v2, 0x0

    goto :goto_77

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :sswitch_6f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_77

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_78

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->findInfoResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;III)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_79

    const/4 v2, 0x1

    :goto_7a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_77
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_78

    :cond_78
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_79

    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_79
    const/4 v2, 0x0

    goto :goto_7a

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_70
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7a

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7b

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .local v5, _arg2:Landroid/os/ParcelUuid;
    :goto_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, _arg3:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetooth$Stub;->readByTypeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;ILandroid/os/ParcelUuid;[BII)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_7c

    const/4 v2, 0x1

    :goto_7d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Landroid/os/ParcelUuid;
    .end local v6           #_arg3:[B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :cond_7a
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_7b

    .restart local v4       #_arg1:I
    :cond_7b
    const/4 v5, 0x0

    .restart local v5       #_arg2:Landroid/os/ParcelUuid;
    goto :goto_7c

    .restart local v6       #_arg3:[B
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v16       #_result:Z
    :cond_7c
    const/4 v2, 0x0

    goto :goto_7d

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Landroid/os/ParcelUuid;
    .end local v6           #_arg3:[B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :sswitch_71
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7d

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7e

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->readResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;[BII)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_7f

    const/4 v2, 0x1

    :goto_80
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_7d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_7e

    :cond_7e
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_7f

    .restart local v5       #_arg2:[B
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_7f
    const/4 v2, 0x0

    goto :goto_80

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_72
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_80

    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_81

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->writeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;II)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_82

    const/4 v2, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v16           #_result:Z
    :cond_80
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_81

    :cond_81
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_82

    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v16       #_result:Z
    :cond_82
    const/4 v2, 0x0

    goto :goto_83

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v16           #_result:Z
    :sswitch_73
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectSap()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_74
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_83

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->isHostPatchRequired(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_84

    const/4 v2, 0x1

    :goto_85
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :cond_83
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_84

    .restart local v4       #_arg1:I
    .restart local v16       #_result:Z
    :cond_84
    const/4 v2, 0x0

    goto :goto_85

    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_75
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectDUN()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :sswitch_76
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disableDUN()Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_85

    const/4 v2, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_85
    const/4 v2, 0x0

    goto :goto_86

    .end local v16           #_result:Z
    :sswitch_77
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enableDUN()Z

    move-result v16

    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_86

    const/4 v2, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_86
    const/4 v2, 0x0

    goto :goto_87

    .end local v16           #_result:Z
    :sswitch_78
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_79
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
