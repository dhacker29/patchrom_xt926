.class Lcom/motorola/android/wifi/ApEntitlement$2;
.super Landroid/content/BroadcastReceiver;
.source "ApEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/wifi/ApEntitlement;-><init>(Landroid/content/Context;)V
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
    .line 190
    iput-object p1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    #setter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2, v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$702(Lcom/motorola/android/wifi/ApEntitlement;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 194
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "entitlement_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    invoke-static {v1, v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$802(Lcom/motorola/android/wifi/ApEntitlement;I)I

    .line 195
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "APN_CHECK_STATE"

    iget-object v3, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    invoke-static {v3}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 198
    const-string v1, "ApEntitlement"

    const-string v2, "Entilement check fail."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iget-boolean v1, v1, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    if-ne v1, v5, :cond_3

    .line 200
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "att"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iput-boolean v4, v1, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    .line 202
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "WIFI_TETHER_PENDING"

    invoke-static {v1, v2, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->restoreWifiAndTurnOffAp()V
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$900(Lcom/motorola/android/wifi/ApEntitlement;)V

    .line 204
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$600(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 205
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$1000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 206
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v1, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$1000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "entitlement_status_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, status_code:Ljava/lang/String;
    const-string v1, "ApEntitlement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status Code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz v0, :cond_2

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->startSelfProvision()V
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$1100(Lcom/motorola/android/wifi/ApEntitlement;)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iput-boolean v4, v1, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    .line 214
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "WIFI_TETHER_PENDING"

    invoke-static {v1, v2, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->restoreWifiAndTurnOffAp()V
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$900(Lcom/motorola/android/wifi/ApEntitlement;)V

    goto :goto_0

    .line 218
    .end local v0           #status_code:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    if-ne v1, v6, :cond_0

    .line 219
    const-string v1, "ApEntitlement"

    const-string v2, "Hotspot is ON : periodic timer scenario."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->restoreWifiAndTurnOffAp()V
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$900(Lcom/motorola/android/wifi/ApEntitlement;)V

    .line 221
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$600(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 222
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$1000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 223
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v1, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$1000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto/16 :goto_0

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 226
    const-string v1, "ApEntitlement"

    const-string v2, "Entilement check success."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iget-boolean v1, v1, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    if-eqz v1, :cond_5

    .line 228
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iput-boolean v4, v1, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    .line 229
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "WIFI_TETHER_PENDING"

    invoke-static {v1, v2, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$1200(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 231
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "att"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$600(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 233
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v1, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$100(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 234
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$1000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto/16 :goto_0

    .line 236
    :cond_5
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    if-ne v1, v6, :cond_0

    .line 237
    const-string v1, "ApEntitlement"

    const-string v2, "Hotspot is ON : periodic timer, set ready notif."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiConnectNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$100(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 239
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$600(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 240
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiReadyNotif(Z)V
    invoke-static {v1, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$300(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 241
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$1000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto/16 :goto_0

    .line 243
    :cond_6
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mEntitlementCheckState:I
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$800(Lcom/motorola/android/wifi/ApEntitlement;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 244
    const-string v1, "ApEntitlement"

    const-string v2, "Entilement check verifying."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    iget-boolean v1, v1, Lcom/motorola/android/wifi/ApEntitlement;->mPendingWifiEnable:Z

    if-eqz v1, :cond_7

    .line 246
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$500(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "WIFI_TETHER_PENDING"

    invoke-static {v1, v2, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$000(Lcom/motorola/android/wifi/ApEntitlement;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "att"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthErrorNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$1000(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 249
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v1, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$600(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto/16 :goto_0

    .line 251
    :cond_7
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #getter for: Lcom/motorola/android/wifi/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/motorola/android/wifi/ApEntitlement;->access$700(Lcom/motorola/android/wifi/ApEntitlement;)Landroid/net/wifi/WifiManager;

    if-ne v1, v6, :cond_0

    .line 252
    const-string v1, "ApEntitlement"

    const-string v2, "Hotspot is ON : periodic timer scanrio."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiReadyNotif(Z)V
    invoke-static {v1, v4}, Lcom/motorola/android/wifi/ApEntitlement;->access$300(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    .line 254
    iget-object v1, p0, Lcom/motorola/android/wifi/ApEntitlement$2;->this$0:Lcom/motorola/android/wifi/ApEntitlement;

    #calls: Lcom/motorola/android/wifi/ApEntitlement;->setWifiAuthNotif(Z)V
    invoke-static {v1, v5}, Lcom/motorola/android/wifi/ApEntitlement;->access$600(Lcom/motorola/android/wifi/ApEntitlement;Z)V

    goto/16 :goto_0
.end method
