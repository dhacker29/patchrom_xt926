.class public Lcom/motorola/motepm/MotDeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "MotDeviceAdminReceiver.java"


# static fields
.field public static final ACTION_APP_INSTALLATION_RESULT_RETURN:Ljava/lang/String; = "com.motorola.app.action.ACTION_APP_INSTALLATION_RESULT_RETURN"

.field public static final ACTION_APP_UNINSTALLATION_RESULT_RETURN:Ljava/lang/String; = "com.motorola.app.action.ACTION_APP_UNINSTALLATION_RESULT_RETURN"

.field public static final ACTION_DEVICE_ADMIN_DISABLED:Ljava/lang/String; = "com.motorola.app.action.DEVICE_ADMIN_DISABLED"

.field public static final ACTION_DEVICE_ADMIN_DISABLE_REQUESTED:Ljava/lang/String; = "com.motorola.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

.field public static final ACTION_DEVICE_ADMIN_ENABLED:Ljava/lang/String; = "com.motorola.app.action.DEVICE_ADMIN_ENABLED"

.field public static final ACTION_EPM_RESULT_RETURN:Ljava/lang/String; = "com.motorola.app.action.ACTION_EPM_RESULT_RETURN"

.field public static final ACTION_LOCK_ADMIN_RESULT_RETURN:Ljava/lang/String; = "com.motorola.app.action.ACTION_LOCK_ADMIN_RESULT_RETURN"

.field public static final ACTION_PASSWORD_SUCCEEDED:Ljava/lang/String; = "com.motorola.app.action.ACTION_PASSWORD_SUCCEEDED"

.field public static final ACTION_RECOVERY_PASSWORD_SAVE:Ljava/lang/String; = "com.motorola.app.action.ACTION_RECOVERY_PASSWORD_SAVE"

.field private static DEBUG:Z = false

.field public static final DEVICE_ADMIN_META_DATA:Ljava/lang/String; = "android.app.device_admin"

.field public static final EXTRA_DISABLE_WARNING:Ljava/lang/String; = "com.motorola.app.extra.DISABLE_WARNING"

.field public static final RESULT_PKG_INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final RESULT_PKG_INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final RESULT_PKG_INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final RESULT_PKG_INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final RESULT_PKG_INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final RESULT_PKG_INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final RESULT_PKG_INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final RESULT_PKG_INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final RESULT_PKG_INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final RESULT_PKG_INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final RESULT_PKG_INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final RESULT_PKG_INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final RESULT_PKG_INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final RESULT_PKG_INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final RESULT_PKG_INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final RESULT_PKG_INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final RESULT_PKG_INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final RESULT_PKG_INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17

.field public static final RESULT_PKG_INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final RESULT_PKG_INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final RESULT_PKG_INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final RESULT_PKG_INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final RESULT_PKG_INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final RESULT_PKG_INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16

.field public static final RESULT_PKG_INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15

.field public static final RESULT_PKG_INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final RESULT_PKG_INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final RESULT_PKG_INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final RESULT_PKG_INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final RESULT_PKG_INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final RESULT_PKG_INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final RESULT_PKG_INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final RESULT_PKG_INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final RESULT_PKG_INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final RESULT_PKG_INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final RESULT_PKG_INSTALL_SUCCEEDED:I = 0x1

.field public static final RESULT_PKG_UNINSTALL_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final RESULT_PKG_UNINSTALL_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final RESULT_PKG_UNINSTALL_SUCCEEDED:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z


# instance fields
.field private mManager:Lcom/motorola/motepm/MotDevicePolicyManager;

.field private mWho:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "MotDeviceAdminReceiver"

    sput-object v1, Lcom/motorola/motepm/MotDeviceAdminReceiver;->TAG:Ljava/lang/String;

    sput-boolean v0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->DEBUG:Z

    sget-boolean v1, Lcom/motorola/motepm/MotDeviceAdminReceiver;->DEBUG:Z

    if-nez v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->localLOGV:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method private onResultCodeReturn(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v2, "result_code"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, error_code:I
    const-string v2, "policy_name"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, policy:I
    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onWifiStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onSdcardStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onBluetoothStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onInternetSharingStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onPop3Imap4EmailStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1, v0}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onConsumerEmailStatusChanged(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getMotManager(Landroid/content/Context;)Lcom/motorola/motepm/MotDevicePolicyManager;
    .locals 1
    .parameter "context"

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mot_device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    goto :goto_0
.end method

.method public getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .parameter "context"

    .prologue
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onBluetoothStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    return-void
.end method

.method public onConsumerEmailStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    return-void
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    return-void
.end method

.method public onInternetSharingStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    return-void
.end method

.method public onPop3Imap4EmailStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v3, "com.motorola.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.motorola.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, res:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "com.motorola.app.extra.DISABLE_WARNING"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #res:Ljava/lang/CharSequence;
    :cond_2
    const-string v3, "com.motorola.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v3, "com.motorola.app.action.ACTION_RECOVERY_PASSWORD_SAVE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onRecoveryPasswordSave(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v3, "com.motorola.app.action.ACTION_EPM_RESULT_RETURN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/motorola/motepm/MotDeviceAdminReceiver;->onResultCodeReturn(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRecoveryPasswordSave(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    return-void
.end method

.method public onSdcardStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    return-void
.end method

.method public onWifiStatusChanged(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "error_code"

    .prologue
    return-void
.end method
