.class Lcom/motorola/android/wifi/ApEntitlement$3;
.super Landroid/content/BroadcastReceiver;
.source "ApEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/wifi/ApEntitlement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/wifi/ApEntitlement;


# direct methods
.method constructor <init>(Lcom/motorola/android/wifi/ApEntitlement;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement$3;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement$3;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$3;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$1300(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement$3;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iput-boolean v2, v0, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    .line 269
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement$3;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "WIFI_TETHER_PENDING"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    const-string v0, "MHS"

    const-string v1, "com.motorola.SPG.FEATURE_CODE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "200"

    const-string v1, "com.motorola.SPG.STATUS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "ApEntitlement"

    const-string v1, "SPG Success : User provisioned. Start WiFi Tethering."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement$3;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const/4 v1, 0x3

    #setter for: Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    invoke-static {v0, v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$802(Lcom/motorola/android/wifi/ApEntitlement;I)I

    .line 274
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement$3;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$3;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$1200(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    const-string v0, "ApEntitlement"

    const-string v1, "Fail : User not provisioned."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/motorola/android/wifi/ApEntitlement$3;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->restoreWifiAndTurnOffAp()V
    invoke-static {v0}, Lcom/motorola/android/wifi/ApEntitlement;->access$900(Lcom/motorola/android/wifi/ApEntitlement;)V

    goto :goto_0
.end method
