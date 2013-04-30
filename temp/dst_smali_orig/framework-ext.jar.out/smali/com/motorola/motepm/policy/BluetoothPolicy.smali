.class public Lcom/motorola/motepm/policy/BluetoothPolicy;
.super Lcom/motorola/motepm/policy/DeviceBooleanPolicy;
.source "BluetoothPolicy.java"


# instance fields
.field mBtAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v1, 0x9

    const/16 v2, 0x6e

    const-string v3, "bluetooth-allowed"

    const v4, 0x1040583

    const v5, 0x1040584

    const v6, 0x1040586

    const v7, 0x1040585

    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;-><init>(IILjava/lang/String;IIIILjava/lang/String;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/motepm/policy/BluetoothPolicy;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method protected getDeviceState(Landroid/content/Intent;)I
    .locals 2
    .parameter "broadcastIntent"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/policy/BluetoothPolicy;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDisable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/policy/BluetoothPolicy;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method
