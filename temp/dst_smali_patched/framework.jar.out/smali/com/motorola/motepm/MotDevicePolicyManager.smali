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

    const-string v1, "MotDevicePolicyManager"

    sput-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    sput-boolean v0, Lcom/motorola/motepm/MotDevicePolicyManager;->DEBUG:Z

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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    const-string v0, "mot_device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/motepm/IMotDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    sget-object v0, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "Version:1.5.0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Lcom/motorola/motepm/MotDevicePolicyManager;
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    new-instance v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-direct {v0, p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

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
    const-string v0, "1.5.0"

    return-object v0
.end method


# virtual methods
.method public addEmailAccount(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->addEmailAccount(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->configureVpn(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteAuthentecVPNConfig()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->deleteAuthentecVPNConfig()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->deleteVpn(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->enforcePasswordSet(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getActiveAdmins()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveSyncID()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getActiveSyncID()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    :try_start_0
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v5, 0x80

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :try_start_1
    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo;

    iget-object v5, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v2}, Lcom/motorola/motepm/MotDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

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

    goto :goto_0

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #ri:Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v1

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

    goto :goto_0

    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

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

    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v3, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getAppBlackList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

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

    .end local v0           #blockedAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    move-object v0, v2

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

    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v3, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getAppWhiteList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

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

    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public getDeviceEncryptionStatus()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getDeviceEncryptionStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getDisabledPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExternalStorageEncryption(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExternalStorageEncryptionStatus()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getExternalStorageEncryptionStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 4
    .parameter "who"

    .prologue
    const/4 v1, 0x0

    .local v1, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPackageDisableInfo(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public getPasswordExpirationStatus()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPasswordExpirationStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "who"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumComplexity(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .parameter "who"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVPNSplitTunnelingStatus()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getVPNSplitTunnelingStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVPNStatus()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getVPNStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "1.5.0"

    goto :goto_0
.end method

.method public getVpnByID(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extraArgs"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->getVpnByID(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Mot device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/motorola/motepm/IMotDevicePolicyManager;->installCertificate([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/motorola/motepm/IMotDevicePolicyManager;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isActivePasswordSufficient()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isActivePasswordSufficient()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActivePasswordSufficientForComplexity()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isActivePasswordSufficientForComplexity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminLocked(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "admin"

    .prologue
    const/4 v1, 0x0

    .local v1, locked:Z
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isAdminLocked(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isAppWhiteListDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPasswordNeedChangetoNotSimple()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPasswordNeedChangetoNotSimple()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPasswordSetEnforced()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPasswordSetEnforced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPolicySupported(I)Z
    .locals 3
    .parameter "policyID"

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->isPolicySupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->provisionAuthentecVPNConfig([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->removeEmailAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportExpirationWarningShow()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->reportExpirationWarningShow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportPasswordChanged()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->reportPasswordChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/motorola/motepm/IMotDevicePolicyManager;->reportPolicyEnforcedResult(Landroid/content/ComponentName;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setActivePasswordComplexity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setActivePasswordSimpleState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    const/4 v1, -0x1

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setAdminLocked(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

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
    const/4 v1, 0x0

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setAllowPolicies(Landroid/content/ComponentName;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

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

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0

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
    .local p2, appBlackList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setAppBlackList(Landroid/content/ComponentName;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

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

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0

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
    .local p2, appWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setAppWhiteList(Landroid/content/ComponentName;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

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

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAppWhiteListDisabled(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "administratorComponentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setAppWhiteListDisabled(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

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

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0

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
    const/4 v1, 0x0

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setExternalStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

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

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setIntentDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    const/4 v1, 0x0

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setManualDataSyncinRoaming(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

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

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0

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
    const/4 v1, -0x1

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

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
    const/4 v1, 0x0

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordExpirationPeriod(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

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

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0

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
    const/4 v1, 0x0

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

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

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0

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
    const/4 v1, 0x0

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordMinimumComplexity(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0

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
    const/4 v1, 0x0

    .local v1, result:I
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

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

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with device policy service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Lcom/motorola/motepm/IMotDevicePolicyManager;->wipeData(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManager;->mService:Lcom/motorola/motepm/IMotDevicePolicyManager;

    invoke-interface {v1, p1}, Lcom/motorola/motepm/IMotDevicePolicyManager;->wipeExternalStorageData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/motorola/motepm/MotDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
