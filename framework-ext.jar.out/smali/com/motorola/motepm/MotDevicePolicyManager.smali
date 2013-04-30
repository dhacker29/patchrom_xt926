.class public Lcom/motorola/motepm/MotDevicePolicyManager;
.super Ljava/lang/Object;
.source "MotDevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motepm/MotDevicePolicyManager$AutoEmailAccount;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "com.motorola.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_ALLOW_INTERNET_SHARING_CHANGED:Ljava/lang/String; = "com.motorola.app.action.INTERNET_SHARING_ALLOWED_CHANGED"

.field public static final ACTION_BLUETOOTH_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.BLUETOOTH_ALLOWED_CHANGED"

.field public static final ACTION_BROWSER_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.BROWSER_ALLOWED_CHANGED"

.field public static final ACTION_CAMERA_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.CAMERA_ALLOWED_CHANGED"

.field public static final ACTION_CONSUMER_EMAIL_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.CONSUMER_EMAIL_ALLOWED_CHANGED"

.field public static final ACTION_DATA_SYNC_METHOD_IN_ROAMING_CHANGED:Ljava/lang/String; = "com.motorola.app.action.DATA_SYNC_ROAMING_METHOD_CHANGED"

.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "com.motorola.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final ACTION_POP3_IMAP4_EMAIL_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.POP3_IMAP4_EMAIL_ALLOWED_CHANGED"

.field public static final ACTION_REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED:Ljava/lang/String; = "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

.field public static final ACTION_SD_CARD_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.SD_CARD_ALLOWED_CHANGED"

.field public static final ACTION_VPN_DISABLED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.VPN_DISABLED_CHANGED"

.field public static final ACTION_VPN_SPLIT_TUNNELING_DISABLED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.VPN_SPLIT_TUNNELING_DISABLED_CHANGED"

.field public static final ACTION_WIFI_ALLOWED_CHANGED:Ljava/lang/String; = "com.motorola.app.action.WIFI_ALLOWED_CHANGED"

.field private static DEBUG:Z = false

.field public static final ENCRYPTION_STATUS_ACTIVATING:I = 0x2

.field public static final ENCRYPTION_STATUS_ACTIVE:I = 0x3

.field public static final ENCRYPTION_STATUS_INACTIVE:I = 0x1

.field public static final ENCRYPTION_STATUS_UNSUPPORTED:I = 0x0

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "com.motorola.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "com.motorola.app.extra.DEVICE_ADMIN"

.field public static final FLAG_INSTALL_PKG_EXTERNAL:I = 0x8

.field public static final FLAG_INSTALL_PKG_FORWARD_LOCK:I = 0x1

.field public static final FLAG_INSTALL_PKG_INTERNAL:I = 0x10

.field public static final FLAG_INSTALL_PKG_REPLACE_EXISTING:I = 0x2

.field public static final MOTOROLA_DPM_APPS_TO_DISABLE_EXTRA:Ljava/lang/String; = "EXTRA_MOTOROLA_DPM_BLACK_LIST_APP_TO_DISABLE_APPS"

.field public static final MOTOROLA_DPM_APPS_TO_ENABLE_EXTRA:Ljava/lang/String; = "EXTRA_MOTOROLA_DPM_BLACK_LIST_APP_TO_ENABLE_APPS"

.field public static final MOTOROLA_DPM_APP_CONTROL_ACTION:Ljava/lang/String; = "com.motorola.devicemanagement.MOTOROLA_DPM_APP_CONTROL"

.field public static final MOTOROLA_DPM_DISABLE_TEXT_MESSAGING_SENDTO_ACTION:Ljava/lang/String; = "com.motorola.devicemanagement.MOTOROLA_DPM_DISABLE_TEXT_MESSAGING_SENDTO"

.field public static final MOTOROLA_DPM_DISABLE_TEXT_MESSAGING_SENDTO_EXTRA:Ljava/lang/String; = "EXTRA_MOTOROLA_DPM_DISABLE_TEXT_MESSAGING_SENDTO"

.field public static final PASSWORD_EXPIRATION_NONE:I = -0x1

.field public static final PASSWORD_EXPIRATION_WARNING:I = 0x1

.field public static final PASSWORD_EXPIRED:I = 0x0

.field public static final POLICY_ALLOW_ADB:I = 0xf

.field public static final POLICY_ALLOW_BLUETOOTH:I = 0x9

.field public static final POLICY_ALLOW_BROWSER:I = 0x5

.field public static final POLICY_ALLOW_CONSUMER_EMAIL:I = 0xa

.field public static final POLICY_ALLOW_INTERNET_SHARING:I = 0x7

.field public static final POLICY_ALLOW_NFC:I = 0xe

.field public static final POLICY_ALLOW_POP3IMAP4EMAIL:I = 0x8

.field public static final POLICY_ALLOW_SD_CARD:I = 0x3

.field public static final POLICY_ALLOW_SIMPLE_PASSWORD:I = 0x4

.field public static final POLICY_ALLOW_SPLIT_TUNNELING:I = 0xc

.field public static final POLICY_ALLOW_TEXT_MESSAGE:I = 0x6

.field public static final POLICY_ALLOW_VPN:I = 0xd

.field public static final POLICY_ALLOW_WIFI:I = 0x1

.field public static final POLICY_BLACKLIST:I = 0x10

.field public static final POLICY_WHITELIST:I = 0x11

.field public static final RETURN_PKGNAME_ERROR:I = -0x2

.field public static final RETURN_PKGNAME_IN_DISABLELIST_INSTALLED:I = 0x1

.field public static final RETURN_PKGNAME_IN_DISABLELIST_UNINSTALLED:I = 0x0

.field public static final RETURN_PKGNAME_NOT_IN_DISABLELIST:I = -0x1

.field public static final RETURN_POLICY_CONFLICT:I = -0x3

.field public static final RETURN_POLICY_GENERAL_FAILURE:I = -0x1

.field public static final RETURN_POLICY_NOT_SUPPORTED:I = -0x2

.field public static final RETURN_POLICY_SUCCESS:I

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mService:Lcom/motorola/motepm/IMotDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    const-string v1, "MotDevicePolicyManager"

    sput-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    .line 34
    sput-boolean v0, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    .line 35
    sget-boolean v1, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-nez v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/motepm/MotDevicePolicyManager;->localLOGV:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    .line 96
    const-string v0, "mot_device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/motepm/IMotDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    .line 98
    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "Version:1.5.0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Lcom/motorola/motepm/MotDevicePolicyManager;
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 103
    new-instance v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-direct {v0, p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 104
    .local v0, me:Lcom/motorola/motepm/MotDevicePolicyManager;
    iget-object v1, v0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .end local v0           #me:Lcom/motorola/motepm/MotDevicePolicyManager;
    :goto_0
    return-object v0

    .restart local v0       #me:Lcom/motorola/motepm/MotDevicePolicyManager;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVersionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "1.5.0"

    return-object v0
.end method


# virtual methods
.method public addEmailAccount(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    .line 1446
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1448
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->addEmailAccount(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1449
    :catch_0
    move-exception v0

    .line 1450
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public configureVpn(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    .line 1542
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1544
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->configureVpn(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1549
    :cond_0
    :goto_0
    return-void

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteAuthentecVPNConfig()V
    .locals 3

    .prologue
    .line 1592
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1594
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->deleteAuthentecVPNConfig()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteVpn(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    .line 1559
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1561
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->deleteVpn(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1562
    :catch_0
    move-exception v0

    .line 1563
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enforcePasswordSet(Z)V
    .locals 3
    .parameter "force"

    .prologue
    .line 508
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->enforcePasswordSet(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 3
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
    .line 353
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getActiveAdmins()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 360
    :goto_0
    return-object v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveSyncID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1463
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getActiveSyncID()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1468
    :goto_0
    return-object v1

    .line 1464
    :catch_0
    move-exception v0

    .line 1465
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1468
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdminInfo(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDeviceAdminInfo;
    .locals 7
    .parameter "cn"

    .prologue
    const/4 v4, 0x0

    .line 411
    :try_start_0
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v5, 0x80

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 418
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 419
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 422
    :try_start_1
    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo;

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v2}, Lcom/motorola/motepm/MotDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 428
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v3

    .line 413
    :catch_0
    move-exception v1

    .line 414
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to retrieve device policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 415
    goto :goto_0

    .line 423
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #ri:Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v1

    .line 424
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse device policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 425
    goto :goto_0

    .line 426
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 427
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse device policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 428
    goto :goto_0
.end method

.method public getAppBlackList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 6
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
    const/4 v2, 0x0

    .line 1642
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v3, :cond_1

    .line 1644
    :try_start_0
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v3, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getAppBlackList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 1645
    .local v0, blockedAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppBlackList blockedAppsList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    .end local v0           #blockedAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 1647
    :catch_0
    move-exception v1

    .line 1648
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 1649
    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    move-object v0, v2

    .line 1652
    goto :goto_0
.end method

.method public getAppWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 6
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
    const/4 v2, 0x0

    .line 1746
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v3, :cond_1

    .line 1748
    :try_start_0
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v3, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getAppWhiteList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 1749
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v3, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppWhiteList apps="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 1751
    :catch_0
    move-exception v1

    .line 1752
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 1753
    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    move-object v0, v2

    .line 1756
    goto :goto_0
.end method

.method public getDeviceEncryptionStatus()I
    .locals 3

    .prologue
    .line 1053
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getDeviceEncryptionStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1060
    :goto_0
    return v1

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getDisabledPackages()Ljava/util/List;
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
    .line 1001
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1003
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getDisabledPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1008
    :goto_0
    return-object v1

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExternalStorageEncryption(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 814
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 821
    :goto_0
    return v1

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExternalStorageEncryptionStatus()I
    .locals 3

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1038
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getExternalStorageEncryptionStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1043
    :goto_0
    return v1

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    .line 570
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 577
    :goto_0
    return v1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 4
    .parameter "who"

    .prologue
    .line 1793
    const/4 v1, 0x0

    .line 1794
    .local v1, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 1796
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1801
    :cond_0
    :goto_0
    return-object v1

    .line 1797
    :catch_0
    move-exception v0

    .line 1798
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPackageDisableInfo(Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1017
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPackageDisableInfo(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1024
    :goto_0
    return v1

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1024
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public getPasswordExpirationStatus()I
    .locals 3

    .prologue
    .line 721
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPasswordExpirationStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 728
    :goto_0
    return v1

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "who"

    .prologue
    .line 619
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 621
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 626
    :goto_0
    return v1

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumComplexity(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 930
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 932
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 937
    :goto_0
    return v1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 937
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .parameter "who"

    .prologue
    .line 766
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 768
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 773
    :goto_0
    return-object v1

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3
    .parameter "admin"
    .parameter "result"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVPNSplitTunnelingStatus()I
    .locals 3

    .prologue
    .line 1088
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1090
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getVPNSplitTunnelingStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1095
    :goto_0
    return v1

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVPNStatus()I
    .locals 3

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1106
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getVPNStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1111
    :goto_0
    return v1

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1111
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "1.5.0"

    goto :goto_0
.end method

.method public getVpnByID(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    .line 1525
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1527
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getVpnByID(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1528
    :catch_0
    move-exception v0

    .line 1529
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "admin"
    .parameter "usesPolicy"

    .prologue
    .line 392
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 399
    :goto_0
    return v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Mot device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificate([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "certData"
    .parameter "certPassword"
    .parameter "certName"
    .parameter "certType"

    .prologue
    .line 1509
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1511
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/motorola/motepm/IMotDevicePolicyManager;->installCertificate([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public installPackage(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 3
    .parameter "who"
    .parameter "packageUri"
    .parameter "flags"

    .prologue
    .line 1761
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1763
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/motorola/motepm/IMotDevicePolicyManager;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1768
    :cond_0
    :goto_0
    return-void

    .line 1764
    :catch_0
    move-exception v0

    .line 1765
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isActivePasswordSufficient()Z
    .locals 3

    .prologue
    .line 982
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 984
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isActivePasswordSufficient()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 989
    :goto_0
    return v1

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActivePasswordSufficientForComplexity()Z
    .locals 3

    .prologue
    .line 963
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 965
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isActivePasswordSufficientForComplexity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 970
    :goto_0
    return v1

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    .line 335
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 342
    :goto_0
    return v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminLocked(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "admin"

    .prologue
    .line 1819
    const/4 v1, 0x0

    .line 1820
    .local v1, locked:Z
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 1821
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 1823
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isAdminLocked(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1829
    :cond_0
    :goto_0
    return v1

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAppWhiteListDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "administratorComponentName"

    .prologue
    .line 1725
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1727
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isAppWhiteListDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1733
    :goto_0
    return v1

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1733
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPasswordNeedChangetoNotSimple()Z
    .locals 3

    .prologue
    .line 488
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPasswordNeedChangetoNotSimple()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 495
    :goto_0
    return v1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    .line 665
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 672
    :goto_0
    return v1

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPasswordSetEnforced()Z
    .locals 3

    .prologue
    .line 522
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPasswordSetEnforced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 529
    :goto_0
    return v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPolicyAllowed(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "who"
    .parameter "policy"

    .prologue
    .line 864
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 866
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 871
    :goto_0
    return v1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPolicySupported(I)Z
    .locals 3
    .parameter "policyID"

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1072
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPolicySupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1078
    :goto_0
    return v1

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public provisionAuthentecVPNConfig([BI)V
    .locals 3
    .parameter "fileContent"
    .parameter "fileSize"

    .prologue
    .line 1578
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1580
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->provisionAuthentecVPNConfig([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "who"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeEmailAccount(Ljava/lang/String;)V
    .locals 3
    .parameter "accountName"

    .prologue
    .line 1476
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1478
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->removeEmailAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    :cond_0
    :goto_0
    return-void

    .line 1479
    :catch_0
    move-exception v0

    .line 1480
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportExpirationWarningShow()V
    .locals 3

    .prologue
    .line 736
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->reportExpirationWarningShow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportPasswordChanged()V
    .locals 3

    .prologue
    .line 750
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->reportPasswordChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportPolicyEnforcedResult(Landroid/content/ComponentName;IIZ)V
    .locals 3
    .parameter "who"
    .parameter "policy"
    .parameter "resultCode"
    .parameter "enabled"

    .prologue
    .line 896
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/motorola/motepm/IMotDevicePolicyManager;->reportPolicyEnforcedResult(Landroid/content/ComponentName;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "who"
    .parameter "refreshing"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActivePasswordComplexity(I)V
    .locals 3
    .parameter "complexity"

    .prologue
    .line 946
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 948
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setActivePasswordComplexity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActivePasswordSimpleState(Z)V
    .locals 3
    .parameter "isSimple"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setActivePasswordSimpleState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAdminLocked(Landroid/content/ComponentName;Z)I
    .locals 4
    .parameter "admin"
    .parameter "locked"

    .prologue
    .line 1805
    const/4 v1, -0x1

    .line 1806
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 1807
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 1809
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setAdminLocked(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1815
    :cond_0
    :goto_0
    return v1

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowPolicies(Landroid/content/ComponentName;IZ)I
    .locals 5
    .parameter "who"
    .parameter "policy"
    .parameter "enabled"

    .prologue
    .line 838
    const/4 v1, 0x0

    .line 839
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 841
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setAllowPolicies(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 849
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAllowPolicies policy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    return v1

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    const/4 v1, -0x1

    .line 845
    goto :goto_0

    .line 847
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAppBlackList(Landroid/content/ComponentName;Ljava/util/List;)I
    .locals 5
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
    .line 1615
    .local p2, appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1616
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 1618
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setAppBlackList(Landroid/content/ComponentName;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1627
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppBlackList result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_0
    return v1

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1621
    const/4 v1, -0x1

    .line 1622
    goto :goto_0

    .line 1624
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAppWhiteList(Landroid/content/ComponentName;Ljava/util/List;)I
    .locals 5
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
    .line 1669
    .local p2, appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1670
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 1672
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setAppWhiteList(Landroid/content/ComponentName;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1681
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppWhiteList result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :cond_0
    return v1

    .line 1673
    :catch_0
    move-exception v0

    .line 1674
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1675
    const/4 v1, -0x1

    .line 1676
    goto :goto_0

    .line 1678
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAppWhiteListDisabled(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "administratorComponentName"

    .prologue
    .line 1697
    const/4 v1, 0x0

    .line 1698
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 1700
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setAppWhiteListDisabled(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1709
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppWhiteListDisabled result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_0
    return v1

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1703
    const/4 v1, -0x1

    .line 1704
    goto :goto_0

    .line 1706
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 5
    .parameter "admin"
    .parameter "encrypt"

    .prologue
    .line 790
    const/4 v1, 0x0

    .line 791
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 793
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setExternalStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 801
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExternalStorageEncryption "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_0
    return v1

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    const/4 v1, -0x1

    .line 797
    goto :goto_0

    .line 799
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setIntentDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "disabled"

    .prologue
    .line 454
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setIntentDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setManualDataSyncinRoaming(Landroid/content/ComponentName;Z)I
    .locals 5
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 546
    const/4 v1, 0x0

    .line 547
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 549
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setManualDataSyncinRoaming(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 557
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setManualDataSyncinRoaming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    return v1

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    const/4 v1, -0x1

    .line 553
    goto :goto_0

    .line 555
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 4
    .parameter "who"
    .parameter "info"

    .prologue
    .line 1781
    const/4 v1, -0x1

    .line 1782
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 1784
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1789
    :cond_0
    :goto_0
    return v1

    .line 1785
    :catch_0
    move-exception v0

    .line 1786
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordExpirationPeriod(Landroid/content/ComponentName;I)I
    .locals 5
    .parameter "who"
    .parameter "period"

    .prologue
    .line 684
    const/4 v1, 0x0

    .line 685
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 687
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordExpirationPeriod(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 695
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPasswordExpirationPeriod "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    return v1

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    const/4 v1, -0x1

    .line 691
    goto :goto_0

    .line 693
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 5
    .parameter "who"
    .parameter "length"

    .prologue
    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 599
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 607
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPasswordHistoryLength "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    return v1

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    const/4 v1, -0x1

    .line 603
    goto :goto_0

    .line 605
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setPasswordMinimumComplexity(Landroid/content/ComponentName;I)I
    .locals 4
    .parameter "admin"
    .parameter "complexity"

    .prologue
    .line 915
    const/4 v1, 0x0

    .line 916
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 918
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordMinimumComplexity(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 926
    :goto_0
    return v1

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    const/4 v1, -0x1

    .line 922
    goto :goto_0

    .line 924
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)I
    .locals 5
    .parameter "who"
    .parameter "enabled"

    .prologue
    .line 641
    const/4 v1, 0x0

    .line 642
    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    .line 644
    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 652
    :goto_0
    sget-boolean v2, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPasswordRecoveryEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    return v1

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    const/4 v1, -0x1

    .line 648
    goto :goto_0

    .line 650
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .parameter "who"
    .parameter "packageName"

    .prologue
    .line 1771
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1773
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1774
    :catch_0
    move-exception v0

    .line 1775
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wipeData(ZZ)V
    .locals 3
    .parameter "wipeSd"
    .parameter "wipeSilent"

    .prologue
    .line 883
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->wipeData(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wipeExternalStorageData(Ljava/lang/String;)V
    .locals 3
    .parameter "strexp"

    .prologue
    .line 1490
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1492
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->wipeExternalStorageData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
