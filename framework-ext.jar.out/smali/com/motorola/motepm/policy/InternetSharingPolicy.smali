.class public Lcom/motorola/motepm/policy/InternetSharingPolicy;
.super Lcom/motorola/motepm/policy/DeviceBooleanPolicy;
.source "InternetSharingPolicy.java"


# instance fields
.field private volatile mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 53
    const/4 v1, 0x7

    const/16 v2, 0x6b

    const-string v3, "internet-sharing-allowed"

    const v4, 0x104059d

    const v5, 0x104059e

    const v6, 0x104059c

    const v7, 0x104059b

    const-string v8, "android.net.conn.TETHER_STATE_CHANGED"

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;-><init>(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 27
    new-instance v0, Lcom/motorola/motepm/policy/InternetSharingPolicy$1;

    invoke-direct {v0, p0}, Lcom/motorola/motepm/policy/InternetSharingPolicy$1;-><init>(Lcom/motorola/motepm/policy/InternetSharingPolicy;)V

    iput-object v0, p0, Lcom/motorola/motepm/policy/InternetSharingPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/motepm/policy/InternetSharingPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/motorola/motepm/policy/InternetSharingPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/motepm/policy/InternetSharingPolicy;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/InternetSharingPolicy;->getMutex()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getDeviceState(Landroid/content/Intent;)I
    .locals 16
    .parameter "broadcastIntent"

    .prologue
    .line 141
    const-string v15, "activeArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 143
    .local v1, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v15, "availableArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 146
    .local v3, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v10, v1

    .line 147
    .local v10, ifaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 148
    move-object v10, v3

    .line 153
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_3

    .line 154
    :cond_1
    const/4 v15, 0x1

    .line 188
    :goto_1
    return v15

    .line 149
    :cond_2
    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motepm/policy/InternetSharingPolicy;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 158
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_a

    .line 159
    const-string v15, "connectivity"

    invoke-virtual {v6, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 161
    .local v5, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v13

    .line 162
    .local v13, usbRegex:[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, wifiRegex:[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, btRegex:[Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 166
    .local v9, iface:Ljava/lang/String;
    move-object v2, v13

    .local v2, arr$:[Ljava/lang/String;
    array-length v11, v2

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v11, :cond_6

    aget-object v12, v2, v8

    .line 167
    .local v12, regex:Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 168
    const/4 v15, 0x0

    goto :goto_1

    .line 166
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 172
    .end local v12           #regex:Ljava/lang/String;
    :cond_6
    move-object v2, v14

    array-length v11, v2

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v11, :cond_8

    aget-object v12, v2, v8

    .line 173
    .restart local v12       #regex:Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 174
    const/4 v15, 0x0

    goto :goto_1

    .line 172
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 178
    .end local v12           #regex:Ljava/lang/String;
    :cond_8
    move-object v2, v4

    array-length v11, v2

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v11, :cond_4

    aget-object v12, v2, v8

    .line 179
    .restart local v12       #regex:Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 180
    const/4 v15, 0x0

    goto :goto_1

    .line 178
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 185
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #btRegex:[Ljava/lang/String;
    .end local v5           #cm:Landroid/net/ConnectivityManager;
    .end local v8           #i$:I
    .end local v9           #iface:Ljava/lang/String;
    .end local v11           #len$:I
    .end local v12           #regex:Ljava/lang/String;
    .end local v13           #usbRegex:[Ljava/lang/String;
    .end local v14           #wifiRegex:[Ljava/lang/String;
    :cond_a
    const/4 v15, 0x0

    goto :goto_1

    .line 188
    .restart local v4       #btRegex:[Ljava/lang/String;
    .restart local v5       #cm:Landroid/net/ConnectivityManager;
    .restart local v13       #usbRegex:[Ljava/lang/String;
    .restart local v14       #wifiRegex:[Ljava/lang/String;
    :cond_b
    const/4 v15, 0x1

    goto :goto_1
.end method

.method protected onDisable()Z
    .locals 24

    .prologue
    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motepm/policy/InternetSharingPolicy;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 66
    .local v8, context:Landroid/content/Context;
    if-nez v8, :cond_0

    .line 67
    const/16 v22, 0x0

    .line 125
    :goto_0
    return v22

    .line 70
    :cond_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 71
    .local v16, resolver:Landroid/content/ContentResolver;
    const-string v22, "connectivity"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 73
    .local v7, cm:Landroid/net/ConnectivityManager;
    const-string v22, "wifi"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 77
    .local v18, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v6, 0x0

    .line 79
    .local v6, bluetoothStatus:I
    :try_start_0
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .local v3, arr$:[Ljava/lang/String;
    array-length v13, v3

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .local v11, i$:I
    :goto_1
    if-ge v11, v13, :cond_1

    aget-object v12, v3, v11

    .line 80
    .local v12, iface:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_2
    if-ge v10, v14, :cond_6

    aget-object v15, v4, v10

    .line 81
    .local v15, regex:Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 82
    invoke-virtual {v7, v12}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v6

    .line 88
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #iface:Ljava/lang/String;
    .end local v14           #len$:I
    .end local v15           #regex:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/motepm/policy/InternetSharingPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    .line 89
    .local v5, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v5, :cond_2

    .line 90
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v5           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    :cond_2
    :goto_3
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v17

    .line 102
    .local v17, usbStatus:I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v21

    .line 105
    .local v21, wifiStatus:Z
    if-eqz v21, :cond_4

    .line 106
    const/16 v20, 0x0

    .line 108
    .local v20, wifiSavedState:I
    :try_start_1
    const-string v22, "wifi_saved_state"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v20

    .line 114
    :goto_4
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 115
    const-string v22, "wifi_saved_state"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    sget-object v22, Lcom/motorola/motepm/policy/InternetSharingPolicy;->BOOLEAN_POLICIES:Ljava/util/HashMap;

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/motorola/motepm/BooleanPolicy;

    .line 119
    .local v19, wifiPolicy:Lcom/motorola/motepm/BooleanPolicy;
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 120
    :cond_3
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 125
    .end local v19           #wifiPolicy:Lcom/motorola/motepm/BooleanPolicy;
    .end local v20           #wifiSavedState:I
    :cond_4
    if-nez v6, :cond_7

    if-nez v17, :cond_7

    if-eqz v21, :cond_7

    const/16 v22, 0x1

    goto/16 :goto_0

    .line 80
    .end local v17           #usbStatus:I
    .end local v21           #wifiStatus:Z
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v12       #iface:Ljava/lang/String;
    .restart local v14       #len$:I
    .restart local v15       #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 79
    .end local v15           #regex:Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_1

    .line 92
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #iface:Ljava/lang/String;
    .end local v14           #len$:I
    :catch_0
    move-exception v9

    .line 93
    .local v9, e:Ljava/lang/Exception;
    const-string v22, "MotorolaPolicy"

    const-string v23, "Error while disabling bluetooth tethering"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/16 v6, 0xb

    goto :goto_3

    .line 125
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v17       #usbStatus:I
    .restart local v21       #wifiStatus:Z
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 110
    .restart local v20       #wifiSavedState:I
    :catch_1
    move-exception v22

    goto :goto_4
.end method

.method public onMainServiceBound(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 4
    .parameter "service"

    .prologue
    .line 131
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 132
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/InternetSharingPolicy;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    .local v1, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 134
    iget-object v2, p0, Lcom/motorola/motepm/policy/InternetSharingPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 137
    :cond_0
    return-void
.end method
