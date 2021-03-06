.class public Lcom/motorola/android/server/ApEntitlement;
.super Ljava/lang/Object;
.source "ApEntitlement.java"


# static fields
.field private static final ACTION_RESPONSE_SPG:Ljava/lang/String; = "com.motorola.SPG.ACTION_SPG_RESULT"

.field private static final ACTION_START_SPG:Ljava/lang/String; = "com.motorola.SPG.ACTION_REQUEST_START_SPG"

.field private static final APN_CHECK_STATE:Ljava/lang/String; = "APN_CHECK_STATE"

.field private static final APP_DATA:Ljava/lang/String; = "com.motorola.SPG.APP_DATA"

.field private static final DBG:Z = true

.field private static final ENTITLEMENT_CHECK_STATE_CHANGED:Ljava/lang/String; = "motorola.intent.ENTITLEMENT_STATE_CHANGE"

.field private static final ENTITLEMENT_CHECK_STATE_FAIL:I = 0x4

.field private static final ENTITLEMENT_CHECK_STATE_NONE:I = 0x1

.field private static final ENTITLEMENT_CHECK_STATE_SUCCESS:I = 0x3

.field private static final ENTITLEMENT_CHECK_STATE_VERIFYING:I = 0x2

.field private static final EXTRA_ENTITLEMENT_CHECK_NO_FEATURE:Ljava/lang/String; = "-3"

.field private static final EXTRA_ENTITLEMENT_CHECK_STATE:Ljava/lang/String; = "entitlement_state"

.field private static final EXTRA_ENTITLEMENT_CHECK_STATUS_CODE:Ljava/lang/String; = "entitlement_status_code"

.field private static final FEATURE_CODE:Ljava/lang/String; = "com.motorola.SPG.FEATURE_CODE"

.field private static final FEATURE_MHS:Ljava/lang/String; = "MHS"

.field private static final NOTIF_ID_OFFSET:I = 0x3039

.field private static final OPERATOR_NAME_ATT:Ljava/lang/String; = "att"

.field private static final OPERATOR_NAME_VZW:Ljava/lang/String; = "vzw"

.field private static final REQUEST_START_ENTITLEMENT_CHECK:Ljava/lang/String; = "com.motorola.intent.ACTION_ENTITLEMENT_CHECK"

.field private static final RESPONSE_SPG_SUCCESS:Ljava/lang/String; = "200"

.field private static final STATUS:Ljava/lang/String; = "com.motorola.SPG.STATUS"

.field private static final TAG:Ljava/lang/String; = "ApEntitlement"

.field private static final WIFI_TETHER_PENDING:Ljava/lang/String; = "WIFI_TETHER_PENDING"


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEntitlementCheckState:I

.field private mOperatorName:Ljava/lang/String;

.field public mPendingWifiEnable:Z

.field private mWifiAuthErrorNotif:Landroid/app/Notification;

.field private mWifiAuthNotif:Landroid/app/Notification;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiConnectErrorNotif:Landroid/app/Notification;

.field private mWifiConnectNotif:Landroid/app/Notification;

.field private mWifiDisconnectNotif:Landroid/app/Notification;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiReadyNotif:Landroid/app/Notification;

.field private spgResponseReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/android/server/ApEntitlement;->mEntitlementCheckState:I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/server/ApEntitlement;->mPendingWifiEnable:Z

    .line 103
    iput-object v1, p0, Lcom/motorola/android/server/ApEntitlement;->mOperatorName:Ljava/lang/String;

    .line 264
    new-instance v0, Lcom/motorola/android/server/ApEntitlement$3;

    invoke-direct {v0, p0}, Lcom/motorola/android/server/ApEntitlement$3;-><init>(Lcom/motorola/android/server/ApEntitlement;)V

    iput-object v0, p0, Lcom/motorola/android/server/ApEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput-object p1, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    .line 108
    const-string v0, "com.motorola.service.entitlement"

    invoke-direct {p0, v0}, Lcom/motorola/android/server/ApEntitlement;->isPackageFound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "att"

    iput-object v0, p0, Lcom/motorola/android/server/ApEntitlement;->mOperatorName:Ljava/lang/String;

    .line 113
    :cond_0
    :goto_0
    const-string v0, "ApEntitlement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOperatorName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/server/ApEntitlement;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/motorola/android/server/ApEntitlement$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/server/ApEntitlement$1;-><init>(Lcom/motorola/android/server/ApEntitlement;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    iget-object v0, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/motorola/android/server/ApEntitlement$2;

    invoke-direct {v1, p0}, Lcom/motorola/android/server/ApEntitlement$2;-><init>(Lcom/motorola/android/server/ApEntitlement;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "motorola.intent.ENTITLEMENT_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    return-void

    .line 110
    :cond_1
    const-string v0, "com.motorola.service.vzw.entitlement"

    invoke-direct {p0, v0}, Lcom/motorola/android/server/ApEntitlement;->isPackageFound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "vzw"

    iput-object v0, p0, Lcom/motorola/android/server/ApEntitlement;->mOperatorName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/motorola/android/server/ApEntitlement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/motorola/android/server/ApEntitlement;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/server/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/motorola/android/server/ApEntitlement;->setWifiConnectNotif(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/android/server/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/motorola/android/server/ApEntitlement;->setWifiAuthErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/android/server/ApEntitlement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/motorola/android/server/ApEntitlement;->startSelfProvision()V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/android/server/ApEntitlement;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/android/server/ApEntitlement;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/motorola/android/server/ApEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/server/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/motorola/android/server/ApEntitlement;->setWifiConnectErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/server/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/motorola/android/server/ApEntitlement;->setWifiReadyNotif(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/android/server/ApEntitlement;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/motorola/android/server/ApEntitlement;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/motorola/android/server/ApEntitlement;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/motorola/android/server/ApEntitlement;->mCm:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/motorola/android/server/ApEntitlement;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/server/ApEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/motorola/android/server/ApEntitlement;->setWifiAuthNotif(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/android/server/ApEntitlement;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/android/server/ApEntitlement;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/android/server/ApEntitlement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/motorola/android/server/ApEntitlement;->mEntitlementCheckState:I

    return v0
.end method

.method static synthetic access$802(Lcom/motorola/android/server/ApEntitlement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/motorola/android/server/ApEntitlement;->mEntitlementCheckState:I

    return p1
.end method

.method static synthetic access$900(Lcom/motorola/android/server/ApEntitlement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/motorola/android/server/ApEntitlement;->restoreWifiAndTurnOffAp()V

    return-void
.end method

.method private createUsbTetherAuthIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 519
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private isPackageFound(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    const-string v2, "ApEntitlement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    return v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ApEntitlement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restoreWifiAndTurnOffAp()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 558
    const-string v4, "ApEntitlement"

    const-string v5, "Inside restoreWifiAndTurnOffAp"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, wifiSavedState:I
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 562
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_saved_state"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 566
    :goto_0
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 569
    .local v0, isAirplaneMode:Z
    :goto_1
    const-string v4, "ApEntitlement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAirplaneMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "wifiSavedState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    if-nez v0, :cond_0

    if-ne v1, v2, :cond_0

    .line 571
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 572
    iget-object v2, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_saved_state"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 574
    :cond_0
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_1
    move v0, v3

    .line 566
    goto :goto_1

    .line 563
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setWifiAuthErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 480
    const-string v4, "ApEntitlement"

    const-string v5, "setWifiAuthErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 483
    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 509
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040568

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040569

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 491
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    .line 492
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    const v5, 0x108061d

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 493
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 494
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 495
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 498
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    add-int/lit16 v1, v4, 0x303a

    .line 501
    .local v1, notifId:I
    if-eqz p1, :cond_2

    .line 503
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/ApEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 505
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiAuthNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 355
    const-string v6, "ApEntitlement"

    const-string v7, "setWifiAuthNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 358
    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 388
    :goto_0
    return-void

    .line 362
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 365
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 366
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040562

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040563

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 370
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    .line 371
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    const v7, 0x108061c

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 372
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 373
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 374
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 377
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    iget v2, v6, Landroid/app/Notification;->icon:I

    .line 379
    .local v2, notifId:I
    if-eqz p1, :cond_2

    .line 381
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 382
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiAuthNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiConnectErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    .line 530
    const-string v4, "ApEntitlement"

    const-string v5, "setWifiConnectErrorNotif()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 533
    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 555
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x104056a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x104056b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 541
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    .line 542
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    const v5, 0x108061d

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 543
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 544
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 545
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 547
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    add-int/lit16 v1, v4, 0x303b

    .line 548
    .local v1, notifId:I
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/ApEntitlement;->createUsbTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 549
    if-eqz p1, :cond_2

    .line 551
    iget-object v4, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 553
    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiConnectNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 398
    const-string v6, "ApEntitlement"

    const-string v7, "setWifiConnectNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 401
    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 430
    :goto_0
    return-void

    .line 405
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 408
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 409
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040564

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040565

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 413
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    .line 414
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    const v7, 0x108061c

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 415
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 416
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 417
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 420
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x3039

    .line 421
    .local v2, notifId:I
    if-eqz p1, :cond_2

    .line 423
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 424
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConnectNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setWifiReadyNotif(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 439
    const-string v6, "ApEntitlement"

    const-string v7, "setWifiReadyNotif()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 442
    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 471
    :goto_0
    return-void

    .line 446
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 449
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 450
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040566

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040567

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 454
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    .line 455
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    const v7, 0x108061b

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 456
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 457
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 458
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 461
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    add-int/lit16 v2, v6, 0x303a

    .line 462
    .local v2, notifId:I
    if-eqz p1, :cond_2

    .line 464
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 465
    iget-object v6, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiReadyNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 469
    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private startSelfProvision()V
    .locals 4

    .prologue
    .line 285
    const-string v2, "ApEntitlement"

    const-string v3, "startSelfProvision begins"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.motorola.SPG.ACTION_SPG_RESULT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, spgResponseFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/android/server/ApEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.SPG.ACTION_REQUEST_START_SPG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, spgIntent:Landroid/content/Intent;
    const-string v2, "com.motorola.SPG.FEATURE_CODE"

    const-string v3, "MHS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v2, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    return-void
.end method


# virtual methods
.method public CheckEntitlement(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 11
    .parameter "wifiConfig"

    .prologue
    const/4 v10, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 305
    const-string v7, "ApEntitlement"

    const-string v8, "checkEntitlement()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v7, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 310
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, simOperator:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v10, :cond_2

    .line 312
    :cond_0
    const-string v7, "ApEntitlement"

    const-string v8, "SIM operator is null or too small"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/server/ApEntitlement;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 321
    :try_start_0
    iget-object v7, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "APN_CHECK_STATE"

    invoke-static {v7, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/motorola/android/server/ApEntitlement;->mEntitlementCheckState:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    const-string v7, "ApEntitlement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved Entitlement State: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/android/server/ApEntitlement;->mEntitlementCheckState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget v7, p0, Lcom/motorola/android/server/ApEntitlement;->mEntitlementCheckState:I

    packed-switch v7, :pswitch_data_0

    :goto_1
    move v5, v6

    .line 345
    :goto_2
    return v5

    .line 314
    :cond_2
    const-string v7, "ApEntitlement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM operator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, simOperatorFiveChar:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v7, "00101"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 323
    .end local v3           #simOperatorFiveChar:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Throwable;
    const-string v7, "ApEntitlement"

    const-string v8, "From settings db: setting not found - Entitlement State"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    .end local v0           #e:Ljava/lang/Throwable;
    :pswitch_0
    const-string v7, "ApEntitlement"

    const-string v8, "Sending Intent to start entitlement check."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput-boolean v5, p0, Lcom/motorola/android/server/ApEntitlement;->mPendingWifiEnable:Z

    .line 333
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.motorola.intent.ACTION_ENTITLEMENT_CHECK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "com.motorola.permission.ENTITLEMENT"

    invoke-virtual {v5, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 337
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v7, "ApEntitlement"

    const-string v8, "SUCCESS : Dont start entitlement check."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v7, p0, Lcom/motorola/android/server/ApEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "WIFI_TETHER_PENDING"

    invoke-static {v7, v8, v6}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 341
    :pswitch_2
    iput-boolean v5, p0, Lcom/motorola/android/server/ApEntitlement;->mPendingWifiEnable:Z

    goto :goto_1

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
