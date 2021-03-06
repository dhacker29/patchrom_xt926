.class public Lcom/android/internal/telephony/msim/MSimPhoneFactory;
.super Lcom/android/internal/telephony/PhoneFactory;
.source "MSimPhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static mCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

.field private static mMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

.field private static mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sMadeMultiSimDefaults:Z

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneFactory;-><init>()V

    return-void
.end method

.method public static getDataSubscription()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim Data Call Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultSubscription()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, subscription:I
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_subscription"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getMSimCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter "subscription"

    .prologue
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMSimGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter "subscription"

    .prologue
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "subscription"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MSimPhoneFactory.getPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getSMSSubscription()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_sms"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim SMS Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVoiceSubscription()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_voice_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim Voice Call Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPromptEnabled()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, prompt:Z
    const/4 v2, 0x0

    .local v2, value:I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_voice_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "PHONE"

    const-string v4, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static makeMultiSimDefaultPhone(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    const-class v15, Lcom/android/internal/telephony/Phone;

    monitor-enter v15

    :try_start_0
    sget-boolean v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    if-nez v14, :cond_8

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v14

    sput-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sLooper:Landroid/os/Looper;

    sput-object p0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v14, :cond_0

    new-instance v14, Ljava/lang/RuntimeException;

    const-string v16, "MSimPhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    :cond_0
    const/4 v12, 0x0

    .local v12, retryCount:I
    :goto_0
    const/4 v6, 0x0

    .local v6, hasException:Z
    add-int/lit8 v12, v12, 0x1

    :try_start_1
    new-instance v14, Landroid/net/LocalServerSocket;

    const-string v16, "com.android.internal.telephony"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-nez v6, :cond_2

    :try_start_2
    new-instance v14, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;

    invoke-direct {v14}, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;-><init>()V

    sput-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v11, 0x0

    .local v11, preferredNetworkMode:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    const/4 v11, 0x7

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v16, "subscription_mode"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .local v4, cdmaSubscription:I
    const-string v14, "PHONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cdma Subscription set to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    .local v9, numPhones:I
    new-array v8, v9, [I

    .local v8, networkModes:[I
    new-array v14, v9, [Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    sput-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    new-array v14, v9, [Lcom/android/internal/telephony/RIL;

    sput-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v9, :cond_4

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v16, "preferred_network_mode"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v7}, Landroid/provider/Settings$Secure;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    aput v14, v8, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    const-string v14, "PHONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Network Mode set to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget v17, v8, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v16, Lcom/android/internal/telephony/RIL;

    aget v17, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v16, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v4           #cdmaSubscription:I
    .end local v7           #i:I
    .end local v8           #networkModes:[I
    .end local v9           #numPhones:I
    .end local v11           #preferredNetworkMode:I
    :catch_0
    move-exception v5

    .local v5, ex:Ljava/io/IOException;
    const/4 v6, 0x1

    goto/16 :goto_1

    .end local v5           #ex:Ljava/io/IOException;
    :cond_2
    const/4 v14, 0x3

    if-le v12, v14, :cond_3

    new-instance v14, Ljava/lang/RuntimeException;

    const-string v16, "MSimPhoneFactory probably already running"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    const-wide/16 v16, 0x7d0

    :try_start_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v14

    goto/16 :goto_0

    .restart local v4       #cdmaSubscription:I
    .restart local v7       #i:I
    .restart local v8       #networkModes:[I
    .restart local v9       #numPhones:I
    .restart local v11       #preferredNetworkMode:I
    :catch_2
    move-exception v13

    .local v13, snfe:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_6
    const-string v14, "PHONE"

    const-string v16, "Settings Exception Reading Value At Index"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    aput v11, v8, v7

    goto :goto_3

    .end local v13           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    sget-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v14

    sput-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v14, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    move-result-object v14

    sput-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    sget-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v14, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v14

    sput-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_7

    aget v14, v8, v7

    invoke-static {v14}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhoneType(I)I

    move-result v10

    .local v10, phoneType:I
    const/4 v14, 0x1

    if-ne v10, v14, :cond_6

    const-string v14, "PHONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Creating MSimGSMPhone sub = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    new-instance v16, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    new-instance v17, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    sget-object v18, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v18, v18, v7

    sget-object v19, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/internal/telephony/msim/MSimGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v16, v14, v7

    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v14, 0x2

    if-ne v10, v14, :cond_5

    const-string v14, "PHONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Creating MSimCDMAPhone sub = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    new-instance v16, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    new-instance v17, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    sget-object v18, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v18, v18, v7

    sget-object v19, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v16, v14, v7

    goto :goto_5

    .end local v10           #phoneType:I
    :cond_7
    sget-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v17, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v14, v1, v2}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v14

    sput-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    sget-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    const/16 v16, 0x0

    aget-object v14, v14, v16

    sput-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    sget-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v16, 0x0

    aget-object v14, v14, v16

    sput-object v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeDefaults:Z

    .end local v4           #cdmaSubscription:I
    .end local v6           #hasException:Z
    .end local v7           #i:I
    .end local v8           #networkModes:[I
    .end local v9           #numPhones:I
    .end local v11           #preferredNetworkMode:I
    .end local v12           #retryCount:I
    :cond_8
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void
.end method

.method public static makeMultiSimDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->makeMultiSimDefaultPhone(Landroid/content/Context;)V

    return-void
.end method

.method public static setDataSubscription(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setDefaultSubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_subscription"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ltz p0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p0

    sput-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p0

    sput-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeDefaults:Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultSubscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Broadcasting Default Subscription Changed..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setPromptEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .local v0, value:I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoicePromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v0           #value:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setSMSSubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSMSSubscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setVoiceSubscription(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_voice_call"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceSubscription : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
