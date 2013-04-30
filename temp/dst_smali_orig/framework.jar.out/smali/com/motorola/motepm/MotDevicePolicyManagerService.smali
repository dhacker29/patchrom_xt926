.class public Lcom/motorola/motepm/MotDevicePolicyManagerService;
.super Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$ReconcilePoliciesByPackages;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$PackageChangeHandler;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$IntentHandler;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;,
        Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    }
.end annotation


# static fields
.field private static final ALLOW_BROWSER_NOTIFICATION_ID:I = 0x2

.field private static final ALLOW_CAMERA_NOTIFICATION_ID:I = 0x4

.field public static final ALLOW_CONSUMER_EMAIL_NOTIFICATION_ID:I = 0xa

.field private static final ALLOW_POP3_IMAP4_EMAIL_NOTIFICATION_ID:I = 0x8

.field private static final ALLOW_SDCARD_NOTIFICATION_ID:I = 0x5

.field private static final ALLOW_TEXT_MESSAGE_NOTIFICATION_ID:I = 0x1

.field private static final ALLOW_VPN_NOTIFICATION_ID:I = 0xc

.field private static final ALLOW_VPN_SPLIT_TUNNELING_NOTIFICATION_ID:I = 0xd

.field public static final APP_BLACKLIST_NOTIFICATION_ID:I = 0xe

.field public static final APP_WHITELIST_NOTIFICATION_ID:I = 0xf

.field private static final AUXILIARY_SERVICE_INTENT:Landroid/content/Intent; = null

.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final COMPONET_NAME:Ljava/lang/String; = "componet_name"

.field static final DEBUG_POLICY:Z = true

.field private static final DEFAULT_ROUTE:Ljava/lang/String; = "0.0.0.0/0 ::/0"

.field private static final DISABLE_PACKAGE_GMAIL:Ljava/lang/String; = "com.google.android.gm"

.field private static LOG_FILE:Ljava/io/File; = null

.field static final MAX_EXPIRATION_WARNING_DAYS:I = 0xe

.field static final MILLSSECONDS_FOR_ONE_DAY:I = 0x5265c00

.field private static final NATIVE_STATUS:Ljava/lang/String; = "native_status"

.field private static final POLICY_NAME:Ljava/lang/String; = "policy_name"

#the value of this static final field might be set in the static constructor
.field private static final POLICY_NOTIFICATION_IDS_END:I = 0x0

.field private static final POLICY_NOTIFICATION_IDS_START:I = 0x64

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final RESULT_CODE:Ljava/lang/String; = "result_code"

.field private static final SHOW_KEYGUARD_NOW_ACTION:Ljava/lang/String; = "com.motorola.internal.intent.SHOW_KEYGUARD_NOW"

.field static final TAG:Ljava/lang/String; = "MotDevicePolicyManagerService"

.field static final VERSION:Ljava/lang/String; = "1.5.0"

.field private static final VPN_DISABLED_BY_POLICY:Ljava/lang/String; = "com.motorola.app.action.VPN_DISABLED"

.field private static mDisablePackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static volatile sInstance:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# instance fields
.field mActivePasswordComplexity:I

.field mActivePasswordSimple:Z

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

.field private final mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

.field private final mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

.field private volatile mAuxiliaryService:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

.field private final mAuxiliaryServiceListener:Landroid/content/ServiceConnection;

.field private final mBlackListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;

.field final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field mExpirationWarningDate:I

.field mIPowerManager:Landroid/os/IPowerManager;

.field final mMonitor:Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;

.field mPackageChangeListenerReceiver:Landroid/content/BroadcastReceiver;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPasswordChangedDate:I

.field private mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

.field private final mPreloadedAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWhiteListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v4, Ljava/io/File;

    const-string v5, "/cache/recovery"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    const-string v6, "command"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->COMMAND_FILE:Ljava/io/File;

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    const-string v6, "log"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->LOG_FILE:Ljava/io/File;

    const/16 v1, 0x64

    .local v1, notificationId:I
    sget-object v4, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/motepm/Policy;

    .local v3, policy:Lcom/motorola/motepm/Policy;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #notificationId:I
    .local v2, notificationId:I
    invoke-virtual {v3, v1}, Lcom/motorola/motepm/Policy;->setNotificationId(I)V

    move v1, v2

    .end local v2           #notificationId:I
    .restart local v1       #notificationId:I
    goto :goto_0

    .end local v3           #policy:Lcom/motorola/motepm/Policy;
    :cond_0
    add-int/lit8 v4, v1, -0x1

    sput v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->POLICY_NOTIFICATION_IDS_END:I

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->AUXILIARY_SERVICE_INTENT:Landroid/content/Intent;

    sget-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->AUXILIARY_SERVICE_INTENT:Landroid/content/Intent;

    const-string v5, "com.motorola.devicemanagement"

    const-string v6, "com.motorola.devicemanagement.MotDevicePolicyManagerAuxiliaryService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;-><init>()V

    iput v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    iput v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    iput v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    iput-boolean v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-direct {v5, p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-direct {v5, p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-direct {v5, p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;

    invoke-direct {v5, p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mBlackListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;

    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;

    invoke-direct {v5, p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mWhiteListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPreloadedAppsList:Ljava/util/List;

    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;

    invoke-direct {v5, p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAuxiliaryServiceListener:Landroid/content/ServiceConnection;

    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;

    invoke-direct {v5, p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$4;

    invoke-direct {v5, p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$4;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageChangeListenerReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;

    invoke-direct {v5, p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mMonitor:Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mMonitor:Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;

    invoke-virtual {v5, p1, v6, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    sput-object p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sInstance:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    sget-object v5, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/motepm/Policy;

    .local v4, policy:Lcom/motorola/motepm/Policy;
    invoke-virtual {v4, p0}, Lcom/motorola/motepm/Policy;->onMainServiceBound(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    goto :goto_0

    .end local v4           #policy:Lcom/motorola/motepm/Policy;
    :cond_0
    sget-object v5, Lcom/motorola/motepm/MotDevicePolicyManagerService;->AUXILIARY_SERVICE_INTENT:Landroid/content/Intent;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAuxiliaryServiceListener:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, filter:Landroid/content/IntentFilter;
    const/16 v5, 0x3e8

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v5, Lcom/motorola/motepm/Policy;->POLICIES_BY_BROADCAST:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #action:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v5, Lcom/motorola/motepm/MotEPMPhoneStateListener;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/motorola/motepm/MotEPMPhoneStateListener;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, packageChangeFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "package"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageChangeListenerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotEPMPhoneStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppBlackLists()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedAppsIncludingPreloadedApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/motorola/motepm/MotDevicePolicyManagerService;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/motorola/motepm/MotDevicePolicyManagerService;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppWhiteListLocked(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAuxiliaryService:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;)Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAuxiliaryService:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    return-object p1
.end method

.method static synthetic access$600()Landroid/content/Intent;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->AUXILIARY_SERVICE_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/motepm/MotDevicePolicyManagerService;Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/motepm/MotDevicePolicyManagerService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z

    move-result v0

    return v0
.end method

.method private blockEmailPort(Z)Z
    .locals 8
    .parameter "blocked"

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .local v3, mNetd:Landroid/os/INetworkManagementService;
    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    :try_start_1
    const-string v1, "-A OUTPUT -p tcp --syn --dport 110 -j DROP"

    .local v1, command:Ljava/lang/String;
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-A OUTPUT -p tcp --syn --dport 143 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-A OUTPUT -p tcp --syn --dport 585 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-A OUTPUT -p tcp --syn --dport 993 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-A OUTPUT -p tcp --syn --dport 995 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-A OUTPUT -p tcp --syn --dport 25 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-A OUTPUT -p tcp --syn --dport 465 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-A OUTPUT -p tcp --syn --dport 587 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1           #command:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return v4

    :cond_1
    :try_start_3
    const-string v1, "-D OUTPUT -p tcp --syn --dport 110 -j DROP"

    .restart local v1       #command:Ljava/lang/String;
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-D OUTPUT -p tcp --syn --dport 143 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-D OUTPUT -p tcp --syn --dport 585 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-D OUTPUT -p tcp --syn --dport 993 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-D OUTPUT -p tcp --syn --dport 995 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-D OUTPUT -p tcp --syn --dport 25 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-D OUTPUT -p tcp --syn --dport 465 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    const-string v1, "-D OUTPUT -p tcp --syn --dport 587 -j DROP"

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v1           #command:Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    :try_start_4
    monitor-exit p0

    goto :goto_1

    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #mNetd:Landroid/os/INetworkManagementService;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v3       #mNetd:Landroid/os/INetworkManagementService;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalStateException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private static bootCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/FileWriter;

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .local v0, command:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reboot failed (no permissions?)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1           #pm:Landroid/os/PowerManager;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v2
.end method

.method private deleteAllConfigs(Ljava/lang/String;)V
    .locals 12
    .parameter "admin"

    .prologue
    const/high16 v11, 0x1000

    invoke-static {}, Lcom/motorola/motepm/MotEdmDb;->getInstance()Lcom/motorola/motepm/MotEdmDb;

    move-result-object v4

    .local v4, edmDb:Lcom/motorola/motepm/MotEdmDb;
    invoke-virtual {v4, p1}, Lcom/motorola/motepm/MotEdmDb;->getEmailUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    .local v5, emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v4, p1}, Lcom/motorola/motepm/MotEdmDb;->getVpnUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v8

    .local v8, vpnUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v4, p1}, Lcom/motorola/motepm/MotEdmDb;->getCertUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    .local v3, certUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.motorola.email.DELETE_ACCOUNT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v1, v9, [Ljava/lang/String;

    .local v1, allEmailIDs:[Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v9, "email_array"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "LENGTH"

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v1           #allEmailIDs:[Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    if-eqz v8, :cond_1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .local v7, vpnIDBundle:Landroid/os/Bundle;
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .local v2, allVpnIDs:[Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v9, "VPN_ID"

    invoke-virtual {v7, v9, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v9, "LENGTH"

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.motorola.intent.action.DEL_VPN_PROFILE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6       #intent:Landroid/content/Intent;
    const-string v9, "bundle"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v2           #allVpnIDs:[Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #vpnIDBundle:Landroid/os/Bundle;
    :cond_1
    if-eqz v3, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.motorola.intent.action.CERT_DELETE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .local v0, allCertificates:[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v9, "NAME"

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "LENGTH"

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v0           #allCertificates:[Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v4, p1}, Lcom/motorola/motepm/MotEdmDb;->deleteAdmin(Ljava/lang/String;)Z

    return-void
.end method

.method private dismissVpnDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.app.action.VPN_DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getAllAppBlackLists()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, appsBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v0, adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, blackListedApp:Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v2           #blackListedApp:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "getAllAppBlackLists - no app blacklist set for all administrators"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit p0

    return-object v1

    :cond_3
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAllAppBlackLists - consolidated apps blacklists="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getAllAppWhiteLists()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, appsWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit p0

    :goto_0
    return-object v1

    :cond_0
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v0, adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, whiteListedApp:Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #whiteListedApp:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "getAllAppWhiteLists - no app whitelist set for all administrators"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit p0

    goto :goto_0

    :cond_4
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAllAppWhiteLists - consolidated apps whitelists="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private getCurrentWhiteListedApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppWhiteLists()Ljava/util/List;

    move-result-object v1

    .local v1, appsWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v0, adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0           #adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "getCurrentWhiteListedApps - no whitelisted apps"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_2
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentWhiteListedApps - whitelisted apps="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCurrentWhiteListedAppsIncludingPreloadedApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, appsWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPreloadedApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "getCurrentWhiteListedAppsIncludingSystemApps - no whitelisted apps"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    :cond_0
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_0

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method static getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sInstance:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    return-object v0
.end method

.method private getPreloadedApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPreloadedAppsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2080

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .local v2, installedAppsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPreloadedAppsList:Ljava/util/List;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPreloadedAppsList:Ljava/util/List;

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #installedAppsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_1
    return-object v3

    :cond_3
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPreloadedAppsList:Ljava/util/List;

    goto :goto_1
.end method

.method private hasMountedRemovableSdcard()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .local v4, mMntSvc:Landroid/os/storage/IMountService;
    :try_start_0
    const-string v10, "mount"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "Fail to get MountService!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v8

    .local v8, volumes:[Landroid/os/Parcelable;
    move-object v1, v8

    .local v1, arr$:[Landroid/os/Parcelable;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v6, v1, v2

    .local v6, s:Landroid/os/Parcelable;
    move-object v0, v6

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object v7, v0

    .local v7, volume:Landroid/os/storage/StorageVolume;
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "volume = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/mnt/usbdisk"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "mounted"

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #arr$:[Landroid/os/Parcelable;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #s:Landroid/os/Parcelable;
    .end local v7           #volume:Landroid/os/storage/StorageVolume;
    .end local v8           #volumes:[Landroid/os/Parcelable;
    :catch_0
    move-exception v5

    .local v5, re:Ljava/lang/Exception;
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "Error in hasMountedRemovableSdcard()"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAppWhiteListDisabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v0, adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    if-ne v3, v2, :cond_0

    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "App WhiteList is enabled by at least one of the admins."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit p0

    .end local v0           #adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v2

    :cond_1
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "App WhiteList is disabled by all admins."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "targetPackage"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPopImapEmailAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    monitor-exit p0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    if-nez v4, :cond_2

    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isPopImapEmailAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isPopImapEmailAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isSDCardAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    monitor-exit p0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    if-nez v4, :cond_2

    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isSDCardAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isSDCardAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isSimplePasswordAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    monitor-exit p0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-nez v4, :cond_2

    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isSimplePasswordAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isSimplePasswordAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized isVPNAllowed(Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "who"

    .prologue
    monitor-enter p0

    const/4 v3, 0x1

    .local v3, ret:Z
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    :goto_0
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVPNAllowed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    .local v3, ret:Z
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    :goto_0
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVPNSplitTunnelingAllowed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private loadDisablelistLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x1

    sget-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    if-nez v10, :cond_0

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    sput-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    :cond_0
    sget-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFileForDisabledList()Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    .local v2, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v6, 0x0

    .local v6, stream:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v1

    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .end local v6           #stream:Ljava/io/FileInputStream;
    .local v7, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, type:I
    if-eq v9, v13, :cond_2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .local v8, tag:Ljava/lang/String;
    const-string v10, "disabledlist"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "disablelist do not start with disabledlist tag: found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7

    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    :catch_0
    move-exception v0

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/lang/NullPointerException;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :goto_0
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_3
    :goto_2
    return-void

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    .restart local v8       #tag:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_4
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .local v4, outerDepth:I
    :cond_5
    :goto_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v13, :cond_7

    if-ne v9, v14, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_7

    :cond_6
    if-eq v9, v14, :cond_5

    const/4 v10, 0x4

    if-eq v9, v10, :cond_5

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "packagename"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    :try_start_4
    sget-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_3

    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_5
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed loading packagename "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_3

    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #outerDepth:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    :catch_2
    move-exception v0

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/lang/NumberFormatException;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :goto_4
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v4       #outerDepth:I
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    .restart local v8       #tag:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_7
    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v4           #outerDepth:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    :catch_3
    move-exception v0

    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    :goto_6
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_6
    move-exception v10

    goto/16 :goto_2

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    :catch_a
    move-exception v0

    goto/16 :goto_4

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method

.method private loadSettingsLocked()V
    .locals 15

    .prologue
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v8, 0x0

    .local v8, stream:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v3

    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7

    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v9, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v7, v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, type:I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .local v10, tag:Ljava/lang/String;
    const-string v12, "policies"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v12, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Settings do not start with policies tag: found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5

    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_0
    move-exception v2

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/lang/NullPointerException;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_0
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v8, :cond_2

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_2
    :goto_2
    return-void

    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_3
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .local v6, outerDepth:I
    :cond_4
    :goto_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_c

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v6, :cond_c

    :cond_5
    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    const/4 v12, 0x4

    if-eq v11, v12, :cond_4

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "admin"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v5

    .local v5, name:Ljava/lang/String;
    :try_start_4
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDeviceAdminInfo;

    move-result-object v1

    .local v1, dai:Lcom/motorola/motepm/MotDeviceAdminInfo;
    if-eqz v1, :cond_4

    new-instance v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;-><init>(Lcom/motorola/motepm/MotDeviceAdminInfo;)V

    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    iget-object v13, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v13}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    .end local v0           #ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v1           #dai:Lcom/motorola/motepm/MotDeviceAdminInfo;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_5
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed loading admin "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    .end local v2           #e:Ljava/lang/RuntimeException;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_2
    move-exception v2

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/lang/NumberFormatException;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_4
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v6       #outerDepth:I
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_6
    :try_start_6
    const-string v12, "password-changed-date"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3

    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_3
    move-exception v2

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_5
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v6       #outerDepth:I
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_7
    :try_start_7
    const-string v12, "expiration-warning-date"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_3

    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_4
    move-exception v2

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_6
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v6       #outerDepth:I
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_8
    :try_start_8
    const-string v12, "password-simple"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :goto_7
    iput-boolean v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_3

    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_5
    move-exception v2

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_8
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v6       #outerDepth:I
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_9
    const/4 v12, 0x0

    goto :goto_7

    :cond_a
    :try_start_9
    const-string v12, "password-complexity"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    :cond_b
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown tag: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_3

    :cond_c
    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_6
    move-exception v12

    goto/16 :goto_2

    :catch_7
    move-exception v2

    goto :goto_8

    :catch_8
    move-exception v2

    goto/16 :goto_6

    :catch_9
    move-exception v2

    goto/16 :goto_5

    :catch_a
    move-exception v2

    goto/16 :goto_4

    :catch_b
    move-exception v2

    goto/16 :goto_0
.end method

.method private logStat(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .parameter "who"
    .parameter "operationName"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logStat(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "who"
    .parameter "operationName"
    .parameter "data"

    .prologue
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .local v4, pinfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, title:Ljava/lang/CharSequence;
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .local v2, appVersionName:Ljava/lang/String;
    iget v1, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, appVersionCode:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";app="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";vercode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";vername="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, statement:Ljava/lang/String;
    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "logStat: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "MOT_POLICY_MNGR"

    invoke-static {v8, v9, v6}, Lcom/motorola/android/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #appVersionCode:I
    .end local v2           #appVersionName:Ljava/lang/String;
    .end local v4           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #statement:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .restart local v5       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "logStat: null administrator"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .locals 5

    .prologue
    const-string v0, "/data/system/mot_device_policies.xml"

    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/mot_device_policies.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/mot_device_policies.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private static makeJournaledFileForDisabledList()Lcom/android/internal/util/JournaledFile;
    .locals 5

    .prologue
    const-string v0, "/data/system/mot_device_disabled_list.xml"

    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/mot_device_disabled_list.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/mot_device_disabled_list.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private managePackages([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "packagesToEnable"
    .parameter "packagesToDisable"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.devicemanagement.MOTOROLA_DPM_APP_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v1, "EXTRA_MOTOROLA_DPM_BLACK_LIST_APP_TO_ENABLE_APPS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "EXTRA_MOTOROLA_DPM_BLACK_LIST_APP_TO_DISABLE_APPS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private managePackagesSafely(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, packagesToEnable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, packagesToDisable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "[BEGIN] managePackagesSafely"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #packagesToEnable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .restart local p1       #packagesToEnable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #packagesToDisable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .restart local p2       #packagesToDisable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, packagesToEnableAux:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Before processing apps to be enabled against other policies:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-direct {p0, v8, v7, v11}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-direct {p0, v8, v7, v11}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-direct {p0, v8, v7, v11}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "After processing apps to be enabled against allow policies by packages:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppBlackLists()Ljava/util/List;

    move-result-object v2

    .local v2, allBlackListedPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, blackListedPackageName:Ljava/lang/String;
    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v3           #blackListedPackageName:Ljava/lang/String;
    :cond_2
    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "After processing apps to be enabled against blacklisted apps:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedAppsIncludingPreloadedApps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    :cond_3
    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "After processing apps to be enabled against whitelisted apps:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #allBlackListedPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, packagesToDisableAux:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Before processing apps to be disabled against other policies:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    .local v1, adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1       #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, admin:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #admin:Landroid/content/ComponentName;
    :cond_7
    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "After processing apps to be disabled against the admin list:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.motorola.devicemanagement.MOTOROLA_DPM_APP_CONTROL"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, i:Landroid/content/Intent;
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    const-string v9, "EXTRA_MOTOROLA_DPM_BLACK_LIST_APP_TO_ENABLE_APPS"

    new-array v8, v12, [Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    const-string v9, "EXTRA_MOTOROLA_DPM_BLACK_LIST_APP_TO_DISABLE_APPS"

    new-array v8, v12, [Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "[END] managePackagesSafely"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reconcileAdministrators()V
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    .local v4, updated:Z
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, index:I
    :goto_0
    if-ltz v3, :cond_1

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, adminReceiver:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v1           #adminReceiver:Landroid/content/ComponentName;
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    :cond_2
    return-void
.end method

.method private removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V
    .locals 5
    .parameter "strategy"
    .parameter
    .parameter "checkIfAllowPolicyIsEnabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->isPolicyAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPackages()[Ljava/lang/String;

    move-result-object v0

    .local v0, allowPoliciesPackages:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    const-string v2, "MotDevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking conflict with allow package policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, v0, v1

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "Conflict detected!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, v0, v1

    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private saveDisablelistLocked()V
    .locals 9

    .prologue
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFileForDisabledList()Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    .local v2, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v4, 0x0

    .local v4, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #stream:Ljava/io/FileOutputStream;
    .local v5, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v3, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v6, 0x0

    const-string v7, "disabledlist"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    const/4 v6, 0x0

    const-string v7, "packagename"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    const-string v8, "name"

    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "packagename"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    :cond_0
    const/4 v6, 0x0

    const-string v7, "disabledlist"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .end local v3           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    :goto_2
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_3

    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v5       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private sendChangedNotification()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 9
    .parameter "notification_id"
    .parameter "title"
    .parameter "details"

    .prologue
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "######sendPolicyChangedNotification is called"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .local v4, mNotificationMgr:Landroid/app/NotificationManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080371

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .local v3, mNotification:Landroid/app/Notification;
    invoke-virtual {v4, p1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mNotification:Landroid/app/Notification;
    .end local v4           #mNotificationMgr:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private setAllowPolicy(Landroid/content/ComponentName;Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Z)I
    .locals 11
    .parameter "administratorComponentName"
    .parameter "policyStrategy"
    .parameter "enabled"

    .prologue
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "[BEGIN] setAllowPolicy"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .local v7, result:I
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "administratorComponentName param cannot be null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "policyStrategy param cannot be null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "administrator="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " policyStrategy="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPolicyName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " enabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getAdministratorPolicy()I

    move-result v8

    invoke-virtual {p0, p1, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, administratorApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_2

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "administratorComponentName param is invalid."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .local v3, ident:J
    :try_start_2
    invoke-virtual {p2, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v5

    .local v5, initialPolicyStatus:Z
    if-eq v5, p3, :cond_5

    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "previous and current policy are not the same, processing it"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->isPolicyAllowed()Z

    move-result v2

    .local v2, before:Z
    invoke-virtual {p2, v0, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->setPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V

    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->isPolicyAllowed()Z

    move-result v1

    .local v1, after:Z
    if-eq v2, v1, :cond_4

    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "sending intent to enable/disable policy."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->enablePackagesSafely(Ljava/util/List;)V

    :goto_0
    invoke-virtual {p2, p1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->notifyPolicyChanged(Landroid/content/ComponentName;Z)V

    invoke-virtual {p2, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->onPolicyChanged(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v1           #after:Z
    .end local v2           #before:Z
    :goto_2
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->isPolicyAllowed()Z

    move-result v6

    .local v6, isPolicyAllowed:Z
    if-eq v6, p3, :cond_6

    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "Current set conflicts with another administrator setting\n[END] setAllowPolicy"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x3

    :goto_3
    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPolicyId()I

    move-result v8

    invoke-virtual {p0, p1, v8, v7, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v7

    .end local v6           #isPolicyAllowed:Z
    .restart local v1       #after:Z
    .restart local v2       #before:Z
    :cond_3
    :try_start_4
    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->disablePackagesSafely(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .end local v1           #after:Z
    .end local v2           #before:Z
    .end local v5           #initialPolicyStatus:Z
    :catchall_1
    move-exception v8

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v1       #after:Z
    .restart local v2       #before:Z
    .restart local v5       #initialPolicyStatus:Z
    :cond_4
    :try_start_6
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "policy status did not change after updating current administrator"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #after:Z
    .end local v2           #before:Z
    :cond_5
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "nothing to do, previous and newer policy settings are the same"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .restart local v6       #isPolicyAllowed:Z
    :cond_6
    :try_start_7
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "Sucess\n[END] setAllowPolicy"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v7, 0x0

    goto :goto_3
.end method

.method private setAppWhiteListDisabledLocked()V
    .locals 8

    .prologue
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x2080

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .local v4, installedAppsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, nonPreloadedAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, ident:J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->enablePackagesSafely(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2           #ident:J
    :cond_2
    return-void

    .restart local v2       #ident:J
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private setAppWhiteListLocked(Ljava/util/List;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "MotDevicePolicyManagerService"

    const-string v14, "[BEGIN] setAppWhiteListLocked"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "appWhiteList param cannot be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v14, 0x2080

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v9

    .local v9, installedAppsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, nonPreloadedAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .local v5, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v13, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_1

    iget v13, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v13, v13, 0x80

    if-nez v13, :cond_1

    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v5           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, appWhiteListAux:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v13, "MotDevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Non System apps:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "MotDevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "To be whitelisted apps:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedApps()Ljava/util/List;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    :cond_3
    const-string v13, "MotDevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "After processing whitelisted apps against other admin whitelists:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppBlackLists()Ljava/util/List;

    move-result-object v3

    .local v3, allBlackListedPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, whitePackageName:Ljava/lang/String;
    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v4, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v12           #whitePackageName:Ljava/lang/String;
    :cond_5
    const-string v13, "MotDevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "After processing whitelisted apps against blacklisted apps:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v14}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v14}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v14}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    const-string v13, "MotDevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "After processing whitelisted apps against allow policies by packages:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    .local v2, adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2       #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, admin:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1           #admin:Landroid/content/ComponentName;
    :cond_7
    const-string v13, "MotDevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "After processing whitelisted apps to add app administrators:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, packageName:Ljava/lang/String;
    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v11           #packageName:Ljava/lang/String;
    :cond_8
    const-string v13, "MotDevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Non System apps to be disabled:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, ident:J
    const/4 v13, 0x0

    :try_start_0
    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v4, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v10, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->managePackages([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v7           #ident:J
    :cond_9
    const-string v13, "MotDevicePolicyManagerService"

    const-string v14, "[END] setAppWhiteListLocked"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .restart local v7       #ident:J
    :catchall_0
    move-exception v13

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
.end method

.method private setPackageDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "bDisabled"

    .prologue
    monitor-enter p0

    if-eqz p2, :cond_2

    :try_start_0
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveDisablelistLocked()V

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveDisablelistLocked()V

    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPopImapEmailAllowed(Landroid/content/ComponentName;Z)I
    .locals 1
    .parameter "who"
    .parameter "enabled"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private setSDCardAllowed(Landroid/content/ComponentName;Z)I
    .locals 10
    .parameter "who"
    .parameter "enabled"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "ComponentName is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_0
    const/4 v6, 0x0

    .local v6, result:I
    const/16 v7, 0x67

    :try_start_1
    invoke-virtual {p0, p1, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .local v3, ident:J
    const/4 v7, 0x0

    :try_start_2
    invoke-direct {p0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v2

    .local v2, beforeStatus:Z
    iget-boolean v7, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    if-eq v7, p2, :cond_2

    iput-boolean p2, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    const-string v7, "MotDevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "######setSDCardAllowed, enabled is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .local v0, afterStatus:Z
    if-eq v2, v0, :cond_1

    if-eqz p2, :cond_4

    const-string v7, "MotDevicePolicyManagerService"

    const-string v8, "######setSDCardAllowed, all admins allow SD card"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, intent:Landroid/content/Intent;
    const-string v7, "MotDevicePolicyManagerService"

    const-string v8, "######setSDCardAllowed, enable intent sent"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v5           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0           #afterStatus:Z
    :cond_2
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v7

    if-eq v7, p2, :cond_3

    const/4 v6, -0x3

    :cond_3
    const-string v7, "MotDevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSDCardAllowed return value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v6

    .restart local v0       #afterStatus:Z
    :cond_4
    :try_start_4
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5       #intent:Landroid/content/Intent;
    const-string v7, "MotDevicePolicyManagerService"

    const-string v8, "######setSDCardAllowed, disable intent sent"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .end local v0           #afterStatus:Z
    .end local v2           #beforeStatus:Z
    .end local v5           #intent:Landroid/content/Intent;
    :catchall_1
    move-exception v7

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private setSimplePasswordAllowed(Landroid/content/ComponentName;Z)I
    .locals 5
    .parameter "who"
    .parameter "enabled"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    const/4 v1, 0x0

    .local v1, result:I
    const/16 v2, 0x6a

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-eq v2, p2, :cond_1

    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    const-string v2, "MotDevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "######setSimplePasswordAllowed, enabled is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSimplePasswordAllowed(Landroid/content/ComponentName;)Z

    move-result v2

    if-eq v2, p2, :cond_2

    const/4 v1, -0x3

    :cond_2
    const-string v2, "MotDevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimplePasswordAllowed return value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method private declared-synchronized setVPNAllowed(Landroid/content/ComponentName;Z)I
    .locals 13
    .parameter "admin"
    .parameter "enabled"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "ComponentName is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_0
    const/4 v8, 0x0

    .local v8, result:I
    const/16 v10, 0x75

    :try_start_1
    invoke-virtual {p0, p1, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v7, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    .local v7, nativeStatus:Z
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v6

    .local v6, mBeforeStatus:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .local v2, ident:J
    if-eq v7, p2, :cond_3

    :try_start_2
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "######setVPNAllowed, enabled is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v5

    .local v5, mAfterStatus:Z
    if-eq v6, v5, :cond_3

    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.VPN_DISABLED_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    const-string v11, "MotDevicePolicyManagerService"

    if-eqz p2, :cond_5

    const-string v10, "######setVPNAllowed, enable intent sent"

    :goto_0
    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "policy_name"

    const/16 v11, 0xd

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "componet_name"

    invoke-virtual {v4, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "native_status"

    invoke-virtual {v4, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "connectivity"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v9

    .local v9, service:Landroid/net/IConnectivityManager;
    if-eqz v9, :cond_6

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "[Legacy VPN]"

    invoke-interface {v9, v11, v12}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->dismissVpnDialog(Landroid/content/Context;)V

    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v9           #service:Landroid/net/IConnectivityManager;
    :cond_2
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "sys.vpn.tun.enabled"

    const-string v11, "1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mAfterStatus:Z
    :cond_3
    :goto_2
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v10

    if-eq v10, p2, :cond_4

    const/4 v8, -0x3

    :cond_4
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setVPNAllowed return value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v8

    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #mAfterStatus:Z
    :cond_5
    :try_start_4
    const-string v10, "######setVPNAllowed, disable intent sent"

    goto :goto_0

    .restart local v9       #service:Landroid/net/IConnectivityManager;
    :cond_6
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "System error, ConnectivityService not found!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto :goto_1

    .end local v9           #service:Landroid/net/IConnectivityManager;
    :cond_7
    const-string v10, "sys.vpn.tun.enabled"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mAfterStatus:Z
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception found in setVPNAllowed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private setVPNSplitTunnelingAllowed(Landroid/content/ComponentName;Z)I
    .locals 13
    .parameter "admin"
    .parameter "enabled"

    .prologue
    const/4 v11, 0x0

    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "ComponentName is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    const/4 v8, 0x0

    .local v8, result:I
    const/16 v10, 0x75

    invoke-virtual {p0, p1, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v7, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    .local v7, nativeStatus:Z
    invoke-direct {p0, v11}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z

    move-result v6

    .local v6, mBeforeStatus:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, ident:J
    if-eq v7, p2, :cond_1

    :try_start_0
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "######setVPNSplitTunnelingAllowed, enabled is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z

    move-result v5

    .local v5, mAfterStatus:Z
    if-eq v6, v5, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.VPN_SPLIT_TUNNELING_DISABLED_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    const-string v11, "MotDevicePolicyManagerService"

    if-eqz p2, :cond_3

    const-string v10, "######setVPNSplitTunnelingAllowed, enable intent sent"

    :goto_0
    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "policy_name"

    const/16 v11, 0xc

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "componet_name"

    invoke-virtual {v4, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "native_status"

    invoke-virtual {v4, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "connectivity"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v9

    .local v9, service:Landroid/net/IConnectivityManager;
    if-eqz v9, :cond_4

    const-string v10, "0.0.0.0/0 ::/0"

    invoke-interface {v9, v10}, Landroid/net/IConnectivityManager;->addRouteForVpn(Ljava/lang/String;)Z

    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mAfterStatus:Z
    .end local v9           #service:Landroid/net/IConnectivityManager;
    :cond_1
    :goto_1
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eq v10, p2, :cond_2

    const/4 v8, -0x3

    :cond_2
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setVPNSplitTunnelingAllowed return value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #mAfterStatus:Z
    :cond_3
    :try_start_1
    const-string v10, "######setVPNSplitTunnelingAllowed, disable intent sent"

    goto :goto_0

    .restart local v9       #service:Landroid/net/IConnectivityManager;
    :cond_4
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "System error, ConnectivityService not found!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    goto :goto_1

    .end local v9           #service:Landroid/net/IConnectivityManager;
    :cond_5
    const-string v10, "connectivity"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v9

    .restart local v9       #service:Landroid/net/IConnectivityManager;
    if-eqz v9, :cond_6

    const-string v10, "0.0.0.0/0 ::/0"

    invoke-interface {v9, v10}, Landroid/net/IConnectivityManager;->delRouteForVpn(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mAfterStatus:Z
    .end local v9           #service:Landroid/net/IConnectivityManager;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception found in setVPNAllowed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #mAfterStatus:Z
    .restart local v9       #service:Landroid/net/IConnectivityManager;
    :cond_6
    :try_start_3
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "System error, ConnectivityService not found!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v8, -0x1

    goto :goto_1
.end method

.method private validateAppBlackListPackages(Ljava/util/List;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android"

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .local v6, sys:Landroid/content/pm/PackageInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, packageName:Ljava/lang/String;
    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Checking if package="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is valid."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x40

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_0

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is a system app and can not be black listed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #sys:Landroid/content/pm/PackageInfo;
    :goto_1
    return v7

    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #packageName:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    .local v1, adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1       #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, admin:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "MotDevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is an administrator and can not be black listed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0           #admin:Landroid/content/ComponentName;
    .end local v1           #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #sys:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #sys:Landroid/content/pm/PackageInfo;
    :cond_4
    const/4 v7, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addEmailAccount(Landroid/os/Bundle;)V
    .locals 13
    .parameter "extraArgs"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x6f

    invoke-virtual {p0, v10, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->build(Landroid/os/Bundle;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;

    move-result-object v5

    .local v5, emailIntent:Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;
    if-eqz v5, :cond_1

    const-string v9, "email"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, emailAddr:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, ident:J
    :try_start_0
    invoke-static {}, Lcom/motorola/motepm/MotEdmDb;->getInstance()Lcom/motorola/motepm/MotEdmDb;

    move-result-object v3

    .local v3, edmDb:Lcom/motorola/motepm/MotEdmDb;
    iget-object v9, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v9}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v4, v10, v11}, Lcom/motorola/motepm/MotEdmDb;->addUuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .local v6, i:Landroid/content/Intent;
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v9, "@"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .local v2, domainIndex:I
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, domain:Ljava/lang/String;
    iget-object v9, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v9}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const-string v10, "email-add"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "emailAddr="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v9, v10, v11}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #domainIndex:I
    .end local v3           #edmDb:Lcom/motorola/motepm/MotEdmDb;
    .end local v4           #emailAddr:Ljava/lang/String;
    .end local v6           #i:Landroid/content/Intent;
    .end local v7           #ident:J
    :goto_0
    return-void

    .restart local v4       #emailAddr:Ljava/lang/String;
    .restart local v7       #ident:J
    :catchall_0
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .end local v7           #ident:J
    :cond_0
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "Failed parsing email account bundle: missing field types"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4           #emailAddr:Ljava/lang/String;
    :cond_1
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "Failed parsing email account bundle: check field types"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public configureVpn(Landroid/os/Bundle;)V
    .locals 8
    .parameter "extraArgs"

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x72

    invoke-virtual {p0, v7, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, ident:J
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.motorola.intent.action.ADD_VPN_PROFILE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    const-string v5, "bundle"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/motorola/motepm/MotEdmDb;->getInstance()Lcom/motorola/motepm/MotEdmDb;

    move-result-object v1

    .local v1, edmDb:Lcom/motorola/motepm/MotEdmDb;
    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VPN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v7, v7, v6}, Lcom/motorola/motepm/MotEdmDb;->addUuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const-string v6, "vpn-add"

    invoke-direct {p0, v5, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public deleteAuthentecVPNConfig()V
    .locals 0

    .prologue
    return-void
.end method

.method public deleteVpn(Landroid/os/Bundle;)V
    .locals 6
    .parameter "extraArgs"

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x73

    invoke-virtual {p0, v4, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, ident:J
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.intent.action.DEL_VPN_PROFILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const-string v4, "bundle"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method disablePackages([Ljava/lang/String;)V
    .locals 1
    .parameter "packagesToDisable"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->managePackages([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method disablePackagesSafely(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, packagesToDisable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->managePackagesSafely(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump MotDevicePolicyManagerService from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .local v3, p:Landroid/util/Printer;
    monitor-enter p0

    :try_start_0
    const-string v4, "Current Device Policy Manager state:"

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string v4, "  Enabled Device Admins:"

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    const-string v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v1, v4, p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method enablePackages([Ljava/lang/String;)V
    .locals 1
    .parameter "packagesToEnable"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->managePackages([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method enablePackagesSafely(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, packagesToEnable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->managePackagesSafely(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public enforcePasswordSet(Z)V
    .locals 7
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enforcePasswordSet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isActivePasswordSufficient()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v1

    .local v1, ident:J
    :try_start_2
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "saveSettingsLocked "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "lockNow "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1           #ident:J
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/SecurityException;
    .restart local v1       #ident:J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .end local v1           #ident:J
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method public findAdmin(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDeviceAdminInfo;
    .locals 7
    .parameter "adminName"

    .prologue
    const/4 v5, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, resolveIntent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :try_start_0
    new-instance v4, Lcom/motorola/motepm/MotDeviceAdminInfo;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v3}, Lcom/motorola/motepm/MotDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    goto :goto_0

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    goto :goto_0
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .locals 7
    .parameter "who"
    .parameter "reqPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, callingUid:I
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-eq v4, v2, :cond_1

    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v4, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not specify uses-policy for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v6, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-ne v4, v2, :cond_4

    iget-object v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v4, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .end local v0           #N:I
    .end local v3           #i:I
    :cond_3
    return-object v1

    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_5
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active admin owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for policy #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getActiveAdminList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .parameter "who"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-object v0

    .restart local v0       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    if-gtz v0, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getActiveSyncID()Ljava/lang/String;
    .locals 17

    .prologue
    const/4 v14, 0x0

    const/16 v15, 0x70

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, ident:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .local v10, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .local v1, activeSyncID:Ljava/lang/String;
    move-object v5, v1

    .local v5, id:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v5, ""

    :cond_0
    const/4 v12, 0x0

    .local v12, sum:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, i:I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    add-int/2addr v12, v14

    goto :goto_0

    :cond_1
    if-nez v12, :cond_5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, uid:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    .local v9, len:I
    const/4 v3, 0x0

    const/4 v8, 0x0

    .local v8, l:I
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v14, 0x20

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v11, sb:Ljava/lang/StringBuilder;
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_1
    const/16 v14, 0x20

    if-ge v8, v14, :cond_4

    if-ge v4, v9, :cond_4

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, c:C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_2
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_3
    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .end local v2           #c:C
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v4           #i:I
    .end local v8           #l:I
    .end local v9           #len:I
    .end local v11           #sb:Ljava/lang/StringBuilder;
    .end local v13           #uid:Ljava/lang/String;
    :goto_2
    move-object v1, v5

    const-string v14, "MotDevicePolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Active sync ID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    .restart local v3       #i:I
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Moto"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public getAppBlackList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .parameter "administratorComponentName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, appsBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "getAppBlackList - no app blacklist set for the specified administrator"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_2
    const-string v2, "MotDevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppBlackList - apps blacklist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for admin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAppWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .parameter "administratorComponentName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, appsWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "getAppWhiteList - no app whitelist set for the specified administrator"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_2
    const-string v2, "MotDevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppWhiteList - apps whitelist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for admin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceEncryptionStatus()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDisabledPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    goto :goto_0
.end method

.method public getExternalStorageEncryption(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    monitor-exit p0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-eqz v4, :cond_2

    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######getExternalStorageEncryption, TURE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######getExternalStorageEncryption, FALSE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getExternalStorageEncryptionStatus()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "getExternalStorageEncryptionStatus() is called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ro.crypto.state"

    const-string v5, "unsupported"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, status:Ljava/lang/String;
    const-string v4, "unsupported"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v4

    const-string v5, "memory_encr"

    invoke-virtual {v4, v5}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemProperty(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, encrDeviceStatus:I
    if-ne v1, v3, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    .end local v1           #encrDeviceStatus:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "getEncryptionSystemProperty() throws  IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v2, 0x0

    .local v2, enabled:Z
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    :goto_0
    monitor-exit p0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v2

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v2, 0x1

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_2
    monitor-exit p0

    move v4, v2

    goto :goto_1

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #N:I
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .parameter "who"

    .prologue
    const/4 v0, 0x0

    .local v0, message:Ljava/lang/String;
    sget-object v1, Lcom/motorola/motepm/Policy;->OWNER_INFO_POLICY:Lcom/motorola/motepm/policy/OwnerInfoPolicy;

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/motorola/motepm/Policy;->OWNER_INFO_POLICY:Lcom/motorola/motepm/policy/OwnerInfoPolicy;

    invoke-virtual {v1, p1}, Lcom/motorola/motepm/policy/OwnerInfoPolicy;->getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageDisableInfo(Ljava/lang/String;)I
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x2

    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, -0x1

    monitor-exit p0

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    :try_start_1
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .local v2, packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i:I
    .restart local v2       #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :try_start_3
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be found!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    monitor-exit p0

    move v3, v4

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/SecurityException;
    monitor-exit p0

    move v3, v5

    goto :goto_0

    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, v5

    goto :goto_0
.end method

.method public getPasswordExpirationPeriod()I
    .locals 5

    .prologue
    const v3, 0x7fffffff

    .local v3, period:I
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    if-le v3, v4, :cond_0

    iget v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    return v3
.end method

.method public getPasswordExpirationStatus()I
    .locals 8

    .prologue
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v3

    .local v3, period:I
    const v4, 0x7fffffff

    if-ge v3, v4, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v0, v4

    .local v0, currentDate:I
    iget v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    add-int/2addr v4, v3

    sub-int v2, v4, v0

    .local v2, daysBeforefExpired:I
    if-gtz v2, :cond_1

    const/4 v2, 0x0

    .end local v0           #currentDate:I
    .end local v1           #date:Ljava/util/Date;
    .end local v2           #daysBeforefExpired:I
    :cond_0
    :goto_0
    return v2

    .restart local v0       #currentDate:I
    .restart local v1       #date:Ljava/util/Date;
    .restart local v2       #daysBeforefExpired:I
    :cond_1
    const/16 v4, 0xe

    if-gt v2, v4, :cond_2

    iget v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    if-ne v0, v4, :cond_0

    .end local v0           #currentDate:I
    .end local v1           #date:Ljava/util/Date;
    .end local v2           #daysBeforefExpired:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    monitor-enter p0

    const/4 v3, 0x0

    .local v3, length:I
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :goto_0
    monitor-exit p0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v4, :cond_2

    iget v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getPasswordMinimumComplexity(Landroid/content/ComponentName;)I
    .locals 7
    .parameter "who"

    .prologue
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, complexity:I
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    :goto_0
    monitor-exit p0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v2

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    if-ge v2, v4, :cond_2

    iget v2, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPasswordMinimumComplexity return value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    move v4, v2

    goto :goto_1

    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 8
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .local v3, password:Ljava/lang/String;
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .local v1, ident:J
    :try_start_2
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v4, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->createRecoveryPassword(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1           #ident:J
    .end local v4           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRecoveryPassword is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-object v3

    .restart local v1       #ident:J
    :catchall_1
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 9
    .parameter "comp"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .local v8, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v8, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit p0

    :goto_1
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.motorola.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    iget-object v0, v8, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;

    invoke-direct {v3, p0, p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    monitor-exit p0

    goto :goto_1

    .end local v1           #intent:Landroid/content/Intent;
    .end local v8           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .restart local v8       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getVPNSplitTunnelingStatus()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getVPNStatus()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "1.5.0"

    return-object v0
.end method

.method public getVpnByID(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.FETCH_VPN_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bundle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "Sending intent to FETCH VPN"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "adminReceiver"
    .parameter "policyId"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, administrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #administrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #administrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v1, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificate([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "data"
    .parameter "certPassword"
    .parameter "certName"
    .parameter "certType"

    .prologue
    const/4 v8, 0x0

    const/16 v6, 0x74

    invoke-virtual {p0, v8, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    new-instance v5, Lcom/motorola/motepm/EdmErrorCode;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/motorola/motepm/EdmErrorCode;-><init>(Landroid/content/Context;)V

    .local v5, mEdmError:Lcom/motorola/motepm/EdmErrorCode;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "certPassword or certName are null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, -0x1389

    invoke-virtual {v5, v6, v8}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, ident:J
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.intent.action.INSTALL_CERTIFICATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    const-string v6, "name"

    invoke-virtual {v4, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v6, "PASSWORD"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "Sending intent to install Certificate"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/motorola/motepm/MotEdmDb;->getInstance()Lcom/motorola/motepm/MotEdmDb;

    move-result-object v1

    .local v1, edmDb:Lcom/motorola/motepm/MotEdmDb;
    iget-object v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v8, p3, v8}, Lcom/motorola/motepm/MotEdmDb;->addUuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const-string v7, "cert-inst"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "certType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public installPackage(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1
    .parameter "who"
    .parameter "packageUri"
    .parameter "flags"

    .prologue
    sget-object v0, Lcom/motorola/motepm/Policy;->INSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/InstallPackagePolicy;

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/motepm/Policy;->INSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/InstallPackagePolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/motepm/policy/InstallPackagePolicy;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/motorola/motepm/Policy;->INSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/InstallPackagePolicy;

    invoke-virtual {v0}, Lcom/motorola/motepm/policy/InstallPackagePolicy;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isActivePasswordSufficient()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isActivePasswordSufficientForComplexity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPasswordNeedChangetoNotSimple()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationStatus()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isActivePasswordSufficientForComplexity()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "adminReceiver"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAdminLocked(Landroid/content/ComponentName;)Z
    .locals 2
    .parameter "admin"

    .prologue
    const/4 v0, 0x0

    .local v0, locked:Z
    sget-object v1, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    invoke-virtual {v1, p1}, Lcom/motorola/motepm/policy/LockAdminPolicy;->isLocked(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit p0

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAppWhiteListDisabled(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "administratorComponentName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "administratorComponentName param cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, administratorApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAppWhiteListDisabled admin="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " admin valid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_2

    move v3, v1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " disabled?="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_4

    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    if-nez v3, :cond_5

    :cond_1
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public isPasswordNeedChangetoNotSimple()Z
    .locals 2

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    const/16 v1, 0x6a

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSimplePasswordAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    monitor-exit p0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isPasswordSetEnforced()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public isPolicyAllowed(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "who"
    .parameter "policy"

    .prologue
    monitor-enter p0

    const/4 v1, 0x1

    .local v1, result:Z
    :try_start_0
    sget-object v2, Lcom/motorola/motepm/Policy;->BOOLEAN_POLICIES:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/BooleanPolicy;

    .local v0, booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    if-nez v0, :cond_1

    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "This policy doesn\'t support yet."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSimplePasswordAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-virtual {v2, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->isPolicyAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    :goto_1
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->isPolicyAllowed()Z

    move-result v1

    goto :goto_1

    :pswitch_4
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-virtual {v2, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->isPolicyAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    :goto_2
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->isPolicyAllowed()Z

    move-result v1

    goto :goto_2

    :pswitch_5
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v2, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->isPolicyAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    :goto_3
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->isPolicyAllowed()Z

    move-result v1

    goto :goto_3

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0

    .end local v0           #booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public isPolicySupported(I)Z
    .locals 4
    .parameter "policyID"

    .prologue
    sget-object v2, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .local v0, bRet:Z
    :goto_0
    sparse-switch p1, :sswitch_data_0

    :goto_1
    return v0

    .end local v0           #bRet:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #bRet:Z
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "ro.crypto.state"

    const-string v3, "unsupported"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, status:Ljava/lang/String;
    const-string v2, "unsupported"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6d -> :sswitch_0
        0x6f -> :sswitch_0
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x75 -> :sswitch_0
        0x76 -> :sswitch_0
    .end sparse-switch
.end method

.method notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V
    .locals 3
    .parameter "who"
    .parameter "policy"
    .parameter "resultCode"
    .parameter "enabled"

    .prologue
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "notifyAdminPolicyEnfocedResult() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.app.action.ACTION_EPM_RESULT_RETURN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "policy_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "result_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "native_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    iget-object v2, v2, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    monitor-exit p0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public provisionAuthentecVPNConfig([BI)V
    .locals 0
    .parameter "fileContent"
    .parameter "fileSize"

    .prologue
    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 14
    .parameter "adminReceiver"

    .prologue
    const/4 v13, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    if-eq v10, v11, :cond_2

    sget-object v10, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    if-eqz v10, :cond_1

    sget-object v10, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    invoke-virtual {v10, p1}, Lcom/motorola/motepm/policy/LockAdminPolicy;->isLocked(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    invoke-virtual {v10}, Lcom/motorola/motepm/policy/LockAdminPolicy;->notifyOperationDenied()V

    monitor-exit p0

    goto :goto_0

    .end local v0           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v0       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .local v4, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    iget-object v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppBlackList(Landroid/content/ComponentName;Ljava/util/List;)I

    :cond_3
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    if-eqz v10, :cond_4

    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppWhiteListDisabled(Landroid/content/ComponentName;)I

    :cond_4
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v10, :cond_5

    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v9, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->createRecoveryPassword(Ljava/lang/String;Z)Ljava/lang/String;

    .end local v9           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "Deleting All Configurations of Admin"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->deleteAllConfigs(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;)V

    sget-object v10, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/motepm/Policy;

    .local v7, policyHandler:Lcom/motorola/motepm/Policy;
    invoke-virtual {v7, v0}, Lcom/motorola/motepm/Policy;->onActiveAdminRemoved(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #policyHandler:Lcom/motorola/motepm/Policy;
    :catchall_1
    move-exception v10

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_4
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    if-nez v10, :cond_7

    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "######removeActiveAdmin, ACTION_REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED sent"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, intent:Landroid/content/Intent;
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v6           #intent:Landroid/content/Intent;
    :cond_8
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    if-ne v10, v13, :cond_9

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v1

    .local v1, after:Z
    if-nez v1, :cond_9

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->unRegisterPhoneStateIntents()V

    .end local v1           #after:Z
    :cond_9
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    if-nez v10, :cond_a

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .restart local v1       #after:Z
    if-ne v1, v13, :cond_a

    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6       #intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1           #after:Z
    .end local v6           #intent:Landroid/content/Intent;
    :cond_a
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->isPolicyAllowed()Z

    move-result v1

    .restart local v1       #after:Z
    if-ne v1, v13, :cond_b

    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeActiveAdmin - sending intent to enable policy="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-virtual {v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->getPolicyName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->enablePackagesSafely(Ljava/util/List;)V

    .end local v1           #after:Z
    :cond_b
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->isPolicyAllowed()Z

    move-result v1

    .restart local v1       #after:Z
    if-ne v1, v13, :cond_c

    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeActiveAdmin - sending intent to enable policy="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-virtual {v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->getPolicyName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->enablePackagesSafely(Ljava/util/List;)V

    .end local v1           #after:Z
    :cond_c
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->isPolicyAllowed()Z

    move-result v1

    .restart local v1       #after:Z
    if-ne v1, v13, :cond_d

    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeActiveAdmin - sending intent to enable policy="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->getPolicyName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->enablePackagesSafely(Ljava/util/List;)V

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->notifyPolicyChanged()V

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v10, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->onPolicyChanged(Z)V

    .end local v1           #after:Z
    :cond_d
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    if-nez v10, :cond_e

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .restart local v1       #after:Z
    if-ne v1, v13, :cond_e

    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.POP3_IMAP4_EMAIL_ALLOWED_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6       #intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z

    .end local v1           #after:Z
    .end local v6           #intent:Landroid/content/Intent;
    :cond_e
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    if-nez v10, :cond_f

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v10

    if-ne v13, v10, :cond_f

    const-string v10, "sys.vpn.tun.enabled"

    const-string v11, "1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.VPN_DISABLED_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "policy_name"

    const/16 v11, 0xd

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "componet_name"

    invoke-virtual {v6, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "native_status"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v6           #intent:Landroid/content/Intent;
    :cond_f
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    if-nez v10, :cond_10

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v10

    if-ne v13, v10, :cond_10

    :try_start_5
    const-string v10, "connectivity"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v8

    .local v8, service:Landroid/net/IConnectivityManager;
    if-eqz v8, :cond_11

    const-string v10, "0.0.0.0/0 ::/0"

    invoke-interface {v8, v10}, Landroid/net/IConnectivityManager;->delRouteForVpn(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .end local v8           #service:Landroid/net/IConnectivityManager;
    :goto_2
    :try_start_6
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.VPN_SPLIT_TUNNELING_DISABLED_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "policy_name"

    const/16 v11, 0xc

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "componet_name"

    invoke-virtual {v6, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "native_status"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v6           #intent:Landroid/content/Intent;
    :cond_10
    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .restart local v8       #service:Landroid/net/IConnectivityManager;
    :cond_11
    :try_start_8
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "System error, ConnectivityService not found!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    .end local v8           #service:Landroid/net/IConnectivityManager;
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/Exception;
    :try_start_9
    const-string v10, "MotDevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception found in removeActiveAdmin "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "adminReceiver"

    .prologue
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    const-string v1, "com.motorola.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    :cond_0
    return-void
.end method

.method public removeEmailAccount(Ljava/lang/String;)V
    .locals 14
    .parameter "accountName"

    .prologue
    new-instance v11, Lcom/motorola/motepm/EdmErrorCode;

    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/motorola/motepm/EdmErrorCode;-><init>(Landroid/content/Context;)V

    .local v11, mEdmErrorCode:Lcom/motorola/motepm/EdmErrorCode;
    invoke-static {}, Lcom/motorola/motepm/MotEdmDb;->getInstance()Lcom/motorola/motepm/MotEdmDb;

    move-result-object v4

    .local v4, edmDb:Lcom/motorola/motepm/MotEdmDb;
    const/4 v1, 0x0

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const/4 v12, 0x0

    const/16 v13, 0x71

    :try_start_0
    invoke-virtual {p0, v12, v13}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v12}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/motorola/motepm/MotEdmDb;->getEmailUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    .local v5, emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "remove email account failed. The caller is not the owner"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, -0xfa3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .end local v5           #emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_0
    return-void

    .restart local v5       #emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v10

    .local v10, length:I
    new-array v2, v10, [Ljava/lang/String;

    .local v2, allEmails:[Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v10, :cond_1

    aget-object v12, v2, v6

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    if-lt v6, v10, :cond_3

    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "remove email account failed. The caller is not the owner."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, -0xfa3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #allEmails:[Ljava/lang/String;
    .end local v5           #emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v6           #i:I
    .end local v10           #length:I
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/SecurityException;
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "remove email account failed.Security exception."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, -0xfa3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .end local v3           #e:Ljava/lang/SecurityException;
    .restart local v2       #allEmails:[Ljava/lang/String;
    .restart local v5       #emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v6       #i:I
    .restart local v10       #length:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, ident:J
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.motorola.email.DELETE_ACCOUNT"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, intent:Landroid/content/Intent;
    const/4 v12, 0x1

    new-array v0, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v0, v12

    .local v0, accNames:[Ljava/lang/String;
    const-string v12, "email_array"

    invoke-virtual {v9, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "LENGTH"

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public reportExpirationWarningShow()V
    .locals 7

    .prologue
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .local v1, ident:J
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-void

    .end local v0           #date:Ljava/util/Date;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .end local v1           #ident:J
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public reportPasswordChanged()V
    .locals 10

    .prologue
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .local v4, ident:J
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .local v2, date:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .end local v2           #date:Ljava/util/Date;
    :cond_0
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v6, :cond_1

    const-string v6, "com.motorola.app.action.ACTION_RECOVERY_PASSWORD_SAVE"

    invoke-virtual {p0, v1, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v3           #i:I
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .end local v4           #ident:J
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #ident:J
    :cond_2
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public reportPolicyEnforcedResult(Landroid/content/ComponentName;IIZ)V
    .locals 6
    .parameter "who"
    .parameter "policy"
    .parameter "resultCode"
    .parameter "enabled"

    .prologue
    const/4 v5, -0x1

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.motorola.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "reportPolicyEnforcedResult() is called "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/motorola/motepm/Policy;->BOOLEAN_POLICIES:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/BooleanPolicy;

    .local v1, booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p3, p4}, Lcom/motorola/motepm/BooleanPolicy;->onPolicyEnforcement(Landroid/content/ComponentName;IZ)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch p2, :sswitch_data_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    goto :goto_0

    .end local v1           #booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v1       #booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    :sswitch_0
    if-ne p3, v5, :cond_3

    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    :sswitch_1
    if-ne p3, v5, :cond_3

    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    :sswitch_2
    if-ne p3, v5, :cond_3

    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    :sswitch_3
    if-ne p3, v5, :cond_3

    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method saveSettingsLocked()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v7, 0x0

    .local v7, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v7           #stream:Ljava/io/FileOutputStream;
    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v11, "utf-8"

    invoke-interface {v5, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v11, 0x0

    const-string v12, "policies"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    const/4 v11, 0x0

    const-string v12, "admin"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "name"

    iget-object v13, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v13}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 v11, 0x0

    const-string v12, "admin"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v6

    .local v6, period:I
    if-lez v6, :cond_4

    const v11, 0x7fffffff

    if-ge v6, v11, :cond_4

    iget v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    const-string v12, "password-changed-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "value"

    iget v13, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "password-changed-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    const-string v12, "expiration-warning-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "value"

    iget v13, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "expiration-warning-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    :goto_1
    const/4 v11, 0x0

    const-string v12, "password-simple"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "value"

    iget-boolean v13, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    if-ne v13, v9, :cond_6

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v11, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "password-simple"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "password-complexity"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "password-complexity"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendChangedNotification()V

    move-object v7, v8

    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #period:I
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_3
    return-void

    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v5       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6       #period:I
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v11, 0x0

    iput v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    const/4 v11, 0x0

    iput v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #period:I
    :catch_0
    move-exception v2

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_4
    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_5
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_3

    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v5       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6       #period:I
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :cond_6
    move v9, v10

    goto :goto_2

    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #period:I
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v9

    goto :goto_5

    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_4
.end method

.method sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 2
    .parameter "admin"
    .parameter "action"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v1}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method sendAdminCommandLocked(Ljava/lang/String;I)V
    .locals 4
    .parameter "action"
    .parameter "reqPolicy"

    .prologue
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    if-lez v0, :cond_1

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v3, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method sendPolicyChangedNotification(III)V
    .locals 2
    .parameter "notificationId"
    .parameter "titleResId"
    .parameter "detailsResId"

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 11
    .parameter "adminReceiver"
    .parameter "refreshing"

    .prologue
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDeviceAdminInfo;

    move-result-object v5

    .local v5, info:Lcom/motorola/motepm/MotDeviceAdminInfo;
    if-nez v5, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v3

    .local v3, ident:J
    if-nez p2, :cond_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Admin is already added"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v8

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .end local v3           #ident:J
    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .restart local v3       #ident:J
    :cond_1
    :try_start_3
    new-instance v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;-><init>(Lcom/motorola/motepm/MotDeviceAdminInfo;)V

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, -0x1

    .local v7, replaceIndex:I
    if-eqz p2, :cond_2

    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v6, oldAdmin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v6, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v8}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v7, v2

    .end local v0           #N:I
    .end local v2           #i:I
    .end local v6           #oldAdmin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    const-string v8, "com.motorola.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v1, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v6       #oldAdmin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #N:I
    .end local v2           #i:I
    .end local v6           #oldAdmin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_4
    :try_start_5
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public setActivePasswordComplexity(I)V
    .locals 5
    .parameter "complexity"

    .prologue
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    if-eq v2, p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .local v0, ident:J
    :try_start_1
    iput p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0           #ident:J
    :cond_0
    monitor-exit p0

    return-void

    .restart local v0       #ident:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setActivePasswordSimpleState(Z)V
    .locals 5
    .parameter "isSimple"

    .prologue
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    if-eq v2, p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .local v0, ident:J
    :try_start_1
    iput-boolean p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0           #ident:J
    :cond_0
    monitor-exit p0

    return-void

    .restart local v0       #ident:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setAdminLocked(Landroid/content/ComponentName;Z)I
    .locals 2
    .parameter "admin"
    .parameter "locked"

    .prologue
    const/4 v0, -0x1

    .local v0, result:I
    sget-object v1, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/motepm/policy/LockAdminPolicy;->setLocked(Landroid/content/ComponentName;Z)I

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    invoke-virtual {v1}, Lcom/motorola/motepm/policy/LockAdminPolicy;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAllowPolicies(Landroid/content/ComponentName;IZ)I
    .locals 5
    .parameter "who"
    .parameter "policy"
    .parameter "enabled"

    .prologue
    monitor-enter p0

    const/4 v2, -0x1

    .local v2, result:I
    const/4 v1, 0x0

    .local v1, checkinTag:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/motorola/motepm/Policy;->BOOLEAN_POLICIES:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/BooleanPolicy;

    .local v0, booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3}, Lcom/motorola/motepm/BooleanPolicy;->setAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    invoke-virtual {v0}, Lcom/motorola/motepm/BooleanPolicy;->getTag()Ljava/lang/String;

    move-result-object v1

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    return v2

    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setSDCardAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    const-string v1, "sd-card-allowed"

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setSimplePasswordAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-direct {p0, p1, v3, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAllowPolicy(Landroid/content/ComponentName;Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Z)I

    move-result v2

    const-string v1, "browser-allowed"

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-direct {p0, p1, v3, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAllowPolicy(Landroid/content/ComponentName;Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Z)I

    move-result v2

    const-string v1, "text-message-allowed"

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-direct {p0, p1, v3, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAllowPolicy(Landroid/content/ComponentName;Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Z)I

    move-result v2

    const-string v1, "consumer-email-allowed"

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setPopImapEmailAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setVPNSplitTunnelingAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    const-string v1, "vpn-restricted-split"

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setVPNAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    const-string v1, "vpn-restricted"

    goto :goto_0

    .end local v0           #booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setAppBlackList(Landroid/content/ComponentName;Ljava/util/List;)I
    .locals 15
    .parameter "administratorComponentName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "[BEGIN] setAppBlackList"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "administratorComponentName param cannot be null."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_0
    const/16 v12, 0x76

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, administratorApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_1

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "administratorComponentName param is invalid."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .end local p2           #appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v3, appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 p2, v3

    .end local v3           #appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2       #appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->validateAppBlackListPackages(Ljava/util/List;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "Invalid list of package names to be black listed, a system package or administrator has been detected"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "[END] setAppBlackList"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x10

    const/4 v14, -0x1

    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v13, v14, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    const/4 v12, -0x1

    monitor-exit p0

    :goto_1
    return v12

    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, appsToBeEnabledList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, appsToBeDisabledList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, numberOfPreviousBlackListedApps:I
    const/4 v4, 0x0

    .local v4, appBlackListChanged:Z
    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "New app blacklist is null, removing the policy from the administrator."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_e

    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "App blacklist changed, consolidating what app needs to be enabled/disabled."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppBlackLists()Ljava/util/List;

    move-result-object v2

    .local v2, allAppBlackLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, blackListedApp:Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v2           #allAppBlackLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #blackListedApp:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_8
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "App blacklist is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .restart local v7       #blackListedApp:Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v7           #blackListedApp:Ljava/lang/String;
    :cond_a
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v13}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v13}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v13}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ne v11, v12, :cond_b

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "New app blacklist and previous are the same, nothing to do."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_b
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "App blacklist changed"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_2

    .restart local v2       #allAppBlackLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    .local v9, ident:J
    :try_start_2
    const-string v12, "MotDevicePolicyManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sending intent to enable/disable apps.\n enabling="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n disabling="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v6, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v5, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-direct {p0, v12, v13}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->managePackages([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_d
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mBlackListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;

    invoke-virtual {v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;->saveAppListLocked()V

    .end local v2           #allAppBlackLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #ident:J
    :goto_5
    const/16 v13, 0x10

    const/4 v14, 0x0

    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_f

    const/4 v12, 0x1

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v13, v14, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v12, "app-control-blacklist"

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "[END] setAppBlackList"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto/16 :goto_1

    .restart local v2       #allAppBlackLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #ident:J
    :catchall_1
    move-exception v12

    :try_start_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .end local v2           #allAppBlackLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #ident:J
    :cond_e
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "App blacklist not changed, nothing to do."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :cond_f
    const/4 v12, 0x0

    goto :goto_6
.end method

.method public setAppWhiteList(Landroid/content/ComponentName;Ljava/util/List;)I
    .locals 6
    .parameter "administratorComponentName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "[BEGIN] setAppWhiteList"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    const/16 v2, 0x76

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, administratorApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param is invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .end local p2           #appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v1, appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object p2, v1

    .end local v1           #appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2       #appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    invoke-direct {p0, p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppWhiteListLocked(Ljava/util/List;)V

    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mWhiteListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;->saveAppListLocked()V

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    const/16 v2, 0x11

    const/4 v3, 0x0

    iget-boolean v4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "app-control-whitelist"

    invoke-direct {p0, p1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "[END] setAppWhiteList"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public setAppWhiteListDisabled(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "administratorComponentName"

    .prologue
    const/4 v4, 0x0

    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "[BEGIN] setAppWhiteListDisabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "administratorComponentName param cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/16 v1, 0x76

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, administratorApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "administratorComponentName param is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppWhiteListDisabledLocked()V

    :goto_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mWhiteListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;

    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;->saveAppListLocked()V

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "[END] setAppWhiteListDisabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedApps()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppWhiteListLocked(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 8
    .parameter "admin"
    .parameter "encrypt"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    const/4 v3, 0x0

    .local v3, result:I
    const/16 v5, 0x65

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const-string v5, "ro.crypto.state"

    const-string v6, "unsupported"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, status:Ljava/lang/String;
    const-string v5, "unsupported"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "setExternalStorageEncryption():encryption is not supported"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x2

    monitor-exit p0

    :goto_0
    return v5

    :cond_1
    iget-boolean v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-eq v5, p2, :cond_4

    const-string v5, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "######setExternalStorageEncryption, encrypt is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    const/4 v2, 0x0

    .local v2, isIntentNeeded:Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    const-string v5, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "######setExternalStorageEncryption, isIntentNeeded is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-eqz v2, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "######setExternalStorageEncryption, enable intent sent"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isIntentNeeded:Z
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eq v5, p2, :cond_5

    const/4 v3, -0x3

    :cond_5
    const-string v5, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setExternalStorageEncryption return value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "encryption-device-sd"

    invoke-direct {p0, p1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    monitor-exit p0

    move v5, v3

    goto/16 :goto_0

    :cond_6
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "######setExternalStorageEncryption, disable intent sent"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setIntentDisabled(Landroid/content/ComponentName;Z)V
    .locals 4
    .parameter "adminReceiver"
    .parameter "disabled"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MotDevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentDisabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "setIntentDisabled: admin is null "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setManualDataSyncinRoaming(Landroid/content/ComponentName;Z)I
    .locals 9
    .parameter "who"
    .parameter "enabled"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_0
    const/4 v5, 0x0

    .local v5, result:I
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v2

    .local v2, before:Z
    const/16 v6, 0x64

    invoke-virtual {p0, p1, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    if-eq v6, p2, :cond_1

    iput-boolean p2, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v0

    .local v0, after:Z
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v3

    .local v3, ident:J
    if-eq v2, v0, :cond_2

    if-eqz v0, :cond_4

    :try_start_3
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->registerForPhoneStateIntents()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_0
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v6

    if-eq v6, p2, :cond_3

    const/4 v5, -0x3

    :cond_3
    const-string v6, "MotDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setManualDataSyncinRoaming return value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "data-sync"

    invoke-direct {p0, p1, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v5

    :cond_4
    :try_start_6
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->unRegisterPhoneStateIntents()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .end local v3           #ident:J
    :catchall_2
    move-exception v6

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 2
    .parameter "who"
    .parameter "info"

    .prologue
    const/4 v0, -0x1

    .local v0, result:I
    sget-object v1, Lcom/motorola/motepm/Policy;->OWNER_INFO_POLICY:Lcom/motorola/motepm/policy/OwnerInfoPolicy;

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/motorola/motepm/Policy;->OWNER_INFO_POLICY:Lcom/motorola/motepm/policy/OwnerInfoPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/motepm/policy/OwnerInfoPolicy;->setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    monitor-exit p0

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPasswordExpirationPeriod(Landroid/content/ComponentName;I)I
    .locals 8
    .parameter "who"
    .parameter "period"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    const/4 v2, 0x0

    .local v2, result:I
    if-gez p2, :cond_1

    const/4 v2, -0x1

    :try_start_1
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPasswordExpirationPeriod return value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    move v3, v2

    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    if-eq v4, p2, :cond_3

    if-ltz p2, :cond_3

    iput p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    if-lez p2, :cond_5

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    .end local v1           #date:Ljava/util/Date;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v4

    if-ge v4, p2, :cond_4

    const/4 v2, -0x3

    :cond_4
    const-string v4, "MotDevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPasswordExpirationPeriod return value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_5
    if-nez p2, :cond_2

    const v4, 0x7fffffff

    iput v4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "length"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    const/4 v1, 0x0

    .local v1, result:I
    if-gez p2, :cond_1

    const/4 v1, -0x1

    :try_start_1
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordHistoryLength return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v3, p2, :cond_2

    if-ltz p2, :cond_2

    iput p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v3

    if-le v3, p2, :cond_3

    const/4 v1, -0x3

    :cond_3
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordHistoryLength return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public setPasswordMinimumComplexity(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "complexity"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    const/4 v1, 0x0

    .local v1, result:I
    if-ltz p2, :cond_1

    const/4 v3, 0x4

    if-le p2, v3, :cond_2

    :cond_1
    const/4 v1, -0x1

    :try_start_1
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordMinimumComplexity return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    move v2, v1

    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    if-eq v3, p2, :cond_3

    iput p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######setPasswordMinimumComplexity, complexity is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v3

    if-le v3, p2, :cond_4

    const/4 v1, -0x3

    :cond_4
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordMinimumComplexity return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)I
    .locals 6
    .parameter "who"
    .parameter "enabled"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    const/4 v1, 0x0

    .local v1, result:I
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eq v3, p2, :cond_2

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v2, utils:Lcom/android/internal/widget/LockPatternUtils;
    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->createRecoveryPassword(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_1
    :goto_0
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .end local v2           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-eq v3, p2, :cond_3

    const/4 v1, -0x3

    :cond_3
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordRecoveryEnabled return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v1

    .restart local v2       #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.motorola.app.action.ACTION_RECOVERY_PASSWORD_SAVE"

    invoke-virtual {p0, v0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->loadSettingsLocked()V

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->reconcileAdministrators()V

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->loadDisablelistLocked()V

    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mBlackListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;->loadAppListLocked()V

    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mWhiteListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;->loadAppListLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .parameter "who"
    .parameter "packageName"

    .prologue
    sget-object v0, Lcom/motorola/motepm/Policy;->UNINSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/UninstallPackagePolicy;

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/motepm/Policy;->UNINSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/UninstallPackagePolicy;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/motepm/policy/UninstallPackagePolicy;->uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/motorola/motepm/Policy;->UNINSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/UninstallPackagePolicy;

    invoke-virtual {v0}, Lcom/motorola/motepm/policy/UninstallPackagePolicy;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public wipeData(ZZ)V
    .locals 7
    .parameter "wipeSd"
    .parameter "wipeSilent"

    .prologue
    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_0
    invoke-virtual {p0, v5, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .local v3, ident:J
    sget v2, Landroid/os/RecoverySystem;->WIPE_FLAG_NONE:I

    .local v2, flag:I
    if-eqz p1, :cond_0

    sget v5, Landroid/os/RecoverySystem;->WIPE_FLAG_SD:I

    or-int/2addr v2, v5

    :cond_0
    if-eqz p2, :cond_1

    sget v5, Landroid/os/RecoverySystem;->WIPE_FLAG_SILENT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v2, v5

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "Failed requesting data wipe"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #flag:I
    .end local v3           #ident:J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .restart local v0       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .restart local v2       #flag:I
    .restart local v3       #ident:J
    :catchall_1
    move-exception v5

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public wipeExternalStorageData(Ljava/lang/String;)V
    .locals 12
    .parameter "pattrn"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    new-instance v8, Lcom/motorola/motepm/EdmErrorCode;

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/motorola/motepm/EdmErrorCode;-><init>(Landroid/content/Context;)V

    .local v8, mEdmError:Lcom/motorola/motepm/EdmErrorCode;
    invoke-virtual {p0, v11, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, callingUid:I
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v9

    if-ne v9, v2, :cond_0

    iget-object v9, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v9}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const-string v10, "wipe-data"

    invoke-direct {p0, v9, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    monitor-exit p0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return-void

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .local v5, ident:J
    if-nez p1, :cond_3

    :try_start_1
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->hasMountedRemovableSdcard()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "--wipe_sdcard_fast"

    invoke-static {v9, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0           #N:I
    .end local v2           #callingUid:I
    .end local v4           #i:I
    .end local v5           #ident:J
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .restart local v0       #N:I
    .restart local v2       #callingUid:I
    .restart local v4       #i:I
    .restart local v5       #ident:J
    :cond_2
    const/16 v9, -0x7d2

    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v8, v9, v10}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "EDM_ERRORCODE_SDCARD_NOTMOUNTED"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "Failed requesting data wipe"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    :try_start_4
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.motorola.intent.action.DELETEPATTERN"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, intent:Landroid/content/Intent;
    const-string v9, "REGEXPATTERN"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "Started REGEXPATTERN Intent"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method
