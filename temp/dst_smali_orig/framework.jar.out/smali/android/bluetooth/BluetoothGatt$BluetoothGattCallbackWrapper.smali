.class Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;
.super Landroid/bluetooth/IBluetoothGattCallback$Stub;
.source "BluetoothGatt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothGattCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/bluetooth/BluetoothGattCallback;

.field final synthetic this$0:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method


# virtual methods
.method public onGattActionComplete(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    .locals 1
    .parameter "config"
    .parameter "action"
    .parameter "status"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onGattActionComplete(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V

    return-void
.end method

.method public onGattAppConfigurationStatusChange(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    .locals 1
    .parameter "config"
    .parameter "status"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onGattAppConfigurationStatusChange(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V

    return-void
.end method

.method public onGattDiscoverCharacteristicRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    .locals 3
    .parameter "config"
    .parameter "start"
    .parameter "end"
    .parameter "requestHandle"

    .prologue
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGattDiscoverCharacteristicRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattCallback;->onGattDiscoverCharacteristicRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V

    return-void
.end method

.method public onGattDiscoverPrimaryServiceByUuidRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;IILandroid/os/ParcelUuid;I)V
    .locals 6
    .parameter "config"
    .parameter "start"
    .parameter "end"
    .parameter "uuid"
    .parameter "requestHandle"

    .prologue
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGattDiscoverPrimaryServiceByUuidRequest callback : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattCallback;->onGattDiscoverPrimaryServiceByUuidRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;IILandroid/os/ParcelUuid;I)V

    return-void
.end method

.method public onGattDiscoverPrimaryServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    .locals 3
    .parameter "config"
    .parameter "start"
    .parameter "end"
    .parameter "requestHandle"

    .prologue
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGattDiscoverPrimaryServiceRequest callback : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattCallback;->onGattDiscoverPrimaryServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V

    return-void
.end method

.method public onGattFindIncludedServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    .locals 3
    .parameter "config"
    .parameter "start"
    .parameter "end"
    .parameter "requestHandle"

    .prologue
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGattFindIncludedServiceRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattCallback;->onGattFindIncludedServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V

    return-void
.end method

.method public onGattFindInfoRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    .locals 3
    .parameter "config"
    .parameter "start"
    .parameter "end"
    .parameter "requestHandle"

    .prologue
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGattFindInfoRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattCallback;->onGattFindInfoRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V

    return-void
.end method

.method public onGattIndicateResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Z)V
    .locals 3
    .parameter "config"
    .parameter "result"

    .prologue
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGattIndicateResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onGattIndicateResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Z)V

    return-void
.end method

.method public onGattReadByTypeRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IILjava/lang/String;I)V
    .locals 7
    .parameter "config"
    .parameter "uuid"
    .parameter "start"
    .parameter "end"
    .parameter "authentication"
    .parameter "requestHandle"

    .prologue
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGattReadByTypeRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", UUID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authentication"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/BluetoothGattCallback;->onGattReadByTypeRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IILjava/lang/String;I)V

    return-void
.end method

.method public onGattReadRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;ILjava/lang/String;I)V
    .locals 3
    .parameter "config"
    .parameter "handle"
    .parameter "authentication"
    .parameter "requestHandle"

    .prologue
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGattReadRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authentication "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattCallback;->onGattReadRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;ILjava/lang/String;I)V

    return-void
.end method

.method public onGattSetClientConfigDescriptor(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BI)V
    .locals 3
    .parameter "config"
    .parameter "handle"
    .parameter "value"
    .parameter "sessionHandle"

    .prologue
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGattSetClientConfigDescriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattCallback;->onGattSetClientConfigDescriptor(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BI)V

    return-void
.end method

.method public onGattWriteCommand(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;)V
    .locals 3
    .parameter "config"
    .parameter "handle"
    .parameter "value"
    .parameter "authentication"

    .prologue
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGattWriteCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authentication "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattCallback;->onGattWriteCommand(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;)V

    return-void
.end method

.method public onGattWriteRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;II)V
    .locals 7
    .parameter "config"
    .parameter "handle"
    .parameter "value"
    .parameter "authentication"
    .parameter "sessionHandle"
    .parameter "requestHandle"

    .prologue
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGattWriteRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authentication "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/BluetoothGattCallback;->onGattWriteRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;II)V

    return-void
.end method
