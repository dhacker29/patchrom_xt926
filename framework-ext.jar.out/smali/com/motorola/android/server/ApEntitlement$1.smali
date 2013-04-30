.class Lcom/motorola/android/server/ApEntitlement$1;
.super Landroid/content/BroadcastReceiver;
.source "ApEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/server/ApEntitlement;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/server/ApEntitlement;


# direct methods
.method constructor <init>(Lcom/motorola/android/server/ApEntitlement;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 119
    const-string v18, "wifi_state"

    const/16 v19, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 120
    .local v17, wifiAPState:I
    packed-switch v17, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    const-string v18, "ApEntitlement"

    const-string v19, "WIFI Hotspot is Enabled"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/ApEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/ApEntitlement;->access$000(Lcom/motorola/android/server/ApEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/ApEntitlement;->access$100(Lcom/motorola/android/server/ApEntitlement;Z)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/ApEntitlement;->setWifiConnectErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/ApEntitlement;->access$200(Lcom/motorola/android/server/ApEntitlement;Z)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/ApEntitlement;->setWifiReadyNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/ApEntitlement;->access$300(Lcom/motorola/android/server/ApEntitlement;Z)V

    goto :goto_0

    .line 130
    :pswitch_2
    const-string v18, "ApEntitlement"

    const-string v19, "WIFI Hotspot is Disabled"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/ApEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/ApEntitlement;->access$000(Lcom/motorola/android/server/ApEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/ApEntitlement;->access$100(Lcom/motorola/android/server/ApEntitlement;Z)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/ApEntitlement;->setWifiReadyNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/ApEntitlement;->access$300(Lcom/motorola/android/server/ApEntitlement;Z)V

    .line 137
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/ApEntitlement;->access$500(Lcom/motorola/android/server/ApEntitlement;)Landroid/content/Context;

    move-result-object v18

    const-string v20, "connectivity"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #setter for: Lcom/motorola/android/server/ApEntitlement;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v0, v1}, Lcom/motorola/android/server/ApEntitlement;->access$402(Lcom/motorola/android/server/ApEntitlement;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/ApEntitlement;->mCm:Landroid/net/ConnectivityManager;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/ApEntitlement;->access$400(Lcom/motorola/android/server/ApEntitlement;)Landroid/net/ConnectivityManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, mUsbRegexs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/ApEntitlement;->mCm:Landroid/net/ConnectivityManager;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/ApEntitlement;->access$400(Lcom/motorola/android/server/ApEntitlement;)Landroid/net/ConnectivityManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v15

    .line 140
    .local v15, tethered:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 141
    .local v16, usbIface:Ljava/lang/String;
    move-object v3, v15

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .local v9, i$:I
    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v10, v3, v9

    .line 142
    .local v10, iface:Ljava/lang/String;
    move-object v4, v13

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v12, :cond_3

    aget-object v14, v4, v8

    .line 143
    .local v14, regex:Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 144
    move-object/from16 v16, v10

    .line 142
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 141
    .end local v14           #regex:Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_1

    .line 149
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #iface:Ljava/lang/String;
    .end local v12           #len$:I
    :cond_4
    const-string v18, "bluetooth"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 150
    .local v5, b:Landroid/os/IBinder;
    const/4 v6, 0x0

    .line 151
    .local v6, bluetoothService:Landroid/bluetooth/IBluetooth;
    if-eqz v5, :cond_5

    .line 152
    invoke-static {v5}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    .line 155
    :cond_5
    if-nez v16, :cond_6

    :try_start_0
    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->isTetheringOn()Z

    move-result v18

    if-nez v18, :cond_6

    .line 156
    const-string v18, "ApEntitlement"

    const-string v19, "Bluetooth Tethering and USB Tethering features are unused, set entitlement value to NONE"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/ApEntitlement;->access$500(Lcom/motorola/android/server/ApEntitlement;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "APN_CHECK_STATE"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 163
    :catch_0
    move-exception v7

    .line 164
    .local v7, e:Landroid/os/RemoteException;
    const-string v18, "ApEntitlement"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Stack:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 161
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_1
    const-string v18, "ApEntitlement"

    const-string v19, "Bluetooth Tethering or/and USB Tethering is ON, so don\'t reset entitlement value"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 171
    .end local v5           #b:Landroid/os/IBinder;
    .end local v6           #bluetoothService:Landroid/bluetooth/IBluetooth;
    .end local v9           #i$:I
    .end local v13           #mUsbRegexs:[Ljava/lang/String;
    .end local v15           #tethered:[Ljava/lang/String;
    .end local v16           #usbIface:Ljava/lang/String;
    :pswitch_3
    const-string v18, "ApEntitlement"

    const-string v19, "WIFI Hotspot is Enabling"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/ApEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/ApEntitlement;->access$000(Lcom/motorola/android/server/ApEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/ApEntitlement;->access$600(Lcom/motorola/android/server/ApEntitlement;Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/ApEntitlement;->access$100(Lcom/motorola/android/server/ApEntitlement;Z)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/ApEntitlement;->access$100(Lcom/motorola/android/server/ApEntitlement;Z)V

    goto/16 :goto_0

    .line 179
    :pswitch_4
    const-string v18, "ApEntitlement"

    const-string v19, "WIFI Hotspot Failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/ApEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/ApEntitlement;->access$000(Lcom/motorola/android/server/ApEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/ApEntitlement;->access$100(Lcom/motorola/android/server/ApEntitlement;Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/ApEntitlement;->setWifiConnectErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/ApEntitlement;->access$200(Lcom/motorola/android/server/ApEntitlement;Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/ApEntitlement$1;->this$0:Lcom/motorola/android/server/ApEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/ApEntitlement;->setWifiConnectErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/ApEntitlement;->access$200(Lcom/motorola/android/server/ApEntitlement;Z)V

    goto/16 :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
