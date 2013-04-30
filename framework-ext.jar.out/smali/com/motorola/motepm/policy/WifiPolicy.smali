.class public Lcom/motorola/motepm/policy/WifiPolicy;
.super Lcom/motorola/motepm/policy/DeviceBooleanPolicy;
.source "WifiPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 14
    const/4 v1, 0x1

    const/16 v2, 0x66

    const-string v3, "wifi-allowed"

    const v4, 0x1040587

    const v5, 0x1040588

    const v6, 0x104058a

    const v7, 0x1040589

    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;-><init>(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 22
    return-void
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/WifiPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 57
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    goto :goto_0
.end method


# virtual methods
.method protected getDeviceState(Landroid/content/Intent;)I
    .locals 3
    .parameter "broadcastIntent"

    .prologue
    const/4 v2, 0x3

    .line 33
    invoke-direct {p0}, Lcom/motorola/motepm/policy/WifiPolicy;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    .line 34
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 38
    .local v0, state:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 47
    const/4 v2, 0x0

    :goto_1
    :pswitch_0
    return v2

    .end local v0           #state:I
    :cond_0
    move v0, v2

    .line 34
    goto :goto_0

    .line 42
    .restart local v0       #state:I
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_1

    .line 44
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_1

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDisable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/motorola/motepm/policy/WifiPolicy;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 27
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
