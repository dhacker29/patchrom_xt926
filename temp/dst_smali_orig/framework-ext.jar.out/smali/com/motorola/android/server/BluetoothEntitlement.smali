.class public Lcom/motorola/android/server/BluetoothEntitlement;
.super Ljava/lang/Object;
.source "BluetoothEntitlement.java"


# static fields
.field private static final ACTION_RESPONSE_SPG:Ljava/lang/String; = "com.motorola.SPG.ACTION_SPG_RESULT"

.field private static final ACTION_START_SPG:Ljava/lang/String; = "com.motorola.SPG.ACTION_REQUEST_START_SPG"

.field private static final APN_CHECK_STATE:Ljava/lang/String; = "APN_CHECK_STATE"

.field private static final APP_DATA:Ljava/lang/String; = "com.motorola.SPG.APP_DATA"

.field private static final BT_TETHER_PENDING:Ljava/lang/String; = "BT_TETHER_PENDING"

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

.field private static final OPERATOR_NAME_ATT:Ljava/lang/String; = "att"

.field private static final OPERATOR_NAME_VZW:Ljava/lang/String; = "vzw"

.field private static final REQUEST_START_ENTITLEMENT_CHECK:Ljava/lang/String; = "com.motorola.intent.ACTION_ENTITLEMENT_CHECK"

.field private static final RESPONSE_SPG_SUCCESS:Ljava/lang/String; = "200"

.field private static final STATUS:Ljava/lang/String; = "com.motorola.SPG.STATUS"

.field private static final TAG:Ljava/lang/String; = "BluetoothEntitlement"


# instance fields
.field private mBluetoothAuthErrorNotif:Landroid/app/Notification;

.field private mBluetoothAuthNotif:Landroid/app/Notification;

.field private mBluetoothAuthSuccessNotif:Landroid/app/Notification;

.field private mBluetoothService:Landroid/bluetooth/IBluetooth;

.field private mContext:Landroid/content/Context;

.field private mEntitlementCheckState:I

.field private mOperatorName:Ljava/lang/String;

.field public mPendingBluetoothEnable:Z

.field private spgResponseReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mPendingBluetoothEnable:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mOperatorName:Ljava/lang/String;

    new-instance v1, Lcom/motorola/android/server/BluetoothEntitlement$2;

    invoke-direct {v1, p0}, Lcom/motorola/android/server/BluetoothEntitlement$2;-><init>(Lcom/motorola/android/server/BluetoothEntitlement;)V

    iput-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    :cond_0
    const-string v1, "com.motorola.service.entitlement"

    invoke-direct {p0, v1}, Lcom/motorola/android/server/BluetoothEntitlement;->isPackageFound(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "att"

    iput-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mOperatorName:Ljava/lang/String;

    :cond_1
    :goto_0
    const-string v1, "BluetoothEntitlement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOperatorName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/motorola/android/server/BluetoothEntitlement$1;

    invoke-direct {v2, p0}, Lcom/motorola/android/server/BluetoothEntitlement$1;-><init>(Lcom/motorola/android/server/BluetoothEntitlement;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "motorola.intent.ENTITLEMENT_STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_2
    const-string v1, "com.motorola.service.vzw.entitlement"

    invoke-direct {p0, v1}, Lcom/motorola/android/server/BluetoothEntitlement;->isPackageFound(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "vzw"

    iput-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mOperatorName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/motorola/android/server/BluetoothEntitlement;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I

    return v0
.end method

.method static synthetic access$002(Lcom/motorola/android/server/BluetoothEntitlement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/server/BluetoothEntitlement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/server/BluetoothEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthErrorNotif(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/server/BluetoothEntitlement;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/server/BluetoothEntitlement;->startSelfProvision()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/android/server/BluetoothEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthSuccesNotif(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/android/server/BluetoothEntitlement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthNotif(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/android/server/BluetoothEntitlement;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/server/BluetoothEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private createBluetoothTetherAuthIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private isPackageFound(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    const-string v2, "BluetoothEntitlement"

    const-string v3, "isPackageFound()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "BluetoothEntitlement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setBluetoothAuthErrorNotif(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const-string v4, "BluetoothEntitlement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBluetoothAuthErrorNotif() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .local v2, notifManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040571

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const v5, 0x1040572

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthErrorNotif:Landroid/app/Notification;

    if-nez v4, :cond_1

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthErrorNotif:Landroid/app/Notification;

    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthErrorNotif:Landroid/app/Notification;

    const v5, 0x1080558

    iput v5, v4, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthErrorNotif:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthErrorNotif:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthErrorNotif:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthErrorNotif:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->icon:I

    .local v1, notifId:I
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthErrorNotif:Landroid/app/Notification;

    iget-object v5, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/android/server/BluetoothEntitlement;->createBluetoothTetherAuthIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthErrorNotif:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setBluetoothAuthNotif(Z)V
    .locals 10
    .parameter "visible"

    .prologue
    const/4 v9, 0x0

    const-string v6, "BluetoothEntitlement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBluetoothAuthNotif() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x104056d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x104056e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthNotif:Landroid/app/Notification;

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthNotif:Landroid/app/Notification;

    const v7, 0x1080557

    iput v7, v6, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthNotif:Landroid/app/Notification;

    const/16 v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthNotif:Landroid/app/Notification;

    iget v2, v6, Landroid/app/Notification;->icon:I

    .local v2, notifId:I
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setBluetoothAuthSuccesNotif(Z)V
    .locals 10
    .parameter "visible"

    .prologue
    const/4 v9, 0x0

    const-string v6, "BluetoothEntitlement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBluetoothAuthSuccesNotif() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .local v3, notifManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x104056f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const v7, 0x1040570

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthSuccessNotif:Landroid/app/Notification;

    if-nez v6, :cond_1

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthSuccessNotif:Landroid/app/Notification;

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthSuccessNotif:Landroid/app/Notification;

    const v7, 0x1080556

    iput v7, v6, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthSuccessNotif:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthSuccessNotif:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthSuccessNotif:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthSuccessNotif:Landroid/app/Notification;

    iget v2, v6, Landroid/app/Notification;->icon:I

    .local v2, notifId:I
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthSuccessNotif:Landroid/app/Notification;

    iget-object v7, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mBluetoothAuthSuccessNotif:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private startSelfProvision()V
    .locals 4

    .prologue
    const-string v2, "BluetoothEntitlement"

    const-string v3, "startSelfProvision begins"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.motorola.SPG.ACTION_SPG_RESULT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, spgResponseFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/android/server/BluetoothEntitlement;->spgResponseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.SPG.ACTION_REQUEST_START_SPG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, spgIntent:Landroid/content/Intent;
    const-string v2, "com.motorola.SPG.FEATURE_CODE"

    const-string v3, "MHS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkEntitlement()Z
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "BluetoothEntitlement"

    const-string v8, "checkEntitlement()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .local v2, simOperator:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v10, :cond_2

    :cond_0
    const-string v7, "BluetoothEntitlement"

    const-string v8, "SIM operator is null or too small"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "APN_CHECK_STATE"

    invoke-static {v7, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I

    const-string v7, "BluetoothEntitlement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved entitlement State: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v7, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mEntitlementCheckState:I

    packed-switch v7, :pswitch_data_0

    :goto_1
    move v5, v6

    :goto_2
    return v5

    :cond_2
    const-string v7, "BluetoothEntitlement"

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

    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, simOperatorFiveChar:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v7, "00101"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .end local v3           #simOperatorFiveChar:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    const-string v7, "BluetoothEntitlement"

    const-string v8, "entitlement State not found."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :pswitch_0
    const-string v7, "BluetoothEntitlement"

    const-string v8, "Sending Intent to start entitlement check."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mPendingBluetoothEnable:Z

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.motorola.intent.ACTION_ENTITLEMENT_CHECK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    const-string v7, "com.motorola.permission.ENTITLEMENT"

    invoke-virtual {v5, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v7, "BluetoothEntitlement"

    const-string v8, "SUCCESS : Dont start entitlement check."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "BT_TETHER_PENDING"

    invoke-static {v7, v8, v6}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :pswitch_2
    iput-boolean v5, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mPendingBluetoothEnable:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clearAllNotifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "BluetoothEntitlement"

    const-string v1, "clearAllNotifications()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/server/BluetoothEntitlement;->mOperatorName:Ljava/lang/String;

    const-string v1, "att"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthNotif(Z)V

    invoke-direct {p0, v2}, Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthSuccesNotif(Z)V

    invoke-direct {p0, v2}, Lcom/motorola/android/server/BluetoothEntitlement;->setBluetoothAuthErrorNotif(Z)V

    :cond_0
    return-void
.end method
