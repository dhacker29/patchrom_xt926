.class public Lcom/motorola/motepm/policy/AdbPolicy;
.super Lcom/motorola/motepm/policy/DeviceBooleanPolicy;
.source "AdbPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v1, 0xf

    const/16 v2, 0x78

    const-string v3, "adb-allowed"

    const v4, 0x10405a7

    const v5, 0x10405a8

    const v6, 0x10405a6

    const v7, 0x10405a5

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;-><init>(IILjava/lang/String;IIIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/motepm/policy/AdbPolicy;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/AdbPolicy;->getMutex()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getDeviceState(Landroid/content/Intent;)I
    .locals 5
    .parameter "broadcastIntent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/motorola/motepm/policy/AdbPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected onDisable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/motorola/motepm/policy/AdbPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method

.method public onMainServiceBound(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 5
    .parameter "service"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/AdbPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;

    invoke-direct {v4, p0}, Lcom/motorola/motepm/policy/AdbPolicy$AdbSettingsObserver;-><init>(Lcom/motorola/motepm/policy/AdbPolicy;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
