.class public Lcom/motorola/motepm/policy/OwnerInfoPolicy;
.super Lcom/motorola/motepm/Policy;
.source "OwnerInfoPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 16
    const/16 v0, 0x7c

    const-string v1, "change-owner-info"

    const v2, 0x10405a3

    const v3, 0x10405a4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/motepm/Policy;-><init>(ILjava/lang/String;II)V

    .line 20
    return-void
.end method


# virtual methods
.method public getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .parameter "who"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/policy/OwnerInfoPolicy;->getActiveAdminForCaller(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 51
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/OwnerInfoPolicy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "lock_screen_owner_info_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/OwnerInfoPolicy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 7
    .parameter "who"
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/policy/OwnerInfoPolicy;->getActiveAdminForCaller(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .line 27
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/OwnerInfoPolicy;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 28
    .local v3, resolver:Landroid/content/ContentResolver;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v2, v4

    .line 30
    .local v2, isEnabled:I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 32
    .local v0, ident:J
    :try_start_0
    const-string v6, "lock_screen_owner_info"

    invoke-static {v3, v6, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v5

    .line 43
    :goto_1
    return v4

    .line 28
    .end local v0           #ident:J
    .end local v2           #isEnabled:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 36
    .restart local v0       #ident:J
    .restart local v2       #isEnabled:I
    :cond_2
    :try_start_1
    const-string v6, "lock_screen_owner_info_enabled"

    invoke-static {v3, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v5

    .line 37
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1
.end method
