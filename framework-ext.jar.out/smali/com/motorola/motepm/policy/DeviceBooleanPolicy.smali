.class public abstract Lcom/motorola/motepm/policy/DeviceBooleanPolicy;
.super Lcom/motorola/motepm/BooleanPolicy;
.source "DeviceBooleanPolicy.java"


# static fields
.field protected static final DEVICE_STATE_OFF:I = 0x1

.field protected static final DEVICE_STATE_ON:I = 0x0

.field protected static final DEVICE_STATE_TURNING_OFF:I = 0x3

.field protected static final DEVICE_STATE_TURNING_ON:I = 0x2

.field private static final INITIAL_RETRY_DELAY_MILLIS:I = 0xfa

.field private static final MAX_NUMBER_OF_RETRIES:I = 0x5


# instance fields
.field protected final mBroadcastReceiverActions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;IIIILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "infoId"
    .parameter "tag"
    .parameter "titleResId"
    .parameter "descriptionResId"
    .parameter "enabledResId"
    .parameter "disabledResId"
    .parameter "broadcastReceiverAction"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p7}, Lcom/motorola/motepm/BooleanPolicy;-><init>(IILjava/lang/String;IIII)V

    .line 30
    if-eqz p8, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p8, v0, v1

    :goto_0
    iput-object v0, p0, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->mBroadcastReceiverActions:[Ljava/lang/String;

    .line 32
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getBroadcastActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->mBroadcastReceiverActions:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getDeviceState(Landroid/content/Intent;)I
.end method

.method public final onBroadcastReceived(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->getDeviceState(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->onDeviceStateChanged(I)V

    .line 37
    return-void
.end method

.method public final onDeviceStateChanged(I)V
    .locals 13
    .parameter "state"

    .prologue
    const/4 v12, 0x1

    .line 40
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->getDebugTag()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, METHOD_TAG:Ljava/lang/String;
    const-string v9, "MotorolaPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "[START]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->isAllowed()Z

    move-result v4

    .line 49
    .local v4, isAllowed:Z
    const/4 v7, 0x0

    .line 50
    .local v7, stateName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 65
    :goto_0
    const-string v9, "MotorolaPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " allowed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-nez v4, :cond_7

    if-eq p1, v12, :cond_7

    const/4 v9, 0x3

    if-eq p1, v9, :cond_7

    .line 72
    const-string v9, "MotorolaPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Device state incompatible. Turning off."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v5, 0x0

    .line 76
    .local v5, result:Z
    const/4 v2, 0x0

    .line 77
    .local v2, attemptCount:I
    const/16 v6, 0xfa

    .line 79
    .local v6, retryDelay:I
    :cond_0
    :goto_1
    if-nez v5, :cond_1

    const/4 v9, 0x5

    if-ge v2, v9, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->onDisable()Z

    move-result v5

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 84
    if-nez v5, :cond_0

    .line 86
    const-string v9, "MotorolaPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Error while turning device off. Current atempt: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    int-to-long v9, v6

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_2
    mul-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 52
    .end local v2           #attemptCount:I
    .end local v5           #result:Z
    .end local v6           #retryDelay:I
    :pswitch_0
    const-string v7, "DEVICE_STATE_ON"

    .line 53
    goto :goto_0

    .line 55
    :pswitch_1
    const-string v7, "DEVICE_STATE_OFF"

    .line 56
    goto :goto_0

    .line 58
    :pswitch_2
    const-string v7, "DEVICE_STATE_TURNING_ON"

    .line 59
    goto/16 :goto_0

    .line 61
    :pswitch_3
    const-string v7, "DEVICE_STATE_TURNING_OFF"

    goto/16 :goto_0

    .line 100
    .restart local v2       #attemptCount:I
    .restart local v5       #result:Z
    .restart local v6       #retryDelay:I
    :cond_1
    if-nez v5, :cond_5

    .line 102
    const-string v9, "MotorolaPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Error while turning device off. Notifying admins."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->getActiveComponentNames()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 106
    .local v8, who:Landroid/content/ComponentName;
    invoke-virtual {p0, v8}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->isAllowed(Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 107
    invoke-virtual {p0, v8}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->getActiveAdminUnchecked(Landroid/content/ComponentName;)Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 108
    .local v1, admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {p0, v1, v12}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->setAllowed(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Z)V

    .line 112
    :cond_3
    const/4 v9, -0x1

    invoke-virtual {p0, v8, v9, v12}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->notifyPolicyEnfocementAdminCallback(Landroid/content/ComponentName;IZ)V

    goto :goto_3

    .line 119
    .end local v1           #admin:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v8           #who:Landroid/content/ComponentName;
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->saveSettings()V

    .line 122
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v9, 0x2

    if-eq p1, v9, :cond_6

    if-nez p1, :cond_7

    .line 124
    :cond_6
    const v9, 0x1040582

    iget v10, p0, Lcom/motorola/motepm/BooleanPolicy;->mDisabledResId:I

    invoke-virtual {p0, v9, v10}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->sendPolicyChangedNotification(II)V

    .line 131
    .end local v2           #attemptCount:I
    .end local v5           #result:Z
    .end local v6           #retryDelay:I
    :cond_7
    const-string v9, "MotorolaPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "[END]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 91
    .restart local v2       #attemptCount:I
    .restart local v5       #result:Z
    .restart local v6       #retryDelay:I
    :catch_0
    move-exception v9

    goto :goto_2

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract onDisable()Z
.end method

.method protected onDisable(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Z
    .locals 1
    .parameter "admin"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;->onDisable()Z

    move-result v0

    return v0
.end method
