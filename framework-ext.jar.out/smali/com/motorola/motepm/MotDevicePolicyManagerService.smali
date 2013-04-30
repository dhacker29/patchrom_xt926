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
    .line 94
    const/4 v4, 0x0

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 120
    new-instance v4, Ljava/io/File;

    const-string v5, "/cache/recovery"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    .line 121
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    const-string v6, "command"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->COMMAND_FILE:Ljava/io/File;

    .line 122
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    const-string v6, "log"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->LOG_FILE:Ljava/io/File;

    .line 166
    const/16 v1, 0x64

    .line 167
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

    .line 168
    .local v3, policy:Lcom/motorola/motepm/Policy;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #notificationId:I
    .local v2, notificationId:I
    invoke-virtual {v3, v1}, Lcom/motorola/motepm/Policy;->setNotificationId(I)V

    move v1, v2

    .end local v2           #notificationId:I
    .restart local v1       #notificationId:I
    goto :goto_0

    .line 171
    .end local v3           #policy:Lcom/motorola/motepm/Policy;
    :cond_0
    add-int/lit8 v4, v1, -0x1

    sput v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->POLICY_NOTIFICATION_IDS_END:I

    .line 178
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    .line 709
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    sput-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->AUXILIARY_SERVICE_INTENT:Landroid/content/Intent;

    .line 711
    sget-object v4, Lcom/motorola/motepm/MotDevicePolicyManagerService;->AUXILIARY_SERVICE_INTENT:Landroid/content/Intent;

    const-string v5, "com.motorola.devicemanagement"

    const-string v6, "com.motorola.devicemanagement.MotDevicePolicyManagerAuxiliaryService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 749
    invoke-direct {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;-><init>()V

    .line 102
    iput v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    .line 103
    iput v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    .line 109
    iput v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    .line 112
    iput-boolean v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    .line 114
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    .line 116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    .line 175
    iput-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    .line 189
    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-direct {v5, p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    .line 190
    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-direct {v5, p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    .line 191
    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-direct {v5, p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    .line 193
    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;

    invoke-direct {v5, p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mBlackListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;

    .line 194
    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;

    invoke-direct {v5, p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mWhiteListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;

    .line 196
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPreloadedAppsList:Ljava/util/List;

    .line 715
    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;

    invoke-direct {v5, p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$1;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAuxiliaryServiceListener:Landroid/content/ServiceConnection;

    .line 3447
    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;

    invoke-direct {v5, p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$3;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3494
    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$4;

    invoke-direct {v5, p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$4;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageChangeListenerReceiver:Landroid/content/BroadcastReceiver;

    .line 750
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 751
    new-instance v5, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;

    invoke-direct {v5, p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mMonitor:Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;

    .line 752
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mMonitor:Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;

    invoke-virtual {v5, p1, v6, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 754
    sput-object p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sInstance:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    .line 755
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

    .line 756
    .local v4, policy:Lcom/motorola/motepm/Policy;
    invoke-virtual {v4, p0}, Lcom/motorola/motepm/Policy;->onMainServiceBound(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    goto :goto_0

    .line 759
    .end local v4           #policy:Lcom/motorola/motepm/Policy;
    :cond_0
    sget-object v5, Lcom/motorola/motepm/MotDevicePolicyManagerService;->AUXILIARY_SERVICE_INTENT:Landroid/content/Intent;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAuxiliaryServiceListener:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 763
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 764
    .local v1, filter:Landroid/content/IntentFilter;
    const/16 v5, 0x3e8

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 765
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
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

    .line 768
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    .line 771
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 774
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 777
    new-instance v5, Lcom/motorola/motepm/MotEPMPhoneStateListener;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/motorola/motepm/MotEPMPhoneStateListener;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    .line 781
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 782
    .local v3, packageChangeFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 784
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    const-string v5, "package"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 786
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageChangeListenerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 788
    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotEPMPhoneStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppBlackLists()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedAppsIncludingPreloadedApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
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
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/motorola/motepm/MotDevicePolicyManagerService;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppWhiteListLocked(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAuxiliaryService:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;)Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAuxiliaryService:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    return-object p1
.end method

.method static synthetic access$600()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->AUXILIARY_SERVICE_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/motepm/MotDevicePolicyManagerService;Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/motorola/motepm/MotDevicePolicyManagerService;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/motepm/MotDevicePolicyManagerService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z

    move-result v0

    return v0
.end method

.method private blockEmailPort(Z)Z
    .locals 8
    .parameter "blocked"

    .prologue
    const/4 v4, 0x0

    .line 2483
    monitor-enter p0

    .line 2485
    :try_start_0
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2486
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2488
    .local v3, mNetd:Landroid/os/INetworkManagementService;
    if-eqz v3, :cond_0

    .line 2490
    if-eqz p1, :cond_1

    .line 2491
    :try_start_1
    const-string v1, "-A OUTPUT -p tcp --syn --dport 110 -j DROP"

    .line 2492
    .local v1, command:Ljava/lang/String;
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2493
    const-string v1, "-A OUTPUT -p tcp --syn --dport 143 -j DROP"

    .line 2494
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2495
    const-string v1, "-A OUTPUT -p tcp --syn --dport 585 -j DROP"

    .line 2496
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2497
    const-string v1, "-A OUTPUT -p tcp --syn --dport 993 -j DROP"

    .line 2498
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2499
    const-string v1, "-A OUTPUT -p tcp --syn --dport 995 -j DROP"

    .line 2500
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2501
    const-string v1, "-A OUTPUT -p tcp --syn --dport 25 -j DROP"

    .line 2502
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2503
    const-string v1, "-A OUTPUT -p tcp --syn --dport 465 -j DROP"

    .line 2504
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2505
    const-string v1, "-A OUTPUT -p tcp --syn --dport 587 -j DROP"

    .line 2506
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2534
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

    .line 2508
    :cond_1
    :try_start_3
    const-string v1, "-D OUTPUT -p tcp --syn --dport 110 -j DROP"

    .line 2509
    .restart local v1       #command:Ljava/lang/String;
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2510
    const-string v1, "-D OUTPUT -p tcp --syn --dport 143 -j DROP"

    .line 2511
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2512
    const-string v1, "-D OUTPUT -p tcp --syn --dport 585 -j DROP"

    .line 2513
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2514
    const-string v1, "-D OUTPUT -p tcp --syn --dport 993 -j DROP"

    .line 2515
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2516
    const-string v1, "-D OUTPUT -p tcp --syn --dport 995 -j DROP"

    .line 2517
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2518
    const-string v1, "-D OUTPUT -p tcp --syn --dport 25 -j DROP"

    .line 2519
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2520
    const-string v1, "-D OUTPUT -p tcp --syn --dport 465 -j DROP"

    .line 2521
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z

    .line 2522
    const-string v1, "-D OUTPUT -p tcp --syn --dport 587 -j DROP"

    .line 2523
    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2525
    .end local v1           #command:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2526
    .local v2, e:Landroid/os/RemoteException;
    :try_start_4
    monitor-exit p0

    goto :goto_1

    .line 2535
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #mNetd:Landroid/os/INetworkManagementService;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 2528
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v3       #mNetd:Landroid/os/INetworkManagementService;
    :catch_1
    move-exception v2

    .line 2529
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

    .line 2530
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
    .line 3146
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 3147
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3148
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3150
    new-instance v0, Ljava/io/FileWriter;

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManagerService;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 3152
    .local v0, command:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3153
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3155
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 3159
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 3160
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 3162
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reboot failed (no permissions?)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3155
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

    .line 3074
    invoke-static {}, Lcom/motorola/motepm/MotEdmDb;->getInstance()Lcom/motorola/motepm/MotEdmDb;

    move-result-object v4

    .line 3075
    .local v4, edmDb:Lcom/motorola/motepm/MotEdmDb;
    invoke-virtual {v4, p1}, Lcom/motorola/motepm/MotEdmDb;->getEmailUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    .line 3076
    .local v5, emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v4, p1}, Lcom/motorola/motepm/MotEdmDb;->getVpnUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v8

    .line 3077
    .local v8, vpnUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v4, p1}, Lcom/motorola/motepm/MotEdmDb;->getCertUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    .line 3079
    .local v3, certUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 3081
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.motorola.email.DELETE_ACCOUNT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3083
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v1, v9, [Ljava/lang/String;

    .line 3084
    .local v1, allEmailIDs:[Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3087
    const-string v9, "email_array"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3091
    const-string v9, "LENGTH"

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3094
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3096
    .end local v1           #allEmailIDs:[Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    if-eqz v8, :cond_1

    .line 3097
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3098
    .local v7, vpnIDBundle:Landroid/os/Bundle;
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 3099
    .local v2, allVpnIDs:[Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3100
    const-string v9, "VPN_ID"

    invoke-virtual {v7, v9, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3101
    const-string v9, "LENGTH"

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3102
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.motorola.intent.action.DEL_VPN_PROFILE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3103
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v9, "bundle"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3104
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3105
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3107
    .end local v2           #allVpnIDs:[Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #vpnIDBundle:Landroid/os/Bundle;
    :cond_1
    if-eqz v3, :cond_2

    .line 3108
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.motorola.intent.action.CERT_DELETE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3109
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 3110
    .local v0, allCertificates:[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3111
    const-string v9, "NAME"

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3112
    const-string v9, "LENGTH"

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3113
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3114
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3116
    .end local v0           #allCertificates:[Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v4, p1}, Lcom/motorola/motepm/MotEdmDb;->deleteAdmin(Ljava/lang/String;)Z

    .line 3117
    return-void
.end method

.method private dismissVpnDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 4013
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.app.action.VPN_DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4014
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4015
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
    .line 4631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4633
    .local v1, appsBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 4636
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

    .line 4637
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

    .line 4638
    .local v2, blackListedApp:Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4639
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4649
    .end local v0           #adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v2           #blackListedApp:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4644
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4645
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "getAllAppBlackLists - no app blacklist set for all administrators"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    :goto_1
    monitor-exit p0

    .line 4651
    return-object v1

    .line 4647
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
    .line 4257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4259
    .local v1, appsWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 4261
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4262
    monitor-exit p0

    .line 4282
    :goto_0
    return-object v1

    .line 4267
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

    .line 4268
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

    .line 4269
    .local v4, whiteListedApp:Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4270
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4280
    .end local v0           #adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #whiteListedApp:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4275
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4276
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "getAllAppWhiteLists - no app whitelist set for all administrators"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 4278
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
    .line 4436
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppWhiteLists()Ljava/util/List;

    move-result-object v1

    .line 4437
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

    .line 4438
    .local v0, adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    if-eqz v3, :cond_0

    .line 4439
    iget-object v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 4442
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4448
    .end local v0           #adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4449
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "getCurrentWhiteListedApps - no whitelisted apps"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    :goto_0
    return-object v1

    .line 4451
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
    .line 4458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4459
    .local v0, appsWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPreloadedApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4460
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4462
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4463
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "getCurrentWhiteListedAppsIncludingSystemApps - no whitelisted apps"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    :cond_0
    return-object v0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 3419
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 3420
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 3422
    :cond_0
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .locals 2

    .prologue
    .line 791
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_0

    .line 792
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 793
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .line 795
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method static getInstance()Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .locals 1

    .prologue
    .line 5565
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
    .line 4470
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPreloadedAppsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4471
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2080

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 4472
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

    .line 4473
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    .line 4474
    :cond_1
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPreloadedAppsList:Ljava/util/List;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4477
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPreloadedAppsList:Ljava/util/List;

    .line 4479
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

    .line 3120
    const/4 v4, 0x0

    .line 3122
    .local v4, mMntSvc:Landroid/os/storage/IMountService;
    :try_start_0
    const-string v10, "mount"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 3124
    if-nez v4, :cond_1

    .line 3125
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "Fail to get MountService!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    :cond_0
    :goto_0
    return v9

    .line 3128
    :cond_1
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v8

    .line 3129
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

    .line 3130
    .local v6, s:Landroid/os/Parcelable;
    move-object v0, v6

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object v7, v0

    .line 3131
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

    .line 3132
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

    .line 3136
    const/4 v9, 0x1

    goto :goto_0

    .line 3129
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3139
    .end local v1           #arr$:[Landroid/os/Parcelable;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #s:Landroid/os/Parcelable;
    .end local v7           #volume:Landroid/os/storage/StorageVolume;
    .end local v8           #volumes:[Landroid/os/Parcelable;
    :catch_0
    move-exception v5

    .line 3140
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

    .line 4420
    monitor-enter p0

    .line 4421
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

    .line 4422
    .local v0, adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    if-ne v3, v2, :cond_0

    .line 4423
    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "App WhiteList is enabled by at least one of the admins."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    const/4 v2, 0x0

    monitor-exit p0

    .line 4429
    .end local v0           #adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v2

    .line 4428
    :cond_1
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "App WhiteList is disabled by all admins."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4429
    monitor-exit p0

    goto :goto_0

    .line 4430
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
    .line 3643
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3648
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3645
    :catch_0
    move-exception v0

    .line 3646
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPopImapEmailAllowed(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x1

    .line 2448
    monitor-enter p0

    .line 2450
    if-eqz p1, :cond_1

    .line 2451
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2452
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2453
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    monitor-exit p0

    .line 2473
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2456
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2474
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2460
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2461
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 2462
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2463
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    if-nez v4, :cond_2

    .line 2465
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isPopImapEmailAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2461
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2471
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isPopImapEmailAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
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

    .line 2259
    monitor-enter p0

    .line 2261
    if-eqz p1, :cond_1

    .line 2262
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2263
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2264
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    monitor-exit p0

    .line 2282
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2266
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2283
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2269
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2270
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 2271
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2272
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    if-nez v4, :cond_2

    .line 2274
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isSDCardAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2270
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2280
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isSDCardAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
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

    .line 2330
    monitor-enter p0

    .line 2332
    if-eqz p1, :cond_1

    .line 2333
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2334
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2335
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    monitor-exit p0

    .line 2352
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2337
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2353
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2339
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2340
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 2341
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2342
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-nez v4, :cond_2

    .line 2344
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######isSimplePasswordAllowed, FALSE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2340
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2350
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######isSimplePasswordAllowed, TRUE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized isVPNAllowed(Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "who"

    .prologue
    .line 4101
    monitor-enter p0

    const/4 v3, 0x1

    .line 4102
    .local v3, ret:Z
    if-eqz p1, :cond_1

    .line 4103
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4104
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 4105
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    .line 4117
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

    .line 4119
    monitor-exit p0

    return v3

    .line 4107
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4108
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 4109
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 4110
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    .line 4111
    const/4 v3, 0x0

    .line 4112
    goto :goto_0

    .line 4108
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4101
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
    .line 3978
    const/4 v3, 0x1

    .line 3979
    .local v3, ret:Z
    if-eqz p1, :cond_1

    .line 3980
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3981
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 3982
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    .line 3994
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

    .line 3996
    return v3

    .line 3984
    :cond_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3985
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 3986
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 3987
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    if-nez v4, :cond_2

    .line 3988
    const/4 v3, 0x0

    .line 3989
    goto :goto_0

    .line 3985
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private loadDisablelistLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x1

    .line 3682
    sget-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    if-nez v10, :cond_0

    .line 3683
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    sput-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    .line 3685
    :cond_0
    sget-object v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 3686
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFileForDisabledList()Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    .line 3687
    .local v2, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v6, 0x0

    .line 3688
    .local v6, stream:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v1

    .line 3690
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

    .line 3691
    .end local v6           #stream:Ljava/io/FileInputStream;
    .local v7, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 3692
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v5, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3696
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, type:I
    if-eq v9, v13, :cond_2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 3698
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3699
    .local v8, tag:Ljava/lang/String;
    const-string v10, "disabledlist"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3700
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

    .line 3720
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 3721
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

    .line 3732
    .end local v0           #e:Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v6, :cond_3

    .line 3733
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 3738
    :cond_3
    :goto_2
    return-void

    .line 3703
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    .restart local v8       #tag:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_4
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 3704
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 3706
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

    .line 3707
    :cond_6
    if-eq v9, v14, :cond_5

    const/4 v10, 0x4

    if-eq v9, v10, :cond_5

    .line 3710
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3711
    const-string v10, "packagename"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3712
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

    .line 3714
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

    .line 3715
    :catch_1
    move-exception v0

    .line 3716
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

    .line 3722
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #outerDepth:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    :catch_2
    move-exception v0

    move-object v6, v7

    .line 3723
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

    .line 3730
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 3724
    .end local v4           #outerDepth:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    :catch_3
    move-exception v0

    .line 3725
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

    .line 3726
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 3727
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

    .line 3728
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 3729
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

    .line 3735
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_6
    move-exception v10

    goto/16 :goto_2

    .line 3728
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 3726
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 3724
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 3722
    :catch_a
    move-exception v0

    goto/16 :goto_4

    .line 3720
    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method

.method private loadSettingsLocked()V
    .locals 15

    .prologue
    .line 983
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 984
    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v8, 0x0

    .line 985
    .local v8, stream:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v3

    .line 987
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

    .line 988
    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v9, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 989
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v7, v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 993
    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, type:I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 995
    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 996
    .local v10, tag:Ljava/lang/String;
    const-string v12, "policies"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 997
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

    .line 1049
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_0
    move-exception v2

    move-object v8, v9

    .line 1050
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

    .line 1061
    .end local v2           #e:Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v8, :cond_2

    .line 1062
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1068
    :cond_2
    :goto_2
    return-void

    .line 1000
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_3
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 1001
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 1003
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

    .line 1004
    :cond_5
    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    const/4 v12, 0x4

    if-eq v11, v12, :cond_4

    .line 1007
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1008
    const-string v12, "admin"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1009
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

    .line 1011
    .local v5, name:Ljava/lang/String;
    :try_start_4
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDeviceAdminInfo;

    move-result-object v1

    .line 1013
    .local v1, dai:Lcom/motorola/motepm/MotDeviceAdminInfo;
    if-eqz v1, :cond_4

    .line 1014
    new-instance v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;-><init>(Lcom/motorola/motepm/MotDeviceAdminInfo;)V

    .line 1015
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1016
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    iget-object v13, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v13}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
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

    .line 1019
    .end local v0           #ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v1           #dai:Lcom/motorola/motepm/MotDeviceAdminInfo;
    :catch_1
    move-exception v2

    .line 1020
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

    .line 1051
    .end local v2           #e:Ljava/lang/RuntimeException;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_2
    move-exception v2

    move-object v8, v9

    .line 1052
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

    .line 1023
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

    .line 1024
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    .line 1026
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3

    .line 1053
    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_3
    move-exception v2

    move-object v8, v9

    .line 1054
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

    .line 1027
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

    .line 1028
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    .line 1030
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_3

    .line 1055
    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_4
    move-exception v2

    move-object v8, v9

    .line 1056
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

    .line 1033
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

    .line 1034
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

    .line 1036
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_3

    .line 1057
    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_5
    move-exception v2

    move-object v8, v9

    .line 1058
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

    .line 1034
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

    .line 1039
    :cond_a
    :try_start_9
    const-string v12, "password-complexity"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1040
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    .line 1042
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 1045
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

    .line 1046
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

    .line 1059
    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1064
    .end local v6           #outerDepth:I
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #type:I
    :catch_6
    move-exception v12

    goto/16 :goto_2

    .line 1057
    :catch_7
    move-exception v2

    goto :goto_8

    .line 1055
    :catch_8
    move-exception v2

    goto/16 :goto_6

    .line 1053
    :catch_9
    move-exception v2

    goto/16 :goto_5

    .line 1051
    :catch_a
    move-exception v2

    goto/16 :goto_4

    .line 1049
    :catch_b
    move-exception v2

    goto/16 :goto_0
.end method

.method private logStat(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .parameter "who"
    .parameter "operationName"

    .prologue
    .line 704
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method private logStat(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "who"
    .parameter "operationName"
    .parameter "data"

    .prologue
    .line 672
    if-eqz p1, :cond_1

    .line 673
    if-nez p3, :cond_0

    const-string p3, ""

    .line 677
    :cond_0
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 679
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 680
    .local v4, pinfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 681
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 682
    .local v7, title:Ljava/lang/CharSequence;
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 683
    .local v2, appVersionName:Ljava/lang/String;
    iget v1, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
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

    .line 695
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

    .line 696
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "MOT_POLICY_MNGR"

    invoke-static {v8, v9, v6}, Lcom/motorola/android/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 701
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #appVersionCode:I
    .end local v2           #appVersionName:Ljava/lang/String;
    .end local v4           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #statement:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 684
    .restart local v5       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 686
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 699
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
    .line 900
    const-string v0, "/data/system/mot_device_policies.xml"

    .line 901
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
    .line 3677
    const-string v0, "/data/system/mot_device_disabled_list.xml"

    .line 3678
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
    .line 5018
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.devicemanagement.MOTOROLA_DPM_APP_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5019
    .local v0, i:Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v1, "EXTRA_MOTOROLA_DPM_BLACK_LIST_APP_TO_ENABLE_APPS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 5020
    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "EXTRA_MOTOROLA_DPM_BLACK_LIST_APP_TO_DISABLE_APPS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 5021
    :cond_1
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5022
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

    .line 5048
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "[BEGIN] managePackagesSafely"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5051
    if-nez p1, :cond_0

    .line 5052
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #packagesToEnable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5054
    .restart local p1       #packagesToEnable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-nez p2, :cond_1

    .line 5055
    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #packagesToDisable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5058
    .restart local p2       #packagesToDisable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5059
    .local v7, packagesToEnableAux:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5060
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

    .line 5061
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 5062
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-direct {p0, v8, v7, v11}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    .line 5063
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-direct {p0, v8, v7, v11}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    .line 5064
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-direct {p0, v8, v7, v11}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    .line 5065
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

    .line 5067
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppBlackLists()Ljava/util/List;

    move-result-object v2

    .line 5068
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

    .line 5069
    .local v3, blackListedPackageName:Ljava/lang/String;
    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5071
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

    .line 5073
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 5074
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedAppsIncludingPreloadedApps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 5076
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

    .line 5079
    .end local v2           #allBlackListedPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5080
    .local v6, packagesToDisableAux:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5081
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

    .line 5082
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 5084
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    .line 5085
    .local v1, adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5086
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

    .line 5087
    .local v0, admin:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 5088
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5091
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

    .line 5094
    .end local v1           #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.motorola.devicemanagement.MOTOROLA_DPM_APP_CONTROL"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5095
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

    .line 5096
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

    .line 5097
    :cond_a
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5099
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "[END] managePackagesSafely"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    return-void
.end method

.method private reconcileAdministrators()V
    .locals 6

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 1072
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    .line 1073
    .local v4, updated:Z
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, index:I
    :goto_0
    if-ltz v3, :cond_1

    .line 1074
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1075
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1076
    .local v1, adminReceiver:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1081
    const/4 v4, 0x1

    .line 1082
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1083
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1086
    .end local v0           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v1           #adminReceiver:Landroid/content/ComponentName;
    :cond_1
    if-eqz v4, :cond_2

    .line 1087
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1089
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
    .line 4698
    .local p2, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    .line 4699
    invoke-virtual {p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->isPolicyAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4714
    :cond_0
    return-void

    .line 4706
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPackages()[Ljava/lang/String;

    move-result-object v0

    .line 4707
    .local v0, allowPoliciesPackages:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 4708
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

    .line 4709
    aget-object v2, v0, v1

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4710
    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "Conflict detected!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4711
    aget-object v2, v0, v1

    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4707
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private saveDisablelistLocked()V
    .locals 9

    .prologue
    .line 3741
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFileForDisabledList()Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    .line 3742
    .local v2, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v4, 0x0

    .line 3744
    .local v4, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3745
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .local v5, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3746
    .local v3, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3747
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3748
    const/4 v6, 0x0

    const-string v7, "disabledlist"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3749
    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3750
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 3751
    const/4 v6, 0x0

    const-string v7, "packagename"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3752
    const/4 v7, 0x0

    const-string v8, "name"

    sget-object v6, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3753
    const/4 v6, 0x0

    const-string v7, "packagename"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3750
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3756
    .end local v1           #i:I
    :cond_0
    const/4 v6, 0x0

    const-string v7, "disabledlist"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3757
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3758
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 3759
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 3770
    .end local v3           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 3760
    :catch_0
    move-exception v0

    .line 3762
    .local v0, e:Ljava/io/IOException;
    :goto_2
    if-eqz v4, :cond_1

    .line 3763
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3768
    :cond_1
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_1

    .line 3765
    :catch_1
    move-exception v6

    goto :goto_3

    .line 3760
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
    .line 977
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 978
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 979
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 980
    return-void
.end method

.method private sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 9
    .parameter "notification_id"
    .parameter "title"
    .parameter "details"

    .prologue
    .line 3311
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "######sendPolicyChangedNotification is called"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3315
    .local v0, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 3319
    .local v4, mNotificationMgr:Landroid/app/NotificationManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3320
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3321
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

    .line 3331
    .local v3, mNotification:Landroid/app/Notification;
    invoke-virtual {v4, p1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3335
    return-void

    .line 3333
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
    .line 5423
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "[BEGIN] setAllowPolicy"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5424
    const/4 v7, 0x0

    .line 5426
    .local v7, result:I
    monitor-enter p0

    .line 5427
    if-nez p1, :cond_0

    .line 5428
    :try_start_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "administratorComponentName param cannot be null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5494
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 5431
    :cond_0
    if-nez p2, :cond_1

    .line 5432
    :try_start_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "policyStrategy param cannot be null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5434
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

    .line 5438
    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getAdministratorPolicy()I

    move-result v8

    invoke-virtual {p0, p1, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5441
    .local v0, administratorApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_2

    .line 5442
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "administratorComponentName param is invalid."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5445
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 5447
    .local v3, ident:J
    :try_start_2
    invoke-virtual {p2, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z

    move-result v5

    .line 5450
    .local v5, initialPolicyStatus:Z
    if-eq v5, p3, :cond_5

    .line 5451
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "previous and current policy are not the same, processing it"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5453
    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->isPolicyAllowed()Z

    move-result v2

    .line 5454
    .local v2, before:Z
    invoke-virtual {p2, v0, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->setPolicyStatus(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V

    .line 5455
    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->isPolicyAllowed()Z

    move-result v1

    .line 5457
    .local v1, after:Z
    if-eq v2, v1, :cond_4

    .line 5458
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "sending intent to enable/disable policy."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    if-eqz p3, :cond_3

    .line 5461
    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->enablePackagesSafely(Ljava/util/List;)V

    .line 5466
    :goto_0
    invoke-virtual {p2, p1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->notifyPolicyChanged(Landroid/content/ComponentName;Z)V

    .line 5467
    invoke-virtual {p2, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->onPolicyChanged(Z)V

    .line 5472
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5478
    .end local v1           #after:Z
    .end local v2           #before:Z
    :goto_2
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5481
    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->isPolicyAllowed()Z

    move-result v6

    .line 5482
    .local v6, isPolicyAllowed:Z
    if-eq v6, p3, :cond_6

    .line 5483
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "Current set conflicts with another administrator setting\n[END] setAllowPolicy"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5485
    const/4 v7, -0x3

    .line 5492
    :goto_3
    invoke-virtual {p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;->getPolicyId()I

    move-result v8

    invoke-virtual {p0, p1, v8, v7, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    .line 5493
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v7

    .line 5463
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

    .line 5478
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

    .line 5469
    .restart local v1       #after:Z
    .restart local v2       #before:Z
    .restart local v5       #initialPolicyStatus:Z
    :cond_4
    :try_start_6
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "policy status did not change after updating current administrator"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5475
    .end local v1           #after:Z
    .end local v2           #before:Z
    :cond_5
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "nothing to do, previous and newer policy settings are the same"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 5487
    .restart local v6       #isPolicyAllowed:Z
    :cond_6
    :try_start_7
    const-string v8, "MotDevicePolicyManagerService"

    const-string v9, "Sucess\n[END] setAllowPolicy"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5489
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private setAppWhiteListDisabledLocked()V
    .locals 8

    .prologue
    .line 4401
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x2080

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 4402
    .local v4, installedAppsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4403
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

    .line 4404
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_0

    .line 4405
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4409
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4412
    .local v2, ident:J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->enablePackagesSafely(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4414
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4417
    .end local v2           #ident:J
    :cond_2
    return-void

    .line 4414
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
    .line 4320
    .local p1, appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "MotDevicePolicyManagerService"

    const-string v14, "[BEGIN] setAppWhiteListLocked"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    if-nez p1, :cond_0

    .line 4323
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "appWhiteList param cannot be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 4326
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v14, 0x2080

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v9

    .line 4327
    .local v9, installedAppsList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4333
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

    .line 4334
    .local v5, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v13, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_1

    iget v13, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v13, v13, 0x80

    if-nez v13, :cond_1

    .line 4335
    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4339
    .end local v5           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4340
    .local v4, appWhiteListAux:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4341
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

    .line 4342
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

    .line 4346
    invoke-direct/range {p0 .. p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v13

    if-nez v13, :cond_3

    .line 4347
    invoke-direct/range {p0 .. p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getCurrentWhiteListedApps()Ljava/util/List;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 4349
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

    .line 4353
    invoke-direct/range {p0 .. p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppBlackLists()Ljava/util/List;

    move-result-object v3

    .line 4354
    .local v3, allBlackListedPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 4355
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

    .line 4356
    .local v12, whitePackageName:Ljava/lang/String;
    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 4357
    invoke-interface {v4, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4361
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

    .line 4366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v14}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    .line 4367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v14}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    .line 4368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v14}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    .line 4369
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

    .line 4373
    invoke-direct/range {p0 .. p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    .line 4374
    .local v2, adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4375
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

    .line 4376
    .local v1, admin:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4378
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

    .line 4381
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4382
    .local v11, packageName:Ljava/lang/String;
    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4384
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

    .line 4386
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    .line 4387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 4389
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

    .line 4391
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4395
    .end local v7           #ident:J
    :cond_9
    const-string v13, "MotDevicePolicyManagerService"

    const-string v14, "[END] setAppWhiteListLocked"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4396
    return-void

    .line 4391
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
    .line 3608
    monitor-enter p0

    .line 3609
    if-eqz p2, :cond_2

    .line 3610
    :try_start_0
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3613
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3614
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 3619
    :cond_0
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3620
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveDisablelistLocked()V

    .line 3636
    :cond_1
    :goto_0
    monitor-exit p0

    .line 3637
    return-void

    .line 3623
    :cond_2
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3624
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3625
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveDisablelistLocked()V

    .line 3628
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3629
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0

    .line 3636
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
    .line 2438
    const/4 v0, 0x0

    return v0
.end method

.method private setSDCardAllowed(Landroid/content/ComponentName;Z)I
    .locals 10
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 2191
    monitor-enter p0

    .line 2192
    if-nez p1, :cond_0

    .line 2193
    :try_start_0
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "ComponentName is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2248
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2195
    :cond_0
    const/4 v6, 0x0

    .line 2197
    .local v6, result:I
    const/16 v7, 0x67

    :try_start_1
    invoke-virtual {p0, p1, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2200
    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 2202
    .local v3, ident:J
    const/4 v7, 0x0

    :try_start_2
    invoke-direct {p0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v2

    .line 2204
    .local v2, beforeStatus:Z
    iget-boolean v7, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    if-eq v7, p2, :cond_2

    .line 2205
    iput-boolean p2, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    .line 2207
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

    .line 2209
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2215
    .local v0, afterStatus:Z
    if-eq v2, v0, :cond_1

    .line 2217
    if-eqz p2, :cond_4

    .line 2219
    const-string v7, "MotDevicePolicyManagerService"

    const-string v8, "######setSDCardAllowed, all admins allow SD card"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2224
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "MotDevicePolicyManagerService"

    const-string v8, "######setSDCardAllowed, enable intent sent"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    iget-object v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2236
    .end local v5           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2239
    .end local v0           #afterStatus:Z
    :cond_2
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2242
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v7

    if-eq v7, p2, :cond_3

    .line 2243
    const/4 v6, -0x3

    .line 2246
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

    .line 2247
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v6

    .line 2228
    .restart local v0       #afterStatus:Z
    :cond_4
    :try_start_4
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2231
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v7, "MotDevicePolicyManagerService"

    const-string v8, "######setSDCardAllowed, disable intent sent"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    iget-object v7, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 2239
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
    .line 2299
    monitor-enter p0

    .line 2300
    if-nez p1, :cond_0

    .line 2301
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2320
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2303
    :cond_0
    const/4 v1, 0x0

    .line 2305
    .local v1, result:I
    const/16 v2, 0x6a

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2307
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-eq v2, p2, :cond_1

    .line 2308
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 2310
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

    .line 2312
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 2314
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSimplePasswordAllowed(Landroid/content/ComponentName;)Z

    move-result v2

    if-eq v2, p2, :cond_2

    .line 2315
    const/4 v1, -0x3

    .line 2318
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

    .line 2319
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
    .line 4019
    monitor-enter p0

    if-nez p1, :cond_0

    .line 4020
    :try_start_0
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "ComponentName is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4019
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 4022
    :cond_0
    const/4 v8, 0x0

    .line 4024
    .local v8, result:I
    const/16 v10, 0x75

    :try_start_1
    invoke-virtual {p0, p1, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4026
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v7, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    .line 4027
    .local v7, nativeStatus:Z
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v6

    .line 4030
    .local v6, mBeforeStatus:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 4032
    .local v2, ident:J
    if-eq v7, p2, :cond_3

    .line 4034
    :try_start_2
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    .line 4036
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

    .line 4038
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 4041
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v5

    .line 4042
    .local v5, mAfterStatus:Z
    if-eq v6, v5, :cond_3

    .line 4045
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.VPN_DISABLED_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4048
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "MotDevicePolicyManagerService"

    if-eqz p2, :cond_5

    const-string v10, "######setVPNAllowed, enable intent sent"

    :goto_0
    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    const-string v10, "policy_name"

    const/16 v11, 0xd

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4052
    const-string v10, "componet_name"

    invoke-virtual {v4, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4053
    const-string v10, "native_status"

    invoke-virtual {v4, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4054
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4058
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 4059
    const-string v10, "connectivity"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v9

    .line 4061
    .local v9, service:Landroid/net/IConnectivityManager;
    if-eqz v9, :cond_6

    .line 4062
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "[Legacy VPN]"

    invoke-interface {v9, v11, v12}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-ne v10, v11, :cond_1

    .line 4064
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->dismissVpnDialog(Landroid/content/Context;)V

    .line 4070
    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4073
    .end local v9           #service:Landroid/net/IConnectivityManager;
    :cond_2
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 4074
    const-string v10, "sys.vpn.tun.enabled"

    const-string v11, "1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4082
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

    .line 4083
    const/4 v8, -0x3

    .line 4088
    :cond_4
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4091
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

    .line 4092
    monitor-exit p0

    return v8

    .line 4048
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #mAfterStatus:Z
    :cond_5
    :try_start_4
    const-string v10, "######setVPNAllowed, disable intent sent"

    goto :goto_0

    .line 4067
    .restart local v9       #service:Landroid/net/IConnectivityManager;
    :cond_6
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "System error, ConnectivityService not found!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    const/4 v8, -0x1

    goto :goto_1

    .line 4076
    .end local v9           #service:Landroid/net/IConnectivityManager;
    :cond_7
    const-string v10, "sys.vpn.tun.enabled"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 4085
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mAfterStatus:Z
    :catch_0
    move-exception v1

    .line 4086
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

    .line 4088
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

    .line 3893
    if-nez p1, :cond_0

    .line 3894
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "ComponentName is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 3896
    :cond_0
    const/4 v8, 0x0

    .line 3898
    .local v8, result:I
    const/16 v10, 0x75

    invoke-virtual {p0, p1, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3900
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v7, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    .line 3901
    .local v7, nativeStatus:Z
    invoke-direct {p0, v11}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z

    move-result v6

    .line 3904
    .local v6, mBeforeStatus:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3906
    .local v2, ident:J
    if-eq v7, p2, :cond_1

    .line 3908
    :try_start_0
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    .line 3910
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

    .line 3912
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 3915
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z

    move-result v5

    .line 3916
    .local v5, mAfterStatus:Z
    if-eq v6, v5, :cond_1

    .line 3919
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.VPN_SPLIT_TUNNELING_DISABLED_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3922
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "MotDevicePolicyManagerService"

    if-eqz p2, :cond_3

    const-string v10, "######setVPNSplitTunnelingAllowed, enable intent sent"

    :goto_0
    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    const-string v10, "policy_name"

    const/16 v11, 0xc

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3926
    const-string v10, "componet_name"

    invoke-virtual {v4, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3927
    const-string v10, "native_status"

    invoke-virtual {v4, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3928
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3932
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 3935
    const-string v10, "connectivity"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v9

    .line 3937
    .local v9, service:Landroid/net/IConnectivityManager;
    if-eqz v9, :cond_4

    .line 3938
    const-string v10, "0.0.0.0/0 ::/0"

    invoke-interface {v9, v10}, Landroid/net/IConnectivityManager;->addRouteForVpn(Ljava/lang/String;)Z

    .line 3958
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

    .line 3959
    const/4 v8, -0x3

    .line 3964
    :cond_2
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3968
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

    .line 3969
    return v8

    .line 3922
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #mAfterStatus:Z
    :cond_3
    :try_start_1
    const-string v10, "######setVPNSplitTunnelingAllowed, disable intent sent"

    goto :goto_0

    .line 3940
    .restart local v9       #service:Landroid/net/IConnectivityManager;
    :cond_4
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "System error, ConnectivityService not found!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    const/4 v8, -0x1

    goto :goto_1

    .line 3945
    .end local v9           #service:Landroid/net/IConnectivityManager;
    :cond_5
    const-string v10, "connectivity"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v9

    .line 3947
    .restart local v9       #service:Landroid/net/IConnectivityManager;
    if-eqz v9, :cond_6

    .line 3948
    const-string v10, "0.0.0.0/0 ::/0"

    invoke-interface {v9, v10}, Landroid/net/IConnectivityManager;->delRouteForVpn(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3961
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mAfterStatus:Z
    .end local v9           #service:Landroid/net/IConnectivityManager;
    :catch_0
    move-exception v1

    .line 3962
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

    .line 3964
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 3950
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

    .line 3951
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

    .line 4728
    :try_start_0
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android"

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 4729
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

    .line 4730
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

    .line 4732
    :try_start_1
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x40

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 4733
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

    .line 4735
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

    .line 4755
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #sys:Landroid/content/pm/PackageInfo;
    :goto_1
    return v7

    .line 4738
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 4739
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 4744
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #packageName:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    .line 4745
    .local v1, adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4746
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

    .line 4747
    .local v0, admin:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4748
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

    .line 4752
    .end local v0           #admin:Landroid/content/ComponentName;
    .end local v1           #adminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #sys:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .line 4753
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 4755
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

    .line 2887
    const/16 v9, 0x6f

    invoke-virtual {p0, v10, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2889
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->build(Landroid/os/Bundle;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;

    move-result-object v5

    .line 2890
    .local v5, emailIntent:Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;
    if-eqz v5, :cond_1

    .line 2891
    const-string v9, "email"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2892
    .local v4, emailAddr:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 2893
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2895
    .local v7, ident:J
    :try_start_0
    invoke-static {}, Lcom/motorola/motepm/MotEdmDb;->getInstance()Lcom/motorola/motepm/MotEdmDb;

    move-result-object v3

    .line 2896
    .local v3, edmDb:Lcom/motorola/motepm/MotEdmDb;
    iget-object v9, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v9}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v4, v10, v11}, Lcom/motorola/motepm/MotEdmDb;->addUuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2897
    invoke-virtual {v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 2898
    .local v6, i:Landroid/content/Intent;
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2900
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2904
    const-string v9, "@"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 2905
    .local v2, domainIndex:I
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2906
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

    .line 2913
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #domainIndex:I
    .end local v3           #edmDb:Lcom/motorola/motepm/MotEdmDb;
    .end local v4           #emailAddr:Ljava/lang/String;
    .end local v6           #i:Landroid/content/Intent;
    .end local v7           #ident:J
    :goto_0
    return-void

    .line 2900
    .restart local v4       #emailAddr:Ljava/lang/String;
    .restart local v7       #ident:J
    :catchall_0
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 2908
    .end local v7           #ident:J
    :cond_0
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "Failed parsing email account bundle: missing field types"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2911
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

    .line 3210
    const/16 v5, 0x72

    invoke-virtual {p0, v7, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3212
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3213
    .local v2, ident:J
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.motorola.intent.action.ADD_VPN_PROFILE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3214
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "bundle"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3215
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3216
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3217
    invoke-static {}, Lcom/motorola/motepm/MotEdmDb;->getInstance()Lcom/motorola/motepm/MotEdmDb;

    move-result-object v1

    .line 3218
    .local v1, edmDb:Lcom/motorola/motepm/MotEdmDb;
    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VPN_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v7, v7, v6}, Lcom/motorola/motepm/MotEdmDb;->addUuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3219
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3221
    iget-object v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const-string v6, "vpn-add"

    invoke-direct {p0, v5, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 3222
    return-void
.end method

.method public deleteAuthentecVPNConfig()V
    .locals 0

    .prologue
    .line 3306
    return-void
.end method

.method public deleteVpn(Landroid/os/Bundle;)V
    .locals 6
    .parameter "extraArgs"

    .prologue
    .line 3231
    const/4 v4, 0x0

    const/16 v5, 0x73

    invoke-virtual {p0, v4, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3233
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3234
    .local v1, ident:J
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.intent.action.DEL_VPN_PROFILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3235
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "bundle"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3236
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3237
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3238
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3239
    return-void
.end method

.method disablePackages([Ljava/lang/String;)V
    .locals 1
    .parameter "packagesToDisable"

    .prologue
    .line 5014
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->managePackages([Ljava/lang/String;[Ljava/lang/String;)V

    .line 5015
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
    .line 5037
    .local p1, packagesToDisable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->managePackagesSafely(Ljava/util/List;Ljava/util/List;)V

    .line 5038
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2712
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2715
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

    .line 2739
    :goto_0
    return-void

    .line 2721
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2723
    .local v3, p:Landroid/util/Printer;
    monitor-enter p0

    .line 2724
    :try_start_0
    const-string v4, "Current Device Policy Manager state:"

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2726
    const-string v4, "  Enabled Device Admins:"

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2727
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2728
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2729
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2730
    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    .line 2731
    const-string v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2732
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2733
    const-string v4, "    "

    invoke-virtual {v1, v4, p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2728
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2737
    .end local v1           #ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2738
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
    .line 5010
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->managePackages([Ljava/lang/String;[Ljava/lang/String;)V

    .line 5011
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
    .line 5029
    .local p1, packagesToEnable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->managePackagesSafely(Ljava/util/List;Ljava/util/List;)V

    .line 5030
    return-void
.end method

.method public enforcePasswordSet(Z)V
    .locals 7
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    .line 1518
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1525
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

    .line 1527
    monitor-enter p0

    .line 1528
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isActivePasswordSufficient()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 1529
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v1

    .line 1532
    .local v1, ident:J
    :try_start_2
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "saveSettingsLocked "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1536
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1539
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "lockNow "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1542
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1545
    .end local v1           #ident:J
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1546
    return-void

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1542
    .end local v0           #e:Ljava/lang/SecurityException;
    .restart local v1       #ident:J
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1545
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

    .line 880
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 881
    .local v2, resolveIntent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 882
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 884
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 885
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

    .line 889
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

    .line 895
    :goto_0
    return-object v3

    .line 890
    :catch_0
    move-exception v0

    .line 891
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

    .line 892
    goto :goto_0

    .line 893
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 894
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

    .line 895
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
    .line 810
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 811
    .local v2, callingUid:I
    if-eqz p1, :cond_2

    .line 812
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 813
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_0

    .line 814
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

    .line 817
    :cond_0
    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 818
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

    .line 821
    :cond_1
    iget-object v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v4, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 822
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

    .line 829
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 830
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 831
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 832
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-ne v4, v2, :cond_4

    iget-object v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v4, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 833
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_3
    return-object v1

    .line 830
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 836
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
    .line 5573
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .parameter "who"

    .prologue
    .line 799
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 800
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

    .line 805
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
    .line 1193
    monitor-enter p0

    .line 1194
    :try_start_0
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1195
    .local v0, N:I
    if-gtz v0, :cond_0

    .line 1196
    const/4 v2, 0x0

    monitor-exit p0

    .line 1202
    :goto_0
    return-object v2

    .line 1198
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1199
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1200
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1202
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1203
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
    .line 2920
    const/4 v14, 0x0

    const/16 v15, 0x70

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2922
    .local v6, ident:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 2924
    .local v10, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 2925
    .local v1, activeSyncID:Ljava/lang/String;
    move-object v5, v1

    .line 2927
    .local v5, id:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2928
    const-string v5, ""

    .line 2930
    :cond_0
    const/4 v12, 0x0

    .line 2931
    .local v12, sum:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, i:I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 2932
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    add-int/2addr v12, v14

    goto :goto_0

    .line 2935
    :cond_1
    if-nez v12, :cond_5

    .line 2937
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2938
    .local v13, uid:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    .line 2939
    .local v9, len:I
    const/4 v3, 0x0

    .line 2940
    const/4 v8, 0x0

    .line 2941
    .local v8, l:I
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v14, 0x20

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v11, sb:Ljava/lang/StringBuilder;
    move v4, v3

    .line 2942
    .end local v3           #i:I
    .local v4, i:I
    :goto_1
    const/16 v14, 0x20

    if-ge v8, v14, :cond_4

    if-ge v4, v9, :cond_4

    .line 2943
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2944
    .local v2, c:C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2945
    :cond_2
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2946
    add-int/lit8 v8, v8, 0x1

    :cond_3
    move v4, v3

    .line 2948
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 2949
    .end local v2           #c:C
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2953
    .end local v4           #i:I
    .end local v8           #l:I
    .end local v9           #len:I
    .end local v11           #sb:Ljava/lang/StringBuilder;
    .end local v13           #uid:Ljava/lang/String;
    :goto_2
    move-object v1, v5

    .line 2954
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

    .line 2955
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2956
    return-object v1

    .line 2951
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
    .line 4664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4666
    .local v1, appsBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 4667
    if-nez p1, :cond_0

    .line 4668
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4683
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4671
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4672
    .local v0, adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 4673
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4676
    :cond_1
    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4678
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4679
    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "getAppBlackList - no app blacklist set for the specified administrator"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    :goto_0
    monitor-exit p0

    .line 4685
    return-object v1

    .line 4681
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
    .line 4295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4297
    .local v1, appsWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 4298
    if-nez p1, :cond_0

    .line 4299
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4314
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4302
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4303
    .local v0, adminApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 4304
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4307
    :cond_1
    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4309
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4310
    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "getAppWhiteList - no app whitelist set for the specified administrator"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4314
    :goto_0
    monitor-exit p0

    .line 4316
    return-object v1

    .line 4312
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
    .line 5569
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceEncryptionStatus()I
    .locals 1

    .prologue
    .line 3802
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
    .line 3600
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3601
    const/4 v0, 0x0

    .line 3603
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

    .line 2066
    monitor-enter p0

    .line 2068
    if-eqz p1, :cond_1

    .line 2069
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2070
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 2071
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    monitor-exit p0

    .line 2089
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 2073
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 2090
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2076
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2077
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 2078
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2079
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-eqz v4, :cond_2

    .line 2081
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "######getExternalStorageEncryption, TURE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2077
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2087
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "######getExternalStorageEncryption, FALSE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getExternalStorageEncryptionStatus()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 3813
    const-string v4, "MotDevicePolicyManagerService"

    const-string v5, "getExternalStorageEncryptionStatus() is called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    const-string v4, "ro.crypto.state"

    const-string v5, "unsupported"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3815
    .local v2, status:Ljava/lang/String;
    const-string v4, "unsupported"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3816
    const/4 v3, 0x0

    .line 3831
    :cond_0
    :goto_0
    return v3

    .line 3822
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v4

    const-string v5, "memory_encr"

    invoke-virtual {v4, v5}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemProperty(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3825
    .local v1, encrDeviceStatus:I
    if-ne v1, v3, :cond_0

    .line 3826
    const/4 v3, 0x3

    goto :goto_0

    .line 3828
    .end local v1           #encrDeviceStatus:I
    :catch_0
    move-exception v0

    .line 3829
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
    .line 2159
    const/4 v2, 0x0

    .line 2160
    .local v2, enabled:Z
    monitor-enter p0

    .line 2161
    if-eqz p1, :cond_1

    .line 2162
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2163
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    :goto_0
    monitor-exit p0

    .line 2173
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v2

    .line 2163
    goto :goto_0

    .line 2165
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2166
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 2167
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 2168
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 2169
    const/4 v2, 0x1

    .line 2173
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_2
    monitor-exit p0

    move v4, v2

    goto :goto_1

    .line 2166
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2174
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
    .line 5531
    const/4 v0, 0x0

    .line 5532
    .local v0, message:Ljava/lang/String;
    sget-object v1, Lcom/motorola/motepm/Policy;->OWNER_INFO_POLICY:Lcom/motorola/motepm/policy/OwnerInfoPolicy;

    if-eqz v1, :cond_0

    .line 5533
    monitor-enter p0

    .line 5534
    :try_start_0
    sget-object v1, Lcom/motorola/motepm/Policy;->OWNER_INFO_POLICY:Lcom/motorola/motepm/policy/OwnerInfoPolicy;

    invoke-virtual {v1, p1}, Lcom/motorola/motepm/policy/OwnerInfoPolicy;->getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 5535
    monitor-exit p0

    .line 5538
    :cond_0
    return-object v0

    .line 5535
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

    .line 3654
    monitor-enter p0

    .line 3655
    :try_start_0
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mDisablePackageList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3656
    :cond_0
    const/4 v3, -0x1

    monitor-exit p0

    .line 3672
    :goto_0
    return v3

    .line 3658
    :cond_1
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    .line 3660
    :try_start_1
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 3661
    .local v2, packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 3662
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

    .line 3663
    const/4 v3, 0x1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 3673
    .end local v1           #i:I
    .end local v2           #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 3661
    .restart local v1       #i:I
    .restart local v2       #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3666
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

    .line 3667
    :try_start_4
    monitor-exit p0

    move v3, v4

    goto :goto_0

    .line 3668
    .end local v1           #i:I
    .end local v2           #packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 3669
    .local v0, e:Ljava/lang/SecurityException;
    monitor-exit p0

    move v3, v5

    goto :goto_0

    .line 3672
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
    .line 1761
    const v3, 0x7fffffff

    .line 1763
    .local v3, period:I
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1764
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1765
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1767
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    if-le v3, v4, :cond_0

    .line 1768
    iget v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    .line 1764
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1771
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    return v3
.end method

.method public getPasswordExpirationStatus()I
    .locals 8

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v3

    .line 1783
    .local v3, period:I
    const v4, 0x7fffffff

    if-ge v3, v4, :cond_2

    .line 1784
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1786
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 1787
    .local v0, currentDate:I
    iget v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    if-lez v4, :cond_2

    .line 1788
    iget v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    add-int/2addr v4, v3

    sub-int v2, v4, v0

    .line 1789
    .local v2, daysBeforefExpired:I
    if-gtz v2, :cond_1

    .line 1790
    const/4 v2, 0x0

    .line 1797
    .end local v0           #currentDate:I
    .end local v1           #date:Ljava/util/Date;
    .end local v2           #daysBeforefExpired:I
    :cond_0
    :goto_0
    return v2

    .line 1791
    .restart local v0       #currentDate:I
    .restart local v1       #date:Ljava/util/Date;
    .restart local v2       #daysBeforefExpired:I
    :cond_1
    const/16 v4, 0xe

    if-gt v2, v4, :cond_2

    iget v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    if-ne v0, v4, :cond_0

    .line 1797
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
    .line 1610
    monitor-enter p0

    .line 1611
    const/4 v3, 0x0

    .line 1613
    .local v3, length:I
    if-eqz p1, :cond_1

    .line 1614
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1615
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :goto_0
    monitor-exit p0

    .line 1625
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1615
    goto :goto_0

    .line 1618
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1619
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1620
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1621
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v4, :cond_2

    .line 1622
    iget v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1619
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1625
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1626
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
    .line 1933
    monitor-enter p0

    .line 1934
    const/4 v2, 0x0

    .line 1936
    .local v2, complexity:I
    if-eqz p1, :cond_1

    .line 1937
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1938
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    :goto_0
    monitor-exit p0

    .line 1950
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v2

    .line 1938
    goto :goto_0

    .line 1941
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1942
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 1943
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1944
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    if-ge v2, v4, :cond_2

    .line 1945
    iget v2, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    .line 1942
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1949
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

    .line 1950
    monitor-exit p0

    move v4, v2

    goto :goto_1

    .line 1951
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
    .line 1867
    const/4 v3, 0x0

    .line 1868
    .local v3, password:Ljava/lang/String;
    monitor-enter p0

    .line 1869
    if-nez p1, :cond_0

    .line 1870
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1890
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1874
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1876
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v5, :cond_1

    .line 1878
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1880
    .local v1, ident:J
    :try_start_2
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1881
    .local v4, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->createRecoveryPassword(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 1883
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1888
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

    .line 1890
    monitor-exit p0

    .line 1891
    return-object v3

    .line 1883
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

    .line 1411
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    monitor-enter p0

    .line 1415
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1416
    .local v8, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v8, :cond_0

    .line 1418
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1421
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1435
    :goto_1
    return-void

    .line 1423
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.motorola.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1424
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, v8, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1425
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;

    invoke-direct {v3, p0, p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$2;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1434
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

    .line 1419
    .restart local v8       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getVPNSplitTunnelingStatus()I
    .locals 1

    .prologue
    .line 4007
    const/4 v0, 0x0

    return v0
.end method

.method public getVPNStatus()I
    .locals 1

    .prologue
    .line 4130
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "1.5.0"

    return-object v0
.end method

.method public getVpnByID(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    .line 3249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.FETCH_VPN_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3250
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bundle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3251
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3252
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3253
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "Sending intent to FETCH VPN"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    return-void
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "adminReceiver"
    .parameter "policyId"

    .prologue
    .line 1176
    monitor-enter p0

    .line 1177
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1178
    .local v0, administrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    .line 1179
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

    .line 1183
    .end local v0           #administrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1181
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

    .line 3176
    const/16 v6, 0x74

    invoke-virtual {p0, v8, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3178
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    new-instance v5, Lcom/motorola/motepm/EdmErrorCode;

    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/motorola/motepm/EdmErrorCode;-><init>(Landroid/content/Context;)V

    .line 3180
    .local v5, mEdmError:Lcom/motorola/motepm/EdmErrorCode;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 3181
    :cond_0
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "certPassword or certName are null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    const/16 v6, -0x1389

    invoke-virtual {v5, v6, v8}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 3201
    :goto_0
    return-void

    .line 3185
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3187
    .local v2, ident:J
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.intent.action.INSTALL_CERTIFICATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3188
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "name"

    invoke-virtual {v4, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3189
    invoke-virtual {v4, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3190
    const-string v6, "PASSWORD"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3191
    const/high16 v6, 0x1000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3193
    const-string v6, "MotDevicePolicyManagerService"

    const-string v7, "Sending intent to install Certificate"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3196
    invoke-static {}, Lcom/motorola/motepm/MotEdmDb;->getInstance()Lcom/motorola/motepm/MotEdmDb;

    move-result-object v1

    .line 3197
    .local v1, edmDb:Lcom/motorola/motepm/MotEdmDb;
    iget-object v6, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v8, p3, v8}, Lcom/motorola/motepm/MotEdmDb;->addUuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3198
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3200
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
    .line 5499
    sget-object v0, Lcom/motorola/motepm/Policy;->INSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/InstallPackagePolicy;

    if-eqz v0, :cond_0

    .line 5500
    monitor-enter p0

    .line 5501
    :try_start_0
    sget-object v0, Lcom/motorola/motepm/Policy;->INSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/InstallPackagePolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/motepm/policy/InstallPackagePolicy;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 5502
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5503
    sget-object v0, Lcom/motorola/motepm/Policy;->INSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/InstallPackagePolicy;

    invoke-virtual {v0}, Lcom/motorola/motepm/policy/InstallPackagePolicy;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 5505
    :cond_0
    return-void

    .line 5502
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

    .line 3434
    monitor-enter p0

    .line 3437
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 3439
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

    .line 3443
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
    .line 1974
    monitor-enter p0

    .line 1975
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

    .line 1976
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
    .line 1169
    monitor-enter p0

    .line 1170
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

    .line 1171
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
    .line 5555
    const/4 v0, 0x0

    .line 5556
    .local v0, locked:Z
    sget-object v1, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    if-eqz v1, :cond_0

    .line 5557
    monitor-enter p0

    .line 5558
    :try_start_0
    sget-object v1, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    invoke-virtual {v1, p1}, Lcom/motorola/motepm/policy/LockAdminPolicy;->isLocked(Landroid/content/ComponentName;)Z

    move-result v0

    .line 5559
    monitor-exit p0

    .line 5561
    :cond_0
    return v0

    .line 5559
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

    .line 4236
    monitor-enter p0

    .line 4237
    if-nez p1, :cond_0

    .line 4238
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "administratorComponentName param cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4247
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4241
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4242
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

    .line 4246
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

    .line 4242
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    move v1, v2

    .line 4246
    goto :goto_2
.end method

.method public isPasswordNeedChangetoNotSimple()Z
    .locals 2

    .prologue
    .line 1497
    monitor-enter p0

    .line 1500
    const/4 v0, 0x0

    const/16 v1, 0x6a

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1502
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

    .line 1503
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

    .line 1682
    monitor-enter p0

    .line 1684
    if-eqz p1, :cond_1

    .line 1685
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1686
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 1687
    iget-boolean v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    monitor-exit p0

    .line 1699
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return v3

    .line 1689
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 1700
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1692
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1693
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1694
    iget-object v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1695
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v4, :cond_2

    .line 1696
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1693
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1699
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
    .line 1556
    const/4 v0, 0x1

    return v0
.end method

.method public isPolicyAllowed(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "who"
    .parameter "policy"

    .prologue
    .line 2622
    monitor-enter p0

    .line 2623
    const/4 v1, 0x1

    .line 2625
    .local v1, result:Z
    :try_start_0
    sget-object v2, Lcom/motorola/motepm/Policy;->BOOLEAN_POLICIES:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/BooleanPolicy;

    .line 2626
    .local v0, booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    if-eqz v0, :cond_0

    .line 2627
    invoke-virtual {v0, p1}, Lcom/motorola/motepm/BooleanPolicy;->isAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2630
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2665
    :pswitch_0
    if-nez v0, :cond_1

    .line 2666
    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "This policy doesn\'t support yet."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 2633
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2634
    goto :goto_0

    .line 2637
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSimplePasswordAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2638
    goto :goto_0

    .line 2643
    :pswitch_3
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-virtual {v2, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->isPolicyAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2644
    :goto_1
    goto :goto_0

    .line 2643
    :cond_2
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->isPolicyAllowed()Z

    move-result v1

    goto :goto_1

    .line 2646
    :pswitch_4
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-virtual {v2, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->isPolicyAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2647
    :goto_2
    goto :goto_0

    .line 2646
    :cond_3
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->isPolicyAllowed()Z

    move-result v1

    goto :goto_2

    .line 2649
    :pswitch_5
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v2, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->isPolicyAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2650
    :goto_3
    goto :goto_0

    .line 2649
    :cond_4
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->isPolicyAllowed()Z

    move-result v1

    goto :goto_3

    .line 2655
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2656
    goto :goto_0

    .line 2659
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2660
    goto :goto_0

    .line 2662
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2663
    goto :goto_0

    .line 2670
    .end local v0           #booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2630
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
    .line 3843
    sget-object v2, Lcom/motorola/motepm/Policy;->POLICIES:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 3845
    .local v0, bRet:Z
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 3888
    :goto_1
    return v0

    .line 3843
    .end local v0           #bRet:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3874
    .restart local v0       #bRet:Z
    :sswitch_0
    const/4 v0, 0x1

    .line 3875
    goto :goto_1

    .line 3878
    :sswitch_1
    const-string v2, "ro.crypto.state"

    const-string v3, "unsupported"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3879
    .local v1, status:Ljava/lang/String;
    const-string v2, "unsupported"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3880
    const/4 v0, 0x0

    goto :goto_1

    .line 3882
    :cond_1
    const/4 v0, 0x1

    .line 3884
    goto :goto_1

    .line 3845
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
    .line 3400
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "notifyAdminPolicyEnfocedResult() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    if-nez p1, :cond_0

    .line 3410
    :goto_0
    return-void

    .line 3404
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.app.action.ACTION_EPM_RESULT_RETURN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3405
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "policy_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3406
    const-string v1, "result_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3407
    const-string v1, "native_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3408
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3409
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1215
    monitor-enter p0

    .line 1216
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1217
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1218
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

    .line 1219
    const/4 v2, 0x1

    monitor-exit p0

    .line 1222
    :goto_1
    return v2

    .line 1217
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1222
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_1

    .line 1223
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
    .line 3285
    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 14
    .parameter "adminReceiver"

    .prologue
    const/4 v13, 0x1

    .line 1235
    monitor-enter p0

    .line 1236
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1237
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    .line 1238
    monitor-exit p0

    .line 1401
    :goto_0
    return-void

    .line 1240
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    if-eq v10, v11, :cond_2

    .line 1243
    sget-object v10, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    if-eqz v10, :cond_1

    .line 1244
    sget-object v10, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    invoke-virtual {v10, p1}, Lcom/motorola/motepm/policy/LockAdminPolicy;->isLocked(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1246
    sget-object v10, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    invoke-virtual {v10}, Lcom/motorola/motepm/policy/LockAdminPolicy;->notifyOperationDenied()V

    .line 1247
    monitor-exit p0

    goto :goto_0

    .line 1400
    .end local v0           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1251
    .restart local v0       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 1261
    .local v4, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1263
    iget-object v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1264
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppBlackList(Landroid/content/ComponentName;Ljava/util/List;)I

    .line 1267
    :cond_3
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    if-eqz v10, :cond_4

    .line 1268
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppWhiteListDisabled(Landroid/content/ComponentName;)I

    .line 1272
    :cond_4
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v10, :cond_5

    .line 1273
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1274
    .local v9, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->createRecoveryPassword(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1278
    .end local v9           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "Deleting All Configurations of Admin"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->deleteAllConfigs(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;)V

    .line 1284
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

    .line 1285
    .local v7, policyHandler:Lcom/motorola/motepm/Policy;
    invoke-virtual {v7, v0}, Lcom/motorola/motepm/Policy;->onActiveAdminRemoved(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1398
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #policyHandler:Lcom/motorola/motepm/Policy;
    :catchall_1
    move-exception v10

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1291
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_4
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1292
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    if-nez v10, :cond_7

    .line 1293
    const-string v10, "MotDevicePolicyManagerService"

    const-string v11, "######removeActiveAdmin, ACTION_REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED sent"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_7
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v6, intent:Landroid/content/Intent;
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1303
    .end local v6           #intent:Landroid/content/Intent;
    :cond_8
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    if-ne v10, v13, :cond_9

    .line 1304
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1305
    .local v1, after:Z
    if-nez v1, :cond_9

    .line 1307
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->unRegisterPhoneStateIntents()V

    .line 1313
    .end local v1           #after:Z
    :cond_9
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    if-nez v10, :cond_a

    .line 1314
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isSDCardAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1315
    .restart local v1       #after:Z
    if-ne v1, v13, :cond_a

    .line 1316
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1317
    .restart local v6       #intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1323
    .end local v1           #after:Z
    .end local v6           #intent:Landroid/content/Intent;
    :cond_a
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    if-nez v10, :cond_b

    .line 1324
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->isPolicyAllowed()Z

    move-result v1

    .line 1325
    .restart local v1       #after:Z
    if-ne v1, v13, :cond_b

    .line 1326
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

    .line 1327
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->enablePackagesSafely(Ljava/util/List;)V

    .line 1331
    .end local v1           #after:Z
    :cond_b
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    if-nez v10, :cond_c

    .line 1332
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->isPolicyAllowed()Z

    move-result v1

    .line 1333
    .restart local v1       #after:Z
    if-ne v1, v13, :cond_c

    .line 1334
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

    .line 1335
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->enablePackagesSafely(Ljava/util/List;)V

    .line 1339
    .end local v1           #after:Z
    :cond_c
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    if-nez v10, :cond_d

    .line 1340
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->isPolicyAllowed()Z

    move-result v1

    .line 1341
    .restart local v1       #after:Z
    if-ne v1, v13, :cond_d

    .line 1342
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

    .line 1343
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->getPackagesList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->enablePackagesSafely(Ljava/util/List;)V

    .line 1344
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->notifyPolicyChanged()V

    .line 1345
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-virtual {v10, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;->onPolicyChanged(Z)V

    .line 1351
    .end local v1           #after:Z
    :cond_d
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    if-nez v10, :cond_e

    .line 1352
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPopImapEmailAllowed(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1353
    .restart local v1       #after:Z
    if-ne v1, v13, :cond_e

    .line 1354
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.POP3_IMAP4_EMAIL_ALLOWED_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1355
    .restart local v6       #intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1356
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->blockEmailPort(Z)Z

    .line 1361
    .end local v1           #after:Z
    .end local v6           #intent:Landroid/content/Intent;
    :cond_e
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    if-nez v10, :cond_f

    .line 1362
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNAllowed(Landroid/content/ComponentName;)Z

    move-result v10

    if-ne v13, v10, :cond_f

    .line 1364
    const-string v10, "sys.vpn.tun.enabled"

    const-string v11, "1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.VPN_DISABLED_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "policy_name"

    const/16 v11, 0xd

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1367
    const-string v10, "componet_name"

    invoke-virtual {v6, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1368
    const-string v10, "native_status"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1369
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1372
    .end local v6           #intent:Landroid/content/Intent;
    :cond_f
    iget-boolean v10, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    if-nez v10, :cond_10

    .line 1373
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isVPNSplitTunnelingAllowed(Landroid/content/ComponentName;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v10

    if-ne v13, v10, :cond_10

    .line 1377
    :try_start_5
    const-string v10, "connectivity"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v8

    .line 1379
    .local v8, service:Landroid/net/IConnectivityManager;
    if-eqz v8, :cond_11

    .line 1380
    const-string v10, "0.0.0.0/0 ::/0"

    invoke-interface {v8, v10}, Landroid/net/IConnectivityManager;->delRouteForVpn(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1388
    .end local v8           #service:Landroid/net/IConnectivityManager;
    :goto_2
    :try_start_6
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.motorola.app.action.VPN_SPLIT_TUNNELING_DISABLED_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1390
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "policy_name"

    const/16 v11, 0xc

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1392
    const-string v10, "componet_name"

    invoke-virtual {v6, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1393
    const-string v10, "native_status"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1394
    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1398
    .end local v6           #intent:Landroid/content/Intent;
    :cond_10
    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1400
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1382
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

    .line 1384
    .end local v8           #service:Landroid/net/IConnectivityManager;
    :catch_0
    move-exception v2

    .line 1385
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
    .line 860
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 861
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 862
    const-string v1, "com.motorola.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 866
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 871
    :cond_0
    return-void
.end method

.method public removeEmailAccount(Ljava/lang/String;)V
    .locals 14
    .parameter "accountName"

    .prologue
    .line 2968
    new-instance v11, Lcom/motorola/motepm/EdmErrorCode;

    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/motorola/motepm/EdmErrorCode;-><init>(Landroid/content/Context;)V

    .line 2969
    .local v11, mEdmErrorCode:Lcom/motorola/motepm/EdmErrorCode;
    invoke-static {}, Lcom/motorola/motepm/MotEdmDb;->getInstance()Lcom/motorola/motepm/MotEdmDb;

    move-result-object v4

    .line 2970
    .local v4, edmDb:Lcom/motorola/motepm/MotEdmDb;
    const/4 v1, 0x0

    .line 2972
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const/4 v12, 0x0

    const/16 v13, 0x71

    :try_start_0
    invoke-virtual {p0, v12, v13}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2974
    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v12}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/motorola/motepm/MotEdmDb;->getEmailUuids(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    .line 2975
    .local v5, emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 2976
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "remove email account failed. The caller is not the owner"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    const/16 v12, -0xfa3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 3023
    .end local v5           #emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 2982
    .restart local v5       #emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v10

    .line 2983
    .local v10, length:I
    new-array v2, v10, [Ljava/lang/String;

    .line 2984
    .local v2, allEmails:[Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2986
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v10, :cond_1

    .line 2987
    aget-object v12, v2, v6

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2992
    :cond_1
    if-lt v6, v10, :cond_3

    .line 2993
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "remove email account failed. The caller is not the owner."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    const/16 v12, -0xfa3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2999
    .end local v2           #allEmails:[Ljava/lang/String;
    .end local v5           #emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v6           #i:I
    .end local v10           #length:I
    :catch_0
    move-exception v3

    .line 3000
    .local v3, e:Ljava/lang/SecurityException;
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "remove email account failed.Security exception."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    const/16 v12, -0xfa3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 2986
    .end local v3           #e:Ljava/lang/SecurityException;
    .restart local v2       #allEmails:[Ljava/lang/String;
    .restart local v5       #emailUuids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v6       #i:I
    .restart local v10       #length:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3007
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3010
    .local v7, ident:J
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.motorola.email.DELETE_ACCOUNT"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3012
    .local v9, intent:Landroid/content/Intent;
    const/4 v12, 0x1

    new-array v0, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v0, v12

    .line 3015
    .local v0, accNames:[Ljava/lang/String;
    const-string v12, "email_array"

    invoke-virtual {v9, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3018
    const-string v12, "LENGTH"

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3021
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3022
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public reportExpirationWarningShow()V
    .locals 7

    .prologue
    .line 1807
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    monitor-enter p0

    .line 1811
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 1813
    .local v1, ident:J
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1815
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    .line 1816
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1818
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1820
    monitor-exit p0

    .line 1821
    return-void

    .line 1818
    .end local v0           #date:Ljava/util/Date;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1820
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
    .line 1829
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    monitor-enter p0

    .line 1833
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 1836
    .local v4, ident:J
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_0

    .line 1837
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1839
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    .line 1840
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1843
    .end local v2           #date:Ljava/util/Date;
    :cond_0
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1844
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1845
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1846
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v6, :cond_1

    .line 1848
    const-string v6, "com.motorola.app.action.ACTION_RECOVERY_PASSWORD_SAVE"

    invoke-virtual {p0, v1, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1844
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1853
    .end local v0           #N:I
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v3           #i:I
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1855
    .end local v4           #ident:J
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1853
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #ident:J
    :cond_2
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1855
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1856
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

    .line 3343
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.motorola.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3347
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "reportPolicyEnforcedResult() is called "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 3396
    :cond_0
    :goto_0
    return-void

    .line 3352
    :cond_1
    monitor-enter p0

    .line 3353
    :try_start_0
    sget-object v2, Lcom/motorola/motepm/Policy;->BOOLEAN_POLICIES:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/BooleanPolicy;

    .line 3354
    .local v1, booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    if-eqz v1, :cond_2

    .line 3355
    invoke-virtual {v1, p1, p3, p4}, Lcom/motorola/motepm/BooleanPolicy;->onPolicyEnforcement(Landroid/content/ComponentName;IZ)V

    .line 3357
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3359
    sparse-switch p2, :sswitch_data_0

    .line 3395
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    goto :goto_0

    .line 3357
    .end local v1           #booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3363
    .restart local v1       #booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    :sswitch_0
    if-ne p3, v5, :cond_3

    .line 3364
    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    .line 3365
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    .line 3371
    :sswitch_1
    if-ne p3, v5, :cond_3

    .line 3372
    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    .line 3373
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    .line 3379
    :sswitch_2
    if-ne p3, v5, :cond_3

    .line 3380
    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->splitTunnelingEnabled:Z

    .line 3381
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    .line 3386
    :sswitch_3
    if-ne p3, v5, :cond_3

    .line 3387
    iput-boolean p4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->vpnEnabled:Z

    .line 3388
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    goto :goto_1

    .line 3359
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

    .line 905
    invoke-static {}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 906
    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v7, 0x0

    .line 908
    .local v7, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 909
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 910
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v11, "utf-8"

    invoke-interface {v5, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 911
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 913
    const/4 v11, 0x0

    const-string v12, "policies"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 915
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 916
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 917
    iget-object v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 918
    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 919
    const/4 v11, 0x0

    const-string v12, "admin"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 920
    const/4 v11, 0x0

    const-string v12, "name"

    iget-object v13, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v13}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 921
    invoke-virtual {v1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 922
    const/4 v11, 0x0

    const-string v12, "admin"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 916
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 927
    .end local v1           #ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v6

    .line 929
    .local v6, period:I
    if-lez v6, :cond_4

    const v11, 0x7fffffff

    if-ge v6, v11, :cond_4

    .line 930
    iget v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    if-eqz v11, :cond_2

    .line 931
    const/4 v11, 0x0

    const-string v12, "password-changed-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 932
    const/4 v11, 0x0

    const-string v12, "value"

    iget v13, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 933
    const/4 v11, 0x0

    const-string v12, "password-changed-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 935
    :cond_2
    iget v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    if-eqz v11, :cond_3

    .line 936
    const/4 v11, 0x0

    const-string v12, "expiration-warning-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 937
    const/4 v11, 0x0

    const-string v12, "value"

    iget v13, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 938
    const/4 v11, 0x0

    const-string v12, "expiration-warning-date"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 947
    :cond_3
    :goto_1
    const/4 v11, 0x0

    const-string v12, "password-simple"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 948
    const/4 v11, 0x0

    const-string v12, "value"

    iget-boolean v13, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    if-ne v13, v9, :cond_6

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v11, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 949
    const/4 v9, 0x0

    const-string v10, "password-simple"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 953
    const/4 v9, 0x0

    const-string v10, "password-complexity"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 954
    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 955
    const/4 v9, 0x0

    const-string v10, "password-complexity"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 958
    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 960
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 961
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 962
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 963
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendChangedNotification()V

    move-object v7, v8

    .line 974
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #period:I
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_3
    return-void

    .line 941
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v5       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6       #period:I
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v11, 0x0

    iput v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    .line 942
    const/4 v11, 0x0

    iput v11, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mExpirationWarningDate:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 964
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #period:I
    :catch_0
    move-exception v2

    move-object v7, v8

    .line 966
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_4
    if-eqz v7, :cond_5

    .line 967
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 972
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

    .line 948
    goto :goto_2

    .line 969
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

    .line 964
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
    .line 842
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v1}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 844
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 845
    return-void
.end method

.method sendAdminCommandLocked(Ljava/lang/String;I)V
    .locals 4
    .parameter "action"
    .parameter "reqPolicy"

    .prologue
    .line 848
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 849
    .local v0, N:I
    if-lez v0, :cond_1

    .line 850
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 851
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 852
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v3, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v3, p2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 853
    invoke-virtual {p0, v1, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 850
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 857
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
    .line 5578
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendPolicyChangedNotification(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 5582
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 11
    .parameter "adminReceiver"
    .parameter "refreshing"

    .prologue
    .line 1113
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDeviceAdminInfo;

    move-result-object v5

    .line 1116
    .local v5, info:Lcom/motorola/motepm/MotDeviceAdminInfo;
    if-nez v5, :cond_0

    .line 1117
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

    .line 1119
    :cond_0
    monitor-enter p0

    .line 1120
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v3

    .line 1122
    .local v3, ident:J
    if-nez p2, :cond_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1123
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Admin is already added"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1155
    :catchall_0
    move-exception v8

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1157
    .end local v3           #ident:J
    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 1125
    .restart local v3       #ident:J
    :cond_1
    :try_start_3
    new-instance v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;-><init>(Lcom/motorola/motepm/MotDeviceAdminInfo;)V

    .line 1126
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const/4 v7, -0x1

    .line 1128
    .local v7, replaceIndex:I
    if-eqz p2, :cond_2

    .line 1129
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1130
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1131
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 1132
    .local v6, oldAdmin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v6, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v8}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1133
    move v7, v2

    .line 1143
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v6           #oldAdmin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 1146
    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 1147
    iget-object v8, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1152
    const-string v8, "com.motorola.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v1, v8}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1155
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1157
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1158
    return-void

    .line 1130
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v6       #oldAdmin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1149
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
    .line 1957
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    monitor-enter p0

    .line 1960
    :try_start_0
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    if-eq v2, p1, :cond_0

    .line 1961
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 1963
    .local v0, ident:J
    :try_start_1
    iput p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordComplexity:I

    .line 1964
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1966
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1969
    .end local v0           #ident:J
    :cond_0
    monitor-exit p0

    .line 1970
    return-void

    .line 1966
    .restart local v0       #ident:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1969
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
    .line 1472
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    monitor-enter p0

    .line 1476
    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    if-eq v2, p1, :cond_0

    .line 1477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 1479
    .local v0, ident:J
    :try_start_1
    iput-boolean p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mActivePasswordSimple:Z

    .line 1480
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1482
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1485
    .end local v0           #ident:J
    :cond_0
    monitor-exit p0

    .line 1486
    return-void

    .line 1482
    .restart local v0       #ident:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1485
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
    .line 5543
    const/4 v0, -0x1

    .line 5544
    .local v0, result:I
    sget-object v1, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    if-eqz v1, :cond_0

    .line 5545
    monitor-enter p0

    .line 5546
    :try_start_0
    sget-object v1, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/motepm/policy/LockAdminPolicy;->setLocked(Landroid/content/ComponentName;Z)I

    move-result v0

    .line 5547
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5548
    sget-object v1, Lcom/motorola/motepm/Policy;->LOCK_ADMIN_POLICY:Lcom/motorola/motepm/policy/LockAdminPolicy;

    invoke-virtual {v1}, Lcom/motorola/motepm/policy/LockAdminPolicy;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 5550
    :cond_0
    return v0

    .line 5547
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
    .line 2552
    monitor-enter p0

    .line 2553
    const/4 v2, -0x1

    .line 2555
    .local v2, result:I
    const/4 v1, 0x0

    .line 2557
    .local v1, checkinTag:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/motorola/motepm/Policy;->BOOLEAN_POLICIES:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/BooleanPolicy;

    .line 2558
    .local v0, booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    if-eqz v0, :cond_0

    .line 2559
    invoke-virtual {v0, p1, p3}, Lcom/motorola/motepm/BooleanPolicy;->setAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    .line 2560
    invoke-virtual {v0}, Lcom/motorola/motepm/BooleanPolicy;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 2563
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2605
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 2607
    invoke-direct {p0, p1, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 2609
    :cond_1
    monitor-exit p0

    return v2

    .line 2566
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setSDCardAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    .line 2567
    const-string v1, "sd-card-allowed"

    .line 2568
    goto :goto_0

    .line 2571
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setSimplePasswordAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    .line 2572
    goto :goto_0

    .line 2577
    :pswitch_3
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    invoke-direct {p0, p1, v3, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAllowPolicy(Landroid/content/ComponentName;Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Z)I

    move-result v2

    .line 2578
    const-string v1, "browser-allowed"

    .line 2579
    goto :goto_0

    .line 2581
    :pswitch_4
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    invoke-direct {p0, p1, v3, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAllowPolicy(Landroid/content/ComponentName;Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Z)I

    move-result v2

    .line 2582
    const-string v1, "text-message-allowed"

    .line 2583
    goto :goto_0

    .line 2585
    :pswitch_5
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    invoke-direct {p0, p1, v3, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAllowPolicy(Landroid/content/ComponentName;Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Z)I

    move-result v2

    .line 2586
    const-string v1, "consumer-email-allowed"

    .line 2587
    goto :goto_0

    .line 2592
    :pswitch_6
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setPopImapEmailAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    .line 2593
    goto :goto_0

    .line 2596
    :pswitch_7
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setVPNSplitTunnelingAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    .line 2597
    const-string v1, "vpn-restricted-split"

    .line 2598
    goto :goto_0

    .line 2600
    :pswitch_8
    invoke-direct {p0, p1, p3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setVPNAllowed(Landroid/content/ComponentName;Z)I

    move-result v2

    .line 2601
    const-string v1, "vpn-restricted"

    .line 2602
    goto :goto_0

    .line 2610
    .end local v0           #booleanPolicy:Lcom/motorola/motepm/BooleanPolicy;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2563
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
    .line 4496
    .local p2, appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "[BEGIN] setAppBlackList"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4498
    monitor-enter p0

    .line 4499
    if-nez p1, :cond_0

    .line 4500
    :try_start_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "administratorComponentName param cannot be null."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 4617
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 4503
    :cond_0
    const/16 v12, 0x76

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4506
    .local v1, administratorApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_1

    .line 4507
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "administratorComponentName param is invalid."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 4511
    :cond_1
    if-nez p2, :cond_2

    .line 4512
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .end local p2           #appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v3, appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 p2, v3

    .line 4515
    .end local v3           #appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2       #appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->validateAppBlackListPackages(Ljava/util/List;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 4516
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "Invalid list of package names to be black listed, a system package or administrator has been detected"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4517
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "[END] setAppBlackList"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4518
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

    .line 4522
    const/4 v12, -0x1

    monitor-exit p0

    .line 4621
    :goto_1
    return v12

    .line 4518
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 4525
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4526
    .local v6, appsToBeEnabledList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4527
    .local v5, appsToBeDisabledList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 4528
    .local v11, numberOfPreviousBlackListedApps:I
    const/4 v4, 0x0

    .line 4530
    .local v4, appBlackListChanged:Z
    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 4531
    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4532
    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 4533
    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 4537
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 4538
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "New app blacklist is null, removing the policy from the administrator."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4539
    const/4 v4, 0x1

    .line 4576
    :goto_2
    if-eqz v4, :cond_e

    .line 4577
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "App blacklist changed, consolidating what app needs to be enabled/disabled."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4582
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getAllAppBlackLists()Ljava/util/List;

    move-result-object v2

    .line 4584
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

    .line 4585
    .local v7, blackListedApp:Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 4586
    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4589
    :cond_7
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 4590
    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4545
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

    .line 4550
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

    .line 4551
    .restart local v7       #blackListedApp:Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 4552
    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4554
    :cond_9
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4561
    .end local v7           #blackListedApp:Ljava/lang/String;
    :cond_a
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowBrowserStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowBrowserStrategy;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v13}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    .line 4562
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowTextMessagingStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowTextMessagingStrategy;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v13}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    .line 4563
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAllowConsumerEmailStrategy:Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowConsumerEmailStrategy;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v13}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->removeAllowPolicyPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$AllowPoliciesStrategy;Ljava/util/List;Z)V

    .line 4567
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ne v11, v12, :cond_b

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 4568
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "New app blacklist and previous are the same, nothing to do."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4571
    :cond_b
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "App blacklist changed"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 4594
    .restart local v2       #allAppBlackLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    .line 4596
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

    .line 4600
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

    .line 4602
    :try_start_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4605
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    .line 4606
    iget-object v12, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppBlackList:Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4608
    :cond_d
    iget-object v12, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mBlackListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;

    invoke-virtual {v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;->saveAppListLocked()V

    .line 4613
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

    .line 4617
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4619
    const-string v12, "app-control-blacklist"

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4620
    const-string v12, "MotDevicePolicyManagerService"

    const-string v13, "[END] setAppBlackList"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4621
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 4602
    .restart local v2       #allAppBlackLists:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #ident:J
    :catchall_1
    move-exception v12

    :try_start_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 4610
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

    .line 4613
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

    .line 4146
    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "[BEGIN] setAppWhiteList"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    monitor-enter p0

    .line 4149
    if-nez p1, :cond_0

    .line 4150
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4179
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4153
    :cond_0
    const/16 v2, 0x76

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4156
    .local v0, administratorApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 4157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "administratorComponentName param is invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4161
    :cond_1
    if-nez p2, :cond_2

    .line 4162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .end local p2           #appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v1, appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object p2, v1

    .line 4165
    .end local v1           #appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2       #appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4166
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    .line 4167
    invoke-direct {p0, p2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppWhiteListLocked(Ljava/util/List;)V

    .line 4169
    iget-object v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4170
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    .line 4172
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mWhiteListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;->saveAppListLocked()V

    .line 4173
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 4175
    const/16 v2, 0x11

    const/4 v3, 0x0

    iget-boolean v4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    .line 4179
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4181
    const-string v2, "app-control-whitelist"

    invoke-direct {p0, p1, v2}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4182
    const-string v2, "MotDevicePolicyManagerService"

    const-string v3, "[END] setAppWhiteList"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    return v5
.end method

.method public setAppWhiteListDisabled(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "administratorComponentName"

    .prologue
    const/4 v4, 0x0

    .line 4198
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "[BEGIN] setAppWhiteListDisabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    monitor-enter p0

    .line 4201
    if-nez p1, :cond_0

    .line 4202
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "administratorComponentName param cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4228
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4205
    :cond_0
    const/16 v1, 0x76

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4208
    .local v0, administratorApp:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 4209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "administratorComponentName param is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4212
    :cond_1
    iget-object v1, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4213
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mAppWhiteListEnabled:Z

    .line 4215
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4216
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->setAppWhiteListDisabledLocked()V

    .line 4221
    :goto_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mWhiteListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;

    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;->saveAppListLocked()V

    .line 4222
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 4224
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isAppWhiteListDisabled()Z

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->notifyAdminPolicyEnfocedResult(Landroid/content/ComponentName;IIZ)V

    .line 4228
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4230
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "[END] setAppWhiteListDisabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    return v4

    .line 4218
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
    .line 1993
    monitor-enter p0

    .line 1994
    if-nez p1, :cond_0

    .line 1995
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2055
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1997
    :cond_0
    const/4 v3, 0x0

    .line 1999
    .local v3, result:I
    const/16 v5, 0x65

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2002
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    const-string v5, "ro.crypto.state"

    const-string v6, "unsupported"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2003
    .local v4, status:Ljava/lang/String;
    const-string v5, "unsupported"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2005
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "setExternalStorageEncryption():encryption is not supported"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    const/4 v5, -0x2

    monitor-exit p0

    .line 2054
    :goto_0
    return v5

    .line 2010
    :cond_1
    iget-boolean v5, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-eq v5, p2, :cond_4

    .line 2012
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

    .line 2016
    if-eqz p2, :cond_6

    .line 2017
    const/4 v2, 0x0

    .line 2018
    .local v2, isIntentNeeded:Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2019
    const/4 v2, 0x1

    .line 2021
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

    .line 2024
    :cond_2
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    .line 2025
    if-eqz v2, :cond_3

    .line 2026
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2029
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "######setExternalStorageEncryption, enable intent sent"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2046
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isIntentNeeded:Z
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 2048
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eq v5, p2, :cond_5

    .line 2049
    const/4 v3, -0x3

    .line 2052
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

    .line 2053
    const-string v5, "encryption-device-sd"

    invoke-direct {p0, p1, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 2054
    monitor-exit p0

    move v5, v3

    goto/16 :goto_0

    .line 2036
    :cond_6
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    .line 2037
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2038
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2041
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "######setExternalStorageEncryption, disable intent sent"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
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
    .line 1447
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
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

    .line 1453
    monitor-enter p0

    .line 1454
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1455
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 1456
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    .line 1460
    :goto_0
    monitor-exit p0

    .line 1461
    return-void

    .line 1458
    :cond_0
    const-string v1, "MotDevicePolicyManagerService"

    const-string v2, "setIntentDisabled: admin is null "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1460
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
    .line 2108
    monitor-enter p0

    .line 2109
    if-nez p1, :cond_0

    .line 2110
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2148
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2112
    :cond_0
    const/4 v5, 0x0

    .line 2114
    .local v5, result:I
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v2

    .line 2116
    .local v2, before:Z
    const/16 v6, 0x64

    invoke-virtual {p0, p1, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2119
    .local v1, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v6, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    if-eq v6, p2, :cond_1

    .line 2120
    iput-boolean p2, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    .line 2121
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 2124
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2125
    .local v0, after:Z
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2126
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v3

    .line 2128
    .local v3, ident:J
    if-eq v2, v0, :cond_2

    .line 2130
    if-eqz v0, :cond_4

    .line 2131
    :try_start_3
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->registerForPhoneStateIntents()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2138
    :cond_2
    :goto_0
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2140
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2141
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v6

    if-eq v6, p2, :cond_3

    .line 2142
    const/4 v5, -0x3

    .line 2145
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

    .line 2146
    const-string v6, "data-sync"

    invoke-direct {p0, p1, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 2147
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v5

    .line 2133
    :cond_4
    :try_start_6
    iget-object v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {v6}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->unRegisterPhoneStateIntents()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 2138
    :catchall_1
    move-exception v6

    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2140
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
    .line 5519
    const/4 v0, -0x1

    .line 5520
    .local v0, result:I
    sget-object v1, Lcom/motorola/motepm/Policy;->OWNER_INFO_POLICY:Lcom/motorola/motepm/policy/OwnerInfoPolicy;

    if-eqz v1, :cond_0

    .line 5521
    monitor-enter p0

    .line 5522
    :try_start_0
    sget-object v1, Lcom/motorola/motepm/Policy;->OWNER_INFO_POLICY:Lcom/motorola/motepm/policy/OwnerInfoPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/motepm/policy/OwnerInfoPolicy;->setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    .line 5523
    monitor-exit p0

    .line 5526
    :cond_0
    return v0

    .line 5523
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
    .line 1716
    monitor-enter p0

    .line 1717
    if-nez p1, :cond_0

    .line 1718
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1752
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1720
    :cond_0
    const/4 v2, 0x0

    .line 1722
    .local v2, result:I
    if-gez p2, :cond_1

    .line 1723
    const/4 v2, -0x1

    .line 1725
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

    .line 1726
    monitor-exit p0

    move v3, v2

    .line 1751
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 1729
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1731
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v4, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    if-eq v4, p2, :cond_3

    if-ltz p2, :cond_3

    .line 1732
    iput p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    .line 1734
    if-lez p2, :cond_5

    .line 1735
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1737
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mPasswordChangedDate:I

    .line 1744
    .end local v1           #date:Ljava/util/Date;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1746
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordExpirationPeriod()I

    move-result v4

    if-ge v4, p2, :cond_4

    .line 1747
    const/4 v2, -0x3

    .line 1750
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

    .line 1751
    monitor-exit p0

    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 1739
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_5
    if-nez p2, :cond_2

    .line 1740
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
    .line 1575
    monitor-enter p0

    .line 1576
    if-nez p1, :cond_0

    .line 1577
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1600
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1579
    :cond_0
    const/4 v1, 0x0

    .line 1581
    .local v1, result:I
    if-gez p2, :cond_1

    .line 1582
    const/4 v1, -0x1

    .line 1584
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

    .line 1585
    monitor-exit p0

    move v2, v1

    .line 1599
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 1588
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1590
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v3, p2, :cond_2

    if-ltz p2, :cond_2

    .line 1591
    iput p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1592
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1594
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v3

    if-le v3, p2, :cond_3

    .line 1595
    const/4 v1, -0x3

    .line 1598
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

    .line 1599
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
    .line 1899
    monitor-enter p0

    .line 1900
    if-nez p1, :cond_0

    .line 1901
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1928
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1903
    :cond_0
    const/4 v1, 0x0

    .line 1905
    .local v1, result:I
    if-ltz p2, :cond_1

    const/4 v3, 0x4

    if-le p2, v3, :cond_2

    .line 1906
    :cond_1
    const/4 v1, -0x1

    .line 1908
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

    .line 1909
    monitor-exit p0

    move v2, v1

    .line 1927
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 1912
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1914
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    if-eq v3, p2, :cond_3

    .line 1915
    iput p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    .line 1917
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

    .line 1919
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1922
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v3

    if-le v3, p2, :cond_4

    .line 1923
    const/4 v1, -0x3

    .line 1926
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

    .line 1927
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
    .line 1642
    monitor-enter p0

    .line 1643
    if-nez p1, :cond_0

    .line 1644
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1670
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1646
    :cond_0
    const/4 v1, 0x0

    .line 1648
    .local v1, result:I
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1650
    .local v0, ap:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eq v3, p2, :cond_2

    .line 1653
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1654
    .local v2, utils:Lcom/android/internal/widget/LockPatternUtils;
    iget-boolean v3, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-eqz v3, :cond_4

    .line 1655
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->createRecoveryPassword(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1661
    :cond_1
    :goto_0
    iput-boolean p2, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    .line 1662
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->saveSettingsLocked()V

    .line 1664
    .end local v2           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-eq v3, p2, :cond_3

    .line 1665
    const/4 v1, -0x3

    .line 1668
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

    .line 1669
    monitor-exit p0

    return v1

    .line 1657
    .restart local v2       #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1658
    const-string v3, "com.motorola.app.action.ACTION_RECOVERY_PASSWORD_SAVE"

    invoke-virtual {p0, v0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->sendAdminCommandLocked(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 1095
    monitor-enter p0

    .line 1096
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->loadSettingsLocked()V

    .line 1097
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->reconcileAdministrators()V

    .line 1098
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->loadDisablelistLocked()V

    .line 1099
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mBlackListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$BlackListParser;->loadAppListLocked()V

    .line 1100
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mWhiteListParser:Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$WhiteListParser;->loadAppListLocked()V

    .line 1101
    monitor-exit p0

    .line 1102
    return-void

    .line 1101
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
    .line 5509
    sget-object v0, Lcom/motorola/motepm/Policy;->UNINSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/UninstallPackagePolicy;

    if-eqz v0, :cond_0

    .line 5510
    monitor-enter p0

    .line 5511
    :try_start_0
    sget-object v0, Lcom/motorola/motepm/Policy;->UNINSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/UninstallPackagePolicy;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/motepm/policy/UninstallPackagePolicy;->uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 5512
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5513
    sget-object v0, Lcom/motorola/motepm/Policy;->UNINSTALL_PACKAGE_POLICY:Lcom/motorola/motepm/policy/UninstallPackagePolicy;

    invoke-virtual {v0}, Lcom/motorola/motepm/policy/UninstallPackagePolicy;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 5515
    :cond_0
    return-void

    .line 5512
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
    .line 2684
    monitor-enter p0

    .line 2687
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_0
    invoke-virtual {p0, v5, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2689
    .local v0, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2691
    .local v3, ident:J
    sget v2, Landroid/os/RecoverySystem;->WIPE_FLAG_NONE:I

    .line 2692
    .local v2, flag:I
    if-eqz p1, :cond_0

    .line 2693
    sget v5, Landroid/os/RecoverySystem;->WIPE_FLAG_SD:I

    or-int/2addr v2, v5

    .line 2695
    :cond_0
    if-eqz p2, :cond_1

    .line 2696
    sget v5, Landroid/os/RecoverySystem;->WIPE_FLAG_SILENT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v2, v5

    .line 2700
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2704
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2706
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2707
    return-void

    .line 2701
    :catch_0
    move-exception v1

    .line 2702
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "MotDevicePolicyManagerService"

    const-string v6, "Failed requesting data wipe"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2704
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2706
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

    .line 2704
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

    .line 3032
    new-instance v8, Lcom/motorola/motepm/EdmErrorCode;

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/motorola/motepm/EdmErrorCode;-><init>(Landroid/content/Context;)V

    .line 3033
    .local v8, mEdmError:Lcom/motorola/motepm/EdmErrorCode;
    invoke-virtual {p0, v11, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 3036
    monitor-enter p0

    .line 3037
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3038
    .local v2, callingUid:I
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3039
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 3040
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 3041
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v9

    if-ne v9, v2, :cond_0

    iget-object v9, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3042
    iget-object v9, v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v9}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const-string v10, "wipe-data"

    invoke-direct {p0, v9, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->logStat(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 3043
    monitor-exit p0

    .line 3070
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return-void

    .line 3039
    .restart local v1       #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3046
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3048
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3050
    .local v5, ident:J
    if-nez p1, :cond_3

    .line 3051
    :try_start_1
    invoke-direct {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->hasMountedRemovableSdcard()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3054
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "--wipe_sdcard_fast"

    invoke-static {v9, v10}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3069
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 3046
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

    .line 3056
    .restart local v0       #N:I
    .restart local v2       #callingUid:I
    .restart local v4       #i:I
    .restart local v5       #ident:J
    :cond_2
    const/16 v9, -0x7d2

    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v8, v9, v10}, Lcom/motorola/motepm/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 3058
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "EDM_ERRORCODE_SDCARD_NOTMOUNTED"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 3066
    :catch_0
    move-exception v3

    .line 3067
    .local v3, e:Ljava/io/IOException;
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "Failed requesting data wipe"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3061
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    :try_start_4
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.motorola.intent.action.DELETEPATTERN"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3062
    .local v7, intent:Landroid/content/Intent;
    const-string v9, "REGEXPATTERN"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3063
    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3064
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "Started REGEXPATTERN Intent"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method
