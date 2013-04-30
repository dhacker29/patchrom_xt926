.class public Lcom/motorola/motepm/MotEPMPhoneStateListener;
.super Ljava/lang/Object;
.source "MotEPMPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;
    }
.end annotation


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_UPDATE_CONDITION_CHANGED:Ljava/lang/String; = "com.motorola.android.datamanager.service.backgound_data_update_condition_action"

.field public static final TAG:Ljava/lang/String; = "MotEPMPhoneStateListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

.field private mIsManualSync:Z

.field private mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

.field private mPolicyService:Landroid/net/INetworkPolicyManager;

.field private mRoaming:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mValueOfBeforeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    iput-object v2, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    iput-object v2, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-boolean v3, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mIsManualSync:Z

    iput-object v2, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mServiceState:Landroid/telephony/ServiceState;

    iput-object p1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v1, "mot_device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;

    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    invoke-direct {v0, p0, v2}, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;-><init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;Lcom/motorola/motepm/MotEPMPhoneStateListener$1;)V

    iput-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    iput-boolean v3, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mIsManualSync:Z

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mServiceState:Landroid/telephony/ServiceState;

    const-string v0, "MotEPMPhoneStateListener"

    const-string v1, "MotEPMPhoneStateListener constructor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/motepm/MotEPMPhoneStateListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/motepm/MotEPMPhoneStateListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->changeBackgroundDataValue()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Landroid/net/INetworkPolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/motepm/MotEPMPhoneStateListener;Landroid/net/INetworkPolicyManager;)Landroid/net/INetworkPolicyManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;

    return-object p1
.end method

.method private changeBackgroundDataValue()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "back_ground_data_backup_by_datamanager"

    invoke-static {v1, v4, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, mBackGroundData:I
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v4, "mot_device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManager;

    iput-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    :cond_0
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/motorola/motepm/MotDevicePolicyManager;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mIsManualSync:Z

    const-string v1, "MotEPMPhoneStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeBackgroundDataValue: mRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mIsManualSync="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mIsManualSync:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mIsManualSync:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->getRestrictBackground()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mValueOfBeforeChanged:I

    const-string v1, "MotEPMPhoneStateListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before mValueOfBeforeChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mValueOfBeforeChanged:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mValueOfBeforeChanged:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "back_ground_data_backup_by_datamanager"

    invoke-static {v1, v3, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->setRestrictBackground(Z)V

    const-string v1, "MotEPMPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mValueOfBeforeChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->getRestrictBackground()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_1

    invoke-direct {p0, v3}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->setRestrictBackground(Z)V

    goto :goto_1
.end method

.method private getRestrictBackground()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "MotEPMPhoneStateListener"

    const-string v3, "before getRestrictBackground."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;

    if-nez v2, :cond_0

    const-string v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;

    :cond_0
    iget-object v2, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v2}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MotEPMPhoneStateListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem talking with policy service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "MotEPMPhoneStateListener"

    const-string v3, "NetworkPolicy: a exception."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRestrictBackground(Z)V
    .locals 4
    .parameter "restrictBackground"

    .prologue
    const-string v1, "MotEPMPhoneStateListener"

    const-string v2, "setRestrictBackground()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/motepm/MotEPMPhoneStateListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/motepm/MotEPMPhoneStateListener$1;-><init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;)V

    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Boolean;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public registerForPhoneStateIntents()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    const-string v0, "MotEPMPhoneStateListener"

    const-string v1, "registerForPhoneStateIntents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    invoke-direct {p0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->changeBackgroundDataValue()V

    return-void
.end method

.method public unRegisterPhoneStateIntents()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    const-string v0, "MotEPMPhoneStateListener"

    const-string v1, "unRegisterPhoneStateIntents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    invoke-direct {p0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->changeBackgroundDataValue()V

    return-void
.end method
