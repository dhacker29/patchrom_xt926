.class Landroid/net/wifi/WifiRegDomService$RoamStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "WifiRegDomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiRegDomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamStateListener"
.end annotation


# instance fields
.field private roam:Z

.field private telMgr:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Landroid/net/wifi/WifiRegDomService;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiRegDomService;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->this$0:Landroid/net/wifi/WifiRegDomService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 102
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiRegDomService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->telMgr:Landroid/telephony/TelephonyManager;

    .line 103
    return-void
.end method

.method private getIsoCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "netMccValue"

    .prologue
    .line 193
    const-string v2, "WifiRegDomService"

    const-string v3, "getIsoCountryCode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v1, "XX"

    .line 198
    .local v1, isoCountryCode:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "WifiRegDomService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryCodeForMcc error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "WifiRegDomService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryCodeForMcc error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleRoamingChange()V
    .locals 5

    .prologue
    .line 181
    const-string v2, "WifiRegDomService"

    const-string v3, "handleRoamingChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->this$0:Landroid/net/wifi/WifiRegDomService;

    invoke-virtual {v2}, Landroid/net/wifi/WifiRegDomService;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, netMccRoaming:Ljava/lang/String;
    const-string v2, "WifiRegDomService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netMccRoaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->getIsoCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, isoCountryCode:Ljava/lang/String;
    const-string v2, "WifiRegDomService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Country Code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v2, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->this$0:Landroid/net/wifi/WifiRegDomService;

    const/4 v3, 0x1

    #calls: Landroid/net/wifi/WifiRegDomService;->updateCountryCode(Ljava/lang/String;Z)V
    invoke-static {v2, v0, v3}, Landroid/net/wifi/WifiRegDomService;->access$100(Landroid/net/wifi/WifiRegDomService;Ljava/lang/String;Z)V

    .line 190
    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 12
    .parameter "serviceState"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 122
    const-string v6, "WifiRegDomService"

    const-string/jumbo v7, "onServiceStateChange"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v6, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->this$0:Landroid/net/wifi/WifiRegDomService;

    invoke-virtual {v6}, Landroid/net/wifi/WifiRegDomService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 126
    .local v1, c:Landroid/content/Context;
    iget-object v6, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->this$0:Landroid/net/wifi/WifiRegDomService;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiRegDomService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 129
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_1

    .line 131
    invoke-static {}, Landroid/net/wifi/WifiRegDomService;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    iget-object v6, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->this$0:Landroid/net/wifi/WifiRegDomService;

    invoke-virtual {v6}, Landroid/net/wifi/WifiRegDomService;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, netMccValue:Ljava/lang/String;
    invoke-direct {p0, v5}, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->getIsoCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, isoCountryCode:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 139
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_country_code"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, countryFromDB:Ljava/lang/String;
    const-string v6, "WifiRegDomService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WIFI_COUNTRY_CODE from DB set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 144
    const-string v6, "WifiRegDomService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WIFI_COUNTRY_CODE set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v6, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->this$0:Landroid/net/wifi/WifiRegDomService;

    #calls: Landroid/net/wifi/WifiRegDomService;->updateCountryCode(Ljava/lang/String;Z)V
    invoke-static {v6, v4, v9}, Landroid/net/wifi/WifiRegDomService;->access$100(Landroid/net/wifi/WifiRegDomService;Ljava/lang/String;Z)V

    .line 146
    iget-object v6, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->this$0:Landroid/net/wifi/WifiRegDomService;

    #calls: Landroid/net/wifi/WifiRegDomService;->updateSoftApDefaultFreq()V
    invoke-static {v6}, Landroid/net/wifi/WifiRegDomService;->access$200(Landroid/net/wifi/WifiRegDomService;)V

    .line 177
    .end local v2           #countryFromDB:Ljava/lang/String;
    .end local v4           #isoCountryCode:Ljava/lang/String;
    .end local v5           #netMccValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 158
    invoke-static {}, Landroid/net/wifi/WifiRegDomService;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.net.wifi.WIFI_ADVANCED_POLLING"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x1b7740

    add-long/2addr v6, v8

    invoke-static {v1, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v0, v11, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 166
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    const-string v6, "WifiRegDomService"

    const-string v7, "Service State is in else modes like Emergency,Unknown"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Landroid/net/wifi/WifiRegDomService;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 170
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 171
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "android.net.wifi.WIFI_ADVANCED_POLLING"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xdbba0

    add-long/2addr v6, v8

    invoke-static {v1, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v0, v11, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public startListen()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "WifiRegDomService"

    const-string v1, "Start Listen "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->telMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->roam:Z

    .line 109
    invoke-static {}, Landroid/net/wifi/WifiRegDomService;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    invoke-direct {p0}, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->handleRoamingChange()V

    .line 111
    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->telMgr:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 112
    return-void
.end method

.method public stopListen()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/WifiRegDomService$RoamStateListener;->telMgr:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 116
    return-void
.end method
