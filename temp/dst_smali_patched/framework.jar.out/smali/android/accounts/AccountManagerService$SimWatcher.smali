.class Landroid/accounts/AccountManagerService$SimWatcher;
.super Landroid/content/BroadcastReceiver;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimWatcher"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mUserAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerService;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v2, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mContext:Landroid/content/Context;

    iput-object v2, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mUserAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    new-instance v2, Landroid/accounts/AccountManagerService$SimWatcher$1;

    invoke-direct {v2, p0}, Landroid/accounts/AccountManagerService$SimWatcher$1;-><init>(Landroid/accounts/AccountManagerService$SimWatcher;)V

    iput-object v2, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "phone"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    const-string v2, "AccountManagerService"

    const-string v3, "register LISTEN_OTASP_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x200

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iput-object p2, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mContext:Landroid/content/Context;

    #calls: Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {p1}, Landroid/accounts/AccountManagerService;->access$2100(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mUserAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    return-void
.end method

.method static synthetic access$2000(Landroid/accounts/AccountManagerService$SimWatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/accounts/AccountManagerService$SimWatcher;->simStateChanged()V

    return-void
.end method

.method private simStateChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .local v9, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_1

    const-string v10, "AccountManagerService"

    const-string v11, "failed to get TelephonyManager"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .local v2, imsi:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5

    .local v5, sn:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v11, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mUserAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    const-string v12, "imsi"

    #calls: Landroid/accounts/AccountManagerService;->getMetaValue(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11, v12}, Landroid/accounts/AccountManagerService;->access$2200(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, storedImsi:Ljava/lang/String;
    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v11, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mUserAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    const-string v12, "sn"

    #calls: Landroid/accounts/AccountManagerService;->getMetaValue(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11, v12}, Landroid/accounts/AccountManagerService;->access$2200(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, storedSn:Ljava/lang/String;
    const-string v10, "AccountManagerService"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "AccountManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current IMSI="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; stored IMSI="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "AccountManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current SN="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; stored SN="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    if-ne v10, v13, :cond_5

    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .local v4, service:Landroid/os/IBinder;
    if-nez v4, :cond_3

    const-string v10, "AccountManagerService"

    const-string v11, "call to checkService(TELEPHONY_SERVICE) failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .local v8, telephony:Lcom/android/internal/telephony/ITelephony;
    if-nez v8, :cond_4

    const-string v10, "AccountManagerService"

    const-string v11, "failed to get ITelephony interface"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_0
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, needsProvisioning:Z
    :goto_1
    if-eqz v3, :cond_5

    const-string v10, "AccountManagerService"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "AccountManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current IMSI="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (needs provisioning); stored IMSI="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3           #needsProvisioning:Z
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v10, "AccountManagerService"

    const-string v11, "exception while checking provisioning"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x1

    .restart local v3       #needsProvisioning:Z
    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #needsProvisioning:Z
    .end local v4           #service:Landroid/os/IBinder;
    .end local v8           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "AccountManagerService"

    const-string v11, "wiping all passwords and authtokens because IMSI and SN changed."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mUserAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_1
    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mUserAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v10}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v10, "DELETE from authtokens"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v10, "UPDATE accounts SET password = \'\' WHERE type!=\'com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE\' AND type!=\'com.motorola.blur.service.bsutils.motorola\'"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v12, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mUserAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v12}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v12

    #calls: Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    invoke-static {v10, v12}, Landroid/accounts/AccountManagerService;->access$2300(Landroid/accounts/AccountManagerService;I)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v11, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mUserAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    const-string v12, "imsi"

    #calls: Landroid/accounts/AccountManagerService;->setMetaValue(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12, v2}, Landroid/accounts/AccountManagerService;->access$2400(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v11, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mUserAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    const-string v12, "sn"

    #calls: Landroid/accounts/AccountManagerService;->setMetaValue(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12, v5}, Landroid/accounts/AccountManagerService;->access$2400(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v10

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-direct {p0}, Landroid/accounts/AccountManagerService$SimWatcher;->simStateChanged()V

    return-void
.end method
