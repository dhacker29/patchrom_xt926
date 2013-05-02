.class public Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;
    }
.end annotation


# static fields
.field static final CALL_GSM_AD_ENABLE:Ljava/lang/String; = "calling_gsm_ad_enabled"

.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field static final DBG:Z = true

.field static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field private static isManagedRoamingDialogDisplayed:Z


# instance fields
.field cellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private cr:Landroid/content/ContentResolver;

.field protected curPlmn:Ljava/lang/String;

.field protected curSpn:Ljava/lang/String;

.field protected curSpnRule:I

.field private gprsState:I

.field private gsmForUnknownMccRegistrants:Landroid/os/RegistrantList;

.field private isCurrentMccUnknown:Z

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mDataRadioTechnology:I

.field private mDataRoaming:Z

.field protected mEmergencyOnly:Z

.field private mEonsEnabled:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mMaxDataCalls:I

.field private mNeedFixZoneAfterNitz:Z

.field private mNewMaxDataCalls:I

.field private mNewRealRadioTechnology:I

.field private mNewReasonDataDenied:I

.field private mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field private mOldRealRadioTechnology:I

.field private mOperatorName_string:Ljava/lang/String;

.field mPreferredNetworkType:I

.field private mReasonDataDenied:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mSavedZoneDst:Z

.field private mSavedZoneOffset:I

.field private mStartedGprsRegCheck:Z

.field private mTAC:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private newGPRSState:I

.field onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

.field protected phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field supForIAD:Lcom/motorola/android/telephony/SUPForAssistedDialing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 10
    .parameter "phone"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 258
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 113
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 114
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 115
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 116
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 117
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 118
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 128
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 134
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 139
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 142
    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gsmForUnknownMccRegistrants:Landroid/os/RegistrantList;

    .line 149
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 153
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 157
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 168
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 171
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 183
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 184
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 185
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 191
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCurrentMccUnknown:Z

    .line 195
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRadioTechnology:I

    .line 196
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTAC:I

    .line 199
    const-string v6, "persist.radio.eons.enabled"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEonsEnabled:Z

    .line 207
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOldRealRadioTechnology:I

    .line 208
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRealRadioTechnology:I

    .line 223
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 249
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 2281
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    .line 2301
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 260
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 261
    new-instance v6, Landroid/telephony/ServiceState;

    invoke-direct {v6}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 262
    new-instance v6, Landroid/telephony/ServiceState;

    invoke-direct {v6}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 263
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 264
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 265
    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 267
    new-instance v6, Lcom/motorola/android/telephony/SUPForAssistedDialing;

    invoke-direct {v6, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->supForIAD:Lcom/motorola/android/telephony/SUPForAssistedDialing;

    .line 269
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 271
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v6, "ServiceStateTracker"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 276
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104051d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorName_string:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOperatorName_string = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 285
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xd

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 286
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 288
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 289
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xb

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 290
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xc

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 291
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x17

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 294
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 297
    .local v0, airplaneMode:I
    if-gtz v0, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 299
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    .line 300
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v6, "auto_time"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 303
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v6, "auto_time_zone"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 307
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 310
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 316
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is EONS enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEonsEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void

    .line 278
    .end local v0           #airplaneMode:I
    .end local v2           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 279
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "none"

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorName_string:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    return p0
.end method

.method private createManagedRoamingDialog()V
    .locals 6

    .prologue
    .line 2257
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2258
    .local v2, r:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "network_selection_key"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2261
    .local v1, networkSelection:Ljava/lang/String;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Managed Roaming case, networkSelection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    if-nez v3, :cond_0

    .line 2264
    const-string v3, "GSM"

    const-string v4, "Show Managed Roaming Dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040481

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040482

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040483

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040484

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2274
    .local v0, managedRoamingDialog:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2275
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    .line 2276
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 2277
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2279
    .end local v0           #managedRoamingDialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private static displayNameFor(I)Ljava/lang/String;
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 1771
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 1773
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 1774
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 1775
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 1776
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 1778
    if-gez p0, :cond_0

    .line 1779
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 1780
    neg-int p0, p0

    .line 1785
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 1786
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 1788
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 1789
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 1791
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 1793
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 1794
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 1796
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 1782
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 1394
    move v5, p1

    .line 1395
    .local v5, rawOffset:I
    if-eqz p2, :cond_0

    .line 1396
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 1398
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 1399
    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1400
    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 1401
    .local v1, d:Ljava/util/Date;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 1402
    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 1403
    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 1405
    move-object v2, v6

    .line 1410
    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 1401
    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1979
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 1982
    :goto_0
    return v1

    .line 1979
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1981
    :catch_0
    move-exception v0

    .line 1982
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1988
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 1991
    :goto_0
    return v1

    .line 1988
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1990
    :catch_0
    move-exception v0

    .line 1991
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getLacOrTac()I
    .locals 3

    .prologue
    .line 720
    const/4 v0, -0x1

    .line 721
    .local v0, lactac:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRadioTechnology:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTAC:I

    if-ltz v1, :cond_1

    .line 724
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTAC:I

    .line 728
    :cond_0
    :goto_0
    return v0

    .line 726
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    goto :goto_0
.end method

.method private getNetworkType(I)I
    .locals 1
    .parameter "radioTech"

    .prologue
    .line 2382
    sparse-switch p1, :sswitch_data_0

    .line 2394
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2384
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 2386
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 2388
    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 2390
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 2392
    :sswitch_4
    const/16 v0, 0xf

    goto :goto_0

    .line 2382
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 1384
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1385
    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 1387
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1389
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1390
    return-object v0

    .line 1387
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1389
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private handleRejectCode([Ljava/lang/String;)V
    .locals 4
    .parameter "states"

    .prologue
    const/16 v3, 0xd

    .line 2197
    if-eqz p1, :cond_0

    array-length v2, p1

    if-le v2, v3, :cond_0

    .line 2198
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    .line 2199
    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2200
    .local v1, regCauseCode:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regCauseCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2201
    if-lez v1, :cond_0

    .line 2203
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.intent.action.GET_REJECT_CODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2205
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "rejectCode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2206
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2210
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #regCauseCode:I
    :cond_0
    return-void
.end method

.method private handleSIB5LackIssue()V
    .locals 7

    .prologue
    .line 2315
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v4, v5}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2379
    :cond_0
    :goto_0
    return-void

    .line 2318
    :cond_1
    const/4 v2, 0x0

    .line 2320
    .local v2, needHandleSIB5LackIssue:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111005f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2326
    :goto_1
    if-eqz v2, :cond_0

    .line 2328
    const-string v4, "handleSIB5LackIssue: no cell location change and config is \'on\'"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2331
    const/4 v3, 0x0

    .line 2333
    .local v3, showRealDataNetworkType:Z
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110060

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 2339
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.motorola.android.intent.action.GET_REAL_DATA_NET_TYPE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2342
    .local v1, intent:Landroid/content/Intent;
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOldRealRadioTechnology:I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSIB5LackRelatedRadioTechs(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRealRadioTechnology:I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSIB5LackRelatedRadioTechs(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2345
    :cond_2
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2322
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #showRealDataNetworkType:Z
    :catch_0
    move-exception v0

    .line 2323
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "GSM"

    const-string v5, "error get config item for config_need_handle_sib5_lack_issue!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2335
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #showRealDataNetworkType:Z
    :catch_1
    move-exception v0

    .line 2336
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "GSM"

    const-string v5, "error get config item for config_show_real_data_network_type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2349
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    if-le v4, v5, :cond_4

    .line 2350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSIB5LackIssue: use mRilRadioTechnology("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to replace mNewRilRadioTechnology("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2354
    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    .line 2355
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 2358
    :cond_4
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOldRealRadioTechnology:I

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRealRadioTechnology:I

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    if-ne v4, v5, :cond_5

    .line 2362
    if-eqz v3, :cond_0

    .line 2363
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v5, "gsm.network.type"

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRealRadioTechnology:I

    invoke-static {v6}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    const-string v4, "realDataNetType"

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRealRadioTechnology:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNetworkType(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2367
    const-string v4, "showRealDataNetType"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2368
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSIB5LackIssue: send intent com.motorola.android.intent.action.GET_REAL_DATA_NET_TYPE (realDataNetType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRealRadioTechnology:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", showRealDataNetType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2376
    :cond_5
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .parameter "gprsState"
    .parameter "serviceState"

    .prologue
    .line 1376
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 12
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    .line 1623
    const-string v9, "gsm.sim.operator.alpha"

    const-string v10, "empty"

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1625
    .local v8, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    .line 1626
    .local v4, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    .line 1628
    .local v5, onss:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v2, 0x1

    .line 1629
    .local v2, equalsOnsl:Z
    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v3, 0x1

    .line 1631
    .local v3, equalsOnss:Z
    :goto_1
    const-string v9, "gsm.sim.operator.numeric"

    const-string v10, ""

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1632
    .local v7, simNumeric:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 1634
    .local v6, operatorNumeric:Ljava/lang/String;
    const/4 v1, 0x1

    .line 1636
    .local v1, equalsMcc:Z
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1643
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "roaming_plmn_between_carriers_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/4 v0, 0x1

    .line 1647
    .local v0, Isplmnfeature_enable:Z
    :goto_3
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "roaming_plmn_between_carriers_enabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    if-nez v0, :cond_5

    .line 1649
    if-eqz p1, :cond_4

    if-eqz v1, :cond_0

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    :cond_0
    const/4 v9, 0x1

    .line 1663
    :goto_4
    return v9

    .line 1628
    .end local v0           #Isplmnfeature_enable:Z
    .end local v1           #equalsMcc:Z
    .end local v2           #equalsOnsl:Z
    .end local v3           #equalsOnss:Z
    .end local v6           #operatorNumeric:Ljava/lang/String;
    .end local v7           #simNumeric:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1629
    .restart local v2       #equalsOnsl:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1643
    .restart local v1       #equalsMcc:Z
    .restart local v3       #equalsOnss:Z
    .restart local v6       #operatorNumeric:Ljava/lang/String;
    .restart local v7       #simNumeric:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 1649
    .restart local v0       #Isplmnfeature_enable:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 1652
    :cond_5
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IKCBS-392,SIMPLMN ID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "NetworkPLMN ID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1654
    const-string v9, "GSM"

    const-string v10, "Sim PLMN and Network PLMN IDs are same: Roaming OFF"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const/4 v9, 0x0

    goto :goto_4

    .line 1663
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz p1, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v7, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSimAndOperatorPLMNInSameCarrier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    goto :goto_4

    .line 1638
    .end local v0           #Isplmnfeature_enable:Z
    :catch_0
    move-exception v9

    goto/16 :goto_2
.end method

.method private isSIB5LackRelatedRadioTechs(I)Z
    .locals 1
    .parameter "radioTech"

    .prologue
    .line 2399
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimAndOperatorPLMNInSameCarrier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "simNumeric"
    .parameter "operatorNumeric"

    .prologue
    .line 1679
    const-string v8, "GSM"

    const-string v9, "In isSimAndOperatorPLMNInSameCarrier"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const/4 v5, -0x1

    .line 1681
    .local v5, PLMNid_found:I
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1682
    .local v7, operatorMcc:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "roaming_plmn_table"

    invoke-static {v8, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1684
    .local v3, PLMNIDs:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "roaming_mcc_table"

    invoke-static {v8, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1686
    .local v2, MCCIDs:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "black_list_roaming_plmn_table"

    invoke-static {v8, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1689
    .local v4, PLMNIDs_black_list:Ljava/lang/String;
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PLMNIDs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "MCCIDs ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "PLMNIDs_black_list="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "simNumeric = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "operatorNumeric="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "operatorMcc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 1702
    const-string v8, "GSM"

    const-string v9, "found in AT&T black list"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const/4 v8, 0x0

    .line 1725
    :goto_0
    return v8

    .line 1704
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 1706
    const-string v8, "GSM"

    const-string v9, "Found in AT&T white list"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const/4 v8, 0x1

    goto :goto_0

    .line 1708
    :cond_1
    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1709
    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1710
    const-string v8, "GSM"

    const-string v9, "Network PLMN ID not found in PLMN Table: Roaming ON"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const/4 v8, 0x0

    goto :goto_0

    .line 1713
    :cond_2
    const/16 v8, 0x3a

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1714
    .local v1, LastIndex:I
    const/16 v8, 0x3a

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 1715
    .local v0, FirstIndex:I
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1716
    .local v6, homeRoamInd:Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_3

    .line 1717
    const-string v8, "GSM"

    const-string v9, "Network PLMN and Sim PLMN IDs not in same carrier: Roaming ON"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const/4 v8, 0x0

    goto :goto_0

    .line 1720
    :cond_3
    const-string v8, "GSM"

    const-string v9, "Network PLMN and Sim PLMN IDs are in same carrier: Roaming OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const/4 v8, 0x1

    goto :goto_0

    .line 1725
    .end local v0           #FirstIndex:I
    .end local v1           #LastIndex:I
    .end local v6           #homeRoamInd:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1484
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 1486
    .local v1, newRs:Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestrictedStateChanged: E rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1488
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 1489
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 1490
    .local v0, ints:[I
    aget v2, v0, v4

    .line 1492
    .local v2, state:I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_6

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 1496
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v6, :cond_2

    .line 1497
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_7

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 1500
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 1504
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: new rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1506
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1507
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1508
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 1519
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1520
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1522
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 1567
    :cond_4
    :goto_4
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 1569
    .end local v0           #ints:[I
    .end local v2           #state:I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: X rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1570
    return-void

    .restart local v0       #ints:[I
    .restart local v2       #state:I
    :cond_6
    move v3, v4

    .line 1492
    goto :goto_0

    :cond_7
    move v3, v4

    .line 1497
    goto :goto_1

    :cond_8
    move v5, v4

    .line 1500
    goto :goto_2

    .line 1509
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1510
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1511
    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_3

    .line 1523
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1525
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1526
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1528
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1530
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1532
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1534
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1535
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1537
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1538
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1540
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1542
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1544
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1546
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1547
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1549
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1550
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1552
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1555
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1557
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1558
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1560
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1561
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1563
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4
.end method

.method private pollState()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 950
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aput v3, v0, v3

    .line 953
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 983
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1004
    :goto_0
    return-void

    .line 955
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 956
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 958
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 959
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 960
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 962
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 963
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 967
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 968
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 970
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 971
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 972
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 974
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 975
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 953
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 45

    .prologue
    .line 1009
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRealRadioTechnology:I

    .line 1010
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleSIB5LackIssue()V

    .line 1014
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "] newSS=["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "] oldGprs="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " newData="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " oldMaxDataCalls="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " mNewMaxDataCalls="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " oldReasonDataDenied="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " mNewReasonDataDenied="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " oldType="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " realOldType="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOldRealRadioTechnology:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " realNewType="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRealRadioTechnology:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " newType="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getState()I

    move-result v40

    if-eqz v40, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getState()I

    move-result v40

    if-nez v40, :cond_10

    const/16 v20, 0x1

    .line 1033
    .local v20, hasRegistered:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getState()I

    move-result v40

    if-nez v40, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getState()I

    move-result v40

    if-eqz v40, :cond_11

    const/4 v15, 0x1

    .line 1037
    .local v15, hasDeregistered:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v40, v0

    if-eqz v40, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v40, v0

    if-nez v40, :cond_12

    const/16 v16, 0x1

    .line 1041
    .local v16, hasGprsAttached:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v40, v0

    if-nez v40, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v40, v0

    if-eqz v40, :cond_13

    const/16 v17, 0x1

    .line 1045
    .local v17, hasGprsDetached:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_14

    const/16 v19, 0x1

    .line 1051
    .local v19, hasRadioTechnologyChanged:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v40

    if-nez v40, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v40

    if-eqz v40, :cond_15

    const/16 v22, 0x1

    .line 1053
    .local v22, hasRoamingOn:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v40

    if-eqz v40, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v40

    if-nez v40, :cond_16

    const/16 v21, 0x1

    .line 1055
    .local v21, hasRoamingOff:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_17

    const/16 v18, 0x1

    .line 1058
    .local v18, hasLocationChanged:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getState()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getState()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1

    .line 1059
    :cond_0
    const v40, 0xc3c2

    const/16 v41, 0x4

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getState()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getState()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    invoke-static/range {v40 .. v41}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1064
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    .line 1065
    .local v34, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 1066
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    .line 1073
    .local v31, tcl:Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1074
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1079
    if-eqz v19, :cond_3

    .line 1080
    const/4 v8, -0x1

    .line 1081
    .local v8, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v25

    check-cast v25, Landroid/telephony/gsm/GsmCellLocation;

    .line 1082
    .local v25, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v25, :cond_2

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    .line 1083
    :cond_2
    const v40, 0xc3c0

    const/16 v41, 0x3

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    invoke-static/range {v40 .. v41}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1086
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "RAT switched "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " -> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " at cell "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1092
    .end local v8           #cid:I
    .end local v25           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 1093
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 1094
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 1095
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    .line 1096
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRealRadioTechnology:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOldRealRadioTechnology:I

    .line 1098
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    .line 1105
    if-eqz v19, :cond_4

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    :cond_4
    if-eqz v20, :cond_5

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1114
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " changing to false"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1117
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1120
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEonsEnabled:Z

    move/from16 v40, v0

    if-eqz v40, :cond_6

    .line 1121
    const-string v40, "GSM"

    const-string v41, "Network State Changed, get EONS and update operator name display"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateEons()V

    .line 1129
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_18

    const/4 v14, 0x1

    .line 1130
    .local v14, hasChanged:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1131
    if-eqz v14, :cond_8

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const-string v40, "gsm.operator.numeric"

    const-string v41, ""

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1145
    .local v29, prevOperatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v28

    .line 1146
    .local v28, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "gsm.operator.numeric"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    if-nez v28, :cond_19

    .line 1149
    const-string v40, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "gsm.operator.iso-country"

    const-string v42, ""

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1152
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1322
    :cond_7
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v41, v0

    const-string v42, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v40

    if-eqz v40, :cond_2a

    const-string v40, "true"

    :goto_a
    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1328
    .end local v28           #operatorNumeric:Ljava/lang/String;
    .end local v29           #prevOperatorNumeric:Ljava/lang/String;
    :cond_8
    if-eqz v16, :cond_9

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1332
    :cond_9
    if-eqz v17, :cond_a

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1336
    :cond_a
    if-eqz v19, :cond_b

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "nwTypeChanged"

    invoke-virtual/range {v40 .. v41}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1340
    :cond_b
    if-eqz v22, :cond_c

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1344
    :cond_c
    if-eqz v21, :cond_d

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1348
    :cond_d
    if-eqz v18, :cond_e

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 1352
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getState()I

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v40

    if-nez v40, :cond_2b

    .line 1353
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v40, v0

    if-nez v40, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v40, v0

    if-nez v40, :cond_f

    .line 1354
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "gprs_register_check_period_ms"

    const v42, 0xea60

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1360
    .local v7, check_period:I
    const/16 v40, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v40

    int-to-long v0, v7

    move-wide/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1366
    .end local v7           #check_period:I
    :cond_f
    :goto_b
    return-void

    .line 1029
    .end local v14           #hasChanged:Z
    .end local v15           #hasDeregistered:Z
    .end local v16           #hasGprsAttached:Z
    .end local v17           #hasGprsDetached:Z
    .end local v18           #hasLocationChanged:Z
    .end local v19           #hasRadioTechnologyChanged:Z
    .end local v20           #hasRegistered:Z
    .end local v21           #hasRoamingOff:Z
    .end local v22           #hasRoamingOn:Z
    .end local v31           #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .end local v34           #tss:Landroid/telephony/ServiceState;
    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1033
    .restart local v20       #hasRegistered:Z
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1037
    .restart local v15       #hasDeregistered:Z
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1041
    .restart local v16       #hasGprsAttached:Z
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1045
    .restart local v17       #hasGprsDetached:Z
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1051
    .restart local v19       #hasRadioTechnologyChanged:Z
    :cond_15
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 1053
    .restart local v22       #hasRoamingOn:Z
    :cond_16
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 1055
    .restart local v21       #hasRoamingOff:Z
    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 1129
    .restart local v18       #hasLocationChanged:Z
    .restart local v31       #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v34       #tss:Landroid/telephony/ServiceState;
    :cond_18
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 1154
    .restart local v14       #hasChanged:Z
    .restart local v28       #operatorNumeric:Ljava/lang/String;
    .restart local v29       #prevOperatorNumeric:Ljava/lang/String;
    :cond_19
    const-string v24, ""

    .line 1155
    .local v24, iso:Ljava/lang/String;
    const-string v26, ""

    .line 1157
    .local v26, mcc:Ljava/lang/String;
    const/16 v40, 0x0

    const/16 v41, 0x3

    :try_start_0
    move-object/from16 v0, v28

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 1158
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    invoke-static/range {v40 .. v40}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v24

    .line 1169
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "calling_gsm_ad_enabled"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getState()I

    move-result v40

    if-nez v40, :cond_1d

    .line 1173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v27

    .line 1175
    .local v27, networkTypeString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v30

    .line 1176
    .local v30, sid:I
    const/4 v12, 0x0

    .line 1177
    .local v12, dstFlag:I
    const/16 v33, 0x0

    .line 1178
    .local v33, timeZone:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedZoneDst:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1a

    .line 1179
    const/4 v12, 0x1

    .line 1182
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_1b

    .line 1185
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v40

    const v41, 0x36ee80

    div-int v33, v40, v41
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1193
    :cond_1b
    :goto_d
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v40

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_1d

    .line 1194
    const/16 v40, 0x0

    const/16 v41, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1195
    .local v11, decodeMcc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->supForIAD:Lcom/motorola/android/telephony/SUPForAssistedDialing;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    move/from16 v2, v33

    invoke-virtual {v0, v11, v1, v2, v12}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateCurrentCountryDetails(IIII)I

    move-result v23

    .line 1198
    .local v23, isUnknownMccNotified:I
    const/16 v40, 0x2

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_1c

    .line 1199
    if-nez v23, :cond_22

    const/16 v40, 0x1

    :goto_e
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCurrentMccUnknown:Z

    .line 1206
    :cond_1c
    if-nez v23, :cond_23

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gsmForUnknownMccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1d

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gsmForUnknownMccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    new-instance v41, Landroid/os/AsyncResult;

    const/16 v42, 0x0

    const-string v43, "on"

    const/16 v44, 0x0

    invoke-direct/range {v41 .. v44}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v40 .. v41}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1223
    .end local v11           #decodeMcc:I
    .end local v12           #dstFlag:I
    .end local v23           #isUnknownMccNotified:I
    .end local v27           #networkTypeString:Ljava/lang/String;
    .end local v30           #sid:I
    .end local v33           #timeZone:I
    :cond_1d
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "gsm.operator.iso-country"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1226
    const/16 v38, 0x0

    .line 1228
    .local v38, zone:Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v40, v0

    if-nez v40, :cond_1f

    const-string v40, "000"

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_1f

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v40

    if-eqz v40, :cond_1f

    .line 1232
    const-string v40, "telephony.test.ignore.nitz"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v40

    const-wide/16 v42, 0x1

    and-long v40, v40, v42

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-nez v40, :cond_24

    const/16 v32, 0x1

    .line 1236
    .local v32, testOneUniqueOffsetPath:Z
    :goto_10
    invoke-static/range {v24 .. v24}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v37

    .line 1237
    .local v37, uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1e

    if-eqz v32, :cond_25

    .line 1238
    :cond_1e
    const/16 v40, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #zone:Ljava/util/TimeZone;
    check-cast v38, Ljava/util/TimeZone;

    .line 1240
    .restart local v38       #zone:Ljava/util/TimeZone;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: no nitz but one TZ for iso-cc="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " with zone.getID="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " testOneUniqueOffsetPath="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1255
    .end local v32           #testOneUniqueOffsetPath:Z
    .end local v37           #uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_1f
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 1260
    const-string v40, "persist.sys.timezone"

    invoke-static/range {v40 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1262
    .local v39, zoneName:Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: fix time zone zoneName=\'"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "\' mZoneOffset="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " mZoneDst="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " iso-cc=\'"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "\' iso-cc-idx="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sget-object v41, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v40, v0

    if-nez v40, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v40, v0

    if-nez v40, :cond_27

    if-eqz v39, :cond_27

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_27

    sget-object v40, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v40

    if-gez v40, :cond_27

    .line 1277
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v38

    .line 1278
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v40, v0

    if-eqz v40, :cond_20

    .line 1281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1282
    .local v9, ctm:J
    move-object/from16 v0, v38

    invoke-virtual {v0, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v35, v0

    .line 1284
    .local v35, tzOffset:J
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: tzOffset="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " ltod="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1287
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v40

    if-eqz v40, :cond_26

    .line 1288
    sub-long v5, v9, v35

    .line 1289
    .local v5, adj:J
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: adj ltod="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1291
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1297
    .end local v5           #adj:J
    .end local v9           #ctm:J
    .end local v35           #tzOffset:J
    :cond_20
    :goto_12
    const-string v40, "pollStateDone: using default TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1308
    :goto_13
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 1310
    if-eqz v38, :cond_29

    .line 1311
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: zone != null zone.getID="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1312
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v40

    if-eqz v40, :cond_21

    .line 1313
    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1315
    :cond_21
    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1159
    .end local v38           #zone:Ljava/util/TimeZone;
    .end local v39           #zoneName:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1160
    .local v13, ex:Ljava/lang/NumberFormatException;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1161
    .end local v13           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v13

    .line 1162
    .local v13, ex:Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1186
    .end local v13           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v12       #dstFlag:I
    .restart local v27       #networkTypeString:Ljava/lang/String;
    .restart local v30       #sid:I
    .restart local v33       #timeZone:I
    :catch_2
    move-exception v13

    .line 1187
    .local v13, ex:Ljava/lang/NullPointerException;
    const-string v40, "GSM"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Get timeZone failed: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1199
    .end local v13           #ex:Ljava/lang/NullPointerException;
    .restart local v11       #decodeMcc:I
    .restart local v23       #isUnknownMccNotified:I
    :cond_22
    const/16 v40, 0x0

    goto/16 :goto_e

    .line 1212
    :cond_23
    const/16 v40, 0x1

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_1d

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gsmForUnknownMccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1d

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gsmForUnknownMccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    new-instance v41, Landroid/os/AsyncResult;

    const/16 v42, 0x0

    const-string v43, "off"

    const/16 v44, 0x0

    invoke-direct/range {v41 .. v44}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v40 .. v41}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_f

    .line 1232
    .end local v11           #decodeMcc:I
    .end local v12           #dstFlag:I
    .end local v23           #isUnknownMccNotified:I
    .end local v27           #networkTypeString:Ljava/lang/String;
    .end local v30           #sid:I
    .end local v33           #timeZone:I
    .restart local v38       #zone:Ljava/util/TimeZone;
    :cond_24
    const/16 v32, 0x0

    goto/16 :goto_10

    .line 1247
    .restart local v32       #testOneUniqueOffsetPath:Z
    .restart local v37       #uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_25
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: there are "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " unique offsets for iso-cc=\'"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " testOneUniqueOffsetPath="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "\', do nothing"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1294
    .end local v32           #testOneUniqueOffsetPath:Z
    .end local v37           #uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v9       #ctm:J
    .restart local v35       #tzOffset:J
    .restart local v39       #zoneName:Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v40, v0

    sub-long v40, v40, v35

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto/16 :goto_12

    .line 1298
    .end local v9           #ctm:J
    .end local v35           #tzOffset:J
    :cond_27
    const-string v40, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_28

    .line 1301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v38

    .line 1302
    const-string v40, "pollStateDone: using NITZ TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1304
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v42, v0

    move/from16 v0, v40

    move/from16 v1, v41

    move-wide/from16 v2, v42

    move-object/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v38

    .line 1305
    const-string v40, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1317
    :cond_29
    const-string v40, "pollStateDone: zone == null"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1322
    .end local v24           #iso:Ljava/lang/String;
    .end local v26           #mcc:Ljava/lang/String;
    .end local v38           #zone:Ljava/util/TimeZone;
    .end local v39           #zoneName:Ljava/lang/String;
    :cond_2a
    const-string v40, "false"

    goto/16 :goto_a

    .line 1364
    .end local v28           #operatorNumeric:Ljava/lang/String;
    .end local v29           #prevOperatorNumeric:Ljava/lang/String;
    :cond_2b
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_b
.end method

.method private processIccRecordEvents(I)V
    .locals 4
    .parameter "eventCode"

    .prologue
    .line 619
    packed-switch p1, :pswitch_data_0

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 621
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0

    .line 625
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEonsEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getLacOrTac()I

    move-result v0

    .line 628
    .local v0, lactac:I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateEons(Ljava/lang/String;I)Z

    move-result v1

    .line 630
    .local v1, needsSpnUpdate:Z
    if-eqz v1, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    .line 1414
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 1429
    :goto_0
    return-void

    .line 1422
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1423
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1428
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 1608
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 3
    .parameter "code"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1574
    packed-switch p1, :pswitch_data_0

    .line 1596
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1597
    :goto_0
    :pswitch_1
    return v0

    .line 1586
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1589
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 1593
    goto :goto_0

    .line 1574
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    .line 2041
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2053
    :cond_0
    :goto_0
    return-void

    .line 2046
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2049
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 2050
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2064
    :cond_0
    :goto_0
    return-void

    .line 2060
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2061
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 2000
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 2001
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 2002
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    .line 1996
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 1997
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 2032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2033
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 2034
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2035
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2036
    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2037
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2038
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "zoneId"

    .prologue
    .line 2011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2012
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2014
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 2015
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2016
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2017
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2018
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2023
    return-void
.end method

.method private setNotification(I)V
    .locals 9
    .parameter "notifyType"

    .prologue
    .line 2073
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: create notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2074
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2076
    .local v0, context:Landroid/content/Context;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2077
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 2078
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 2079
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 2080
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2081
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2084
    const-string v1, ""

    .line 2085
    .local v1, details:Ljava/lang/CharSequence;
    const v6, 0x10400f5

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2086
    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x3e7

    .line 2088
    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    .line 2110
    :goto_0
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2111
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2112
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2115
    const-string v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 2118
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-eq p1, v6, :cond_0

    const/16 v6, 0x3ec

    if-ne p1, v6, :cond_1

    .line 2120
    :cond_0
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2125
    :goto_1
    return-void

    .line 2090
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_1
    const/16 v3, 0x378

    .line 2091
    const v6, 0x10400f6

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2092
    goto :goto_0

    .line 2094
    :pswitch_2
    const/16 v3, 0x378

    .line 2095
    goto :goto_0

    .line 2097
    :pswitch_3
    const v6, 0x10400f9

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2098
    goto :goto_0

    .line 2100
    :pswitch_4
    const v6, 0x10400f8

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2101
    goto :goto_0

    .line 2103
    :pswitch_5
    const v6, 0x10400f7

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2104
    goto :goto_0

    .line 2123
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 2088
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    .line 938
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 939
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 30
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    .line 1806
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 1807
    .local v19, start:J
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NITZ: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " start="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " delay="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-long v26, v19, p2

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1814
    :try_start_0
    const-string v25, "GMT"

    invoke-static/range {v25 .. v25}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 1816
    .local v5, c:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 1817
    const/16 v25, 0x10

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1819
    const-string v25, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1821
    .local v16, nitzSubs:[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v23, v0

    .line 1822
    .local v23, year:I
    const/16 v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1825
    const/16 v25, 0x1

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    add-int/lit8 v15, v25, -0x1

    .line 1826
    .local v15, month:I
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v5, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 1828
    const/16 v25, 0x2

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1829
    .local v6, date:I
    const/16 v25, 0x5

    move/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 1831
    const/16 v25, 0x3

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1832
    .local v9, hour:I
    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v5, v0, v9}, Ljava/util/Calendar;->set(II)V

    .line 1834
    const/16 v25, 0x4

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1835
    .local v14, minute:I
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v5, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 1837
    const/16 v25, 0x5

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1838
    .local v17, second:I
    const/16 v25, 0xd

    move/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1840
    const/16 v25, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    .line 1842
    .local v18, sign:Z
    :goto_0
    const/16 v25, 0x6

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1844
    .local v21, tzOffset:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    const/16 v25, 0x7

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1854
    .local v7, dst:I
    :goto_1
    if-eqz v18, :cond_8

    const/16 v25, 0x1

    :goto_2
    mul-int v25, v25, v21

    mul-int/lit8 v25, v25, 0xf

    mul-int/lit8 v25, v25, 0x3c

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    .line 1856
    const/16 v24, 0x0

    .line 1862
    .local v24, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    .line 1863
    const/16 v25, 0x8

    aget-object v25, v16, v25

    const/16 v26, 0x21

    const/16 v27, 0x2f

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v22

    .line 1864
    .local v22, tzname:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .line 1867
    .end local v22           #tzname:Ljava/lang/String;
    :cond_0
    const-string v25, "gsm.operator.iso-country"

    const-string v26, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1869
    .local v11, iso:Ljava/lang/String;
    if-nez v24, :cond_1

    .line 1871
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 1872
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_a

    .line 1873
    if-eqz v7, :cond_9

    const/16 v25, 0x1

    :goto_3
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move/from16 v0, v21

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3, v11}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .line 1877
    if-nez v24, :cond_1

    if-nez v7, :cond_1

    const-string v25, "fr"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 1879
    const-string v25, "NITZ: DST=0, iso=fr and no zone found. Trying with DST on in case no DST field was present"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1882
    const/16 v25, 0x1

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move/from16 v0, v21

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3, v11}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .line 1897
    :cond_1
    :goto_4
    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v26, v0

    if-eqz v7, :cond_c

    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v26

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 1902
    :cond_2
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 1903
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 1904
    if-eqz v7, :cond_d

    const/16 v25, 0x1

    :goto_6
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 1905
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 1908
    :cond_3
    if-eqz v24, :cond_5

    .line 1909
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 1910
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1912
    :cond_4
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 1915
    :cond_5
    const-string v25, "gsm.ignore-nitz"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1916
    .local v10, ignore:Ljava/lang/String;
    if-eqz v10, :cond_e

    const-string v25, "yes"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 1917
    const-string v25, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1975
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v9           #hour:I
    .end local v10           #ignore:Ljava/lang/String;
    .end local v11           #iso:Ljava/lang/String;
    .end local v14           #minute:I
    .end local v15           #month:I
    .end local v16           #nitzSubs:[Ljava/lang/String;
    .end local v17           #second:I
    .end local v18           #sign:Z
    .end local v21           #tzOffset:I
    .end local v23           #year:I
    .end local v24           #zone:Ljava/util/TimeZone;
    :goto_7
    return-void

    .line 1840
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v9       #hour:I
    .restart local v14       #minute:I
    .restart local v15       #month:I
    .restart local v16       #nitzSubs:[Ljava/lang/String;
    .restart local v17       #second:I
    .restart local v23       #year:I
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1844
    .restart local v18       #sign:Z
    .restart local v21       #tzOffset:I
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1854
    .restart local v7       #dst:I
    :cond_8
    const/16 v25, -0x1

    goto/16 :goto_2

    .line 1873
    .restart local v11       #iso:Ljava/lang/String;
    .restart local v24       #zone:Ljava/util/TimeZone;
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 1892
    :cond_a
    if-eqz v7, :cond_b

    const/16 v25, 0x1

    :goto_8
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v25

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    goto/16 :goto_4

    :cond_b
    const/16 v25, 0x0

    goto :goto_8

    .line 1897
    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 1904
    :cond_d
    const/16 v25, 0x0

    goto :goto_6

    .line 1922
    .restart local v10       #ignore:Ljava/lang/String;
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1924
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v25

    if-eqz v25, :cond_11

    .line 1925
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    sub-long v12, v25, p2

    .line 1928
    .local v12, millisSinceNitzReceived:J
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_f

    .line 1931
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1970
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 1972
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v9           #hour:I
    .end local v10           #ignore:Ljava/lang/String;
    .end local v11           #iso:Ljava/lang/String;
    .end local v12           #millisSinceNitzReceived:J
    .end local v14           #minute:I
    .end local v15           #month:I
    .end local v16           #nitzSubs:[Ljava/lang/String;
    .end local v17           #second:I
    .end local v18           #sign:Z
    .end local v21           #tzOffset:I
    .end local v23           #year:I
    .end local v24           #zone:Ljava/util/TimeZone;
    :catch_0
    move-exception v8

    .line 1973
    .local v8, ex:Ljava/lang/RuntimeException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ex="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1938
    .end local v8           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v7       #dst:I
    .restart local v9       #hour:I
    .restart local v10       #ignore:Ljava/lang/String;
    .restart local v11       #iso:Ljava/lang/String;
    .restart local v12       #millisSinceNitzReceived:J
    .restart local v14       #minute:I
    .restart local v15       #month:I
    .restart local v16       #nitzSubs:[Ljava/lang/String;
    .restart local v17       #second:I
    .restart local v18       #sign:Z
    .restart local v21       #tzOffset:I
    .restart local v23       #year:I
    .restart local v24       #zone:Ljava/util/TimeZone;
    :cond_f
    const-wide/32 v25, 0x7fffffff

    cmp-long v25, v12, v25

    if-lez v25, :cond_10

    .line 1941
    :try_start_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/32 v26, 0x5265c00

    div-long v26, v12, v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " days"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1970
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    .line 1949
    :cond_10
    const/16 v25, 0xe

    long-to-int v0, v12

    move/from16 v26, v0

    :try_start_5
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1952
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NITZ: Setting time of day to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " NITZ receive delay(ms): "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " gained(ms): "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v26, v26, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " from "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1960
    const-string v25, "GSM"

    const-string v26, "NITZ: after Setting time of day"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    .end local v12           #millisSinceNitzReceived:J
    :cond_11
    const-string v25, "gsm.nitz.time"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    .line 1968
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1970
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    :catchall_0
    move-exception v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v25
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2189
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    return-void
.end method

.method private static twoDigitsAt(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "offset"

    .prologue
    const/16 v3, 0xa

    .line 1735
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 1736
    .local v0, a:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1738
    .local v1, b:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 1740
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1743
    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkCorrectThread()V

    .line 321
    const-string v0, "ServiceStateTracker dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 338
    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 339
    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->supForIAD:Lcom/motorola/android/telephony/SUPForAssistedDialing;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->dispose()V

    .line 342
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2220
    const-string v0, "GsmServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " newCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " gprsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " newGPRSState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZoneAfterNitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curSpnRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2251
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 345
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 1755
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method getCurrentGprsState()I
    .locals 1

    .prologue
    .line 1751
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x34

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2215
    return-void
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method protected getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "defValue"

    .prologue
    .line 1612
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 370
    const-string v17, "GSM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received message "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] while being destroyed. Ignoring."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 374
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 589
    :pswitch_1
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 386
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x111002f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 389
    .local v14, skipRestoringSelection:Z
    if-nez v14, :cond_2

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 393
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 401
    .end local v14           #skipRestoringSelection:Z
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    .line 406
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    .line 413
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 417
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 418
    .local v3, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 424
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 426
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 427
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v15, v17

    check-cast v15, [Ljava/lang/String;

    .line 428
    .local v15, states:[Ljava/lang/String;
    const/4 v8, -0x1

    .line 429
    .local v8, lac:I
    const/4 v4, -0x1

    .line 430
    .local v4, cid:I
    array-length v0, v15

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 432
    const/16 v17, 0x1

    :try_start_0
    aget-object v17, v15, v17

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    aget-object v17, v15, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_6

    .line 433
    const/16 v17, 0x1

    aget-object v17, v15, v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 441
    :cond_3
    :goto_1
    const/16 v17, 0x2

    aget-object v17, v15, v17

    if-eqz v17, :cond_4

    const/16 v17, 0x2

    aget-object v17, v15, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 442
    const/16 v17, 0x2

    aget-object v17, v15, v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 448
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v4}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 454
    .end local v4           #cid:I
    .end local v8           #lac:I
    .end local v15           #states:[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 436
    .restart local v4       #cid:I
    .restart local v8       #lac:I
    .restart local v15       #states:[Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 437
    const v8, 0xffff

    goto :goto_1

    .line 444
    :catch_0
    move-exception v5

    .line 445
    .local v5, ex:Ljava/lang/NumberFormatException;
    const-string v17, "GSM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "error parsing location: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 461
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v4           #cid:I
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    .end local v8           #lac:I
    .end local v15           #states:[Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 463
    .restart local v3       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 469
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 473
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 475
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/Object;

    check-cast v17, [Ljava/lang/Object;

    const/16 v18, 0x0

    aget-object v13, v17, v18

    check-cast v13, Ljava/lang/String;

    .line 476
    .local v13, nitzString:Ljava/lang/String;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/Object;

    check-cast v17, [Ljava/lang/Object;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 478
    .local v11, nitzReceiveTime:J
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 485
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v11           #nitzReceiveTime:J
    .end local v13           #nitzString:Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 489
    .restart local v3       #ar:Landroid/os/AsyncResult;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_0

    .line 495
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 499
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 500
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->processIccRecordEvents(I)V

    goto/16 :goto_0

    .line 504
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 506
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    const/16 v18, 0xf

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 512
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 514
    .restart local v3       #ar:Landroid/os/AsyncResult;
    const/16 v17, 0x15

    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 515
    .local v10, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 519
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v10           #message:Landroid/os/Message;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 520
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 521
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    invoke-static/range {v17 .. v17}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v17

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 523
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 528
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 530
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 531
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    check-cast v17, [I

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 536
    :goto_3
    const/16 v17, 0x14

    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 537
    .restart local v10       #message:Landroid/os/Message;
    const/16 v16, 0x7

    .line 539
    .local v16, toggledNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 533
    .end local v10           #message:Landroid/os/Message;
    .end local v16           #toggledNetworkType:I
    :cond_7
    const/16 v17, 0x7

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_3

    .line 543
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getState()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v17

    if-nez v17, :cond_8

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v9

    check-cast v9, Landroid/telephony/gsm/GsmCellLocation;

    .line 549
    .local v9, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v18, 0xc3bb

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v20, 0x1

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v17

    :goto_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 551
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 553
    .end local v9           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 549
    .restart local v9       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_9
    const/16 v17, -0x1

    goto :goto_4

    .line 560
    .end local v9           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :pswitch_12
    const-string v17, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 564
    .restart local v3       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 568
    .end local v3           #ar:Landroid/os/AsyncResult;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 569
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v7, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    .line 571
    .local v7, imsiMsg:Landroid/os/Message;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 572
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v7, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 573
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 577
    :cond_a
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 578
    iget-object v6, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 579
    .local v6, imsi:Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v7, v6, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 580
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 583
    .end local v6           #imsi:Ljava/lang/String;
    :cond_b
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v7, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 584
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_2
        :pswitch_d
        :pswitch_10
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_13
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 17
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 741
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    if-eq v13, v14, :cond_1

    .line 742
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v13, :cond_0

    .line 743
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/String;

    check-cast v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleRejectCode([Ljava/lang/String;)V

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_8

    .line 751
    const/4 v2, 0x0

    .line 753
    .local v2, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v13, v13, Lcom/android/internal/telephony/CommandException;

    if-eqz v13, :cond_2

    .line 754
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v13, Lcom/android/internal/telephony/CommandException;

    check-cast v13, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 757
    :cond_2
    sget-object v13, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v13, :cond_3

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 763
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v13}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v13

    if-nez v13, :cond_4

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 769
    :cond_4
    sget-object v13, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v2, v13, :cond_5

    .line 770
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 910
    .end local v2           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    add-int/lit8 v15, v15, -0x1

    aput v15, v13, v14

    .line 912
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    if-nez v13, :cond_0

    .line 922
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    if-eqz v13, :cond_16

    :cond_6
    const/4 v10, 0x1

    .line 924
    .local v10, roaming:Z
    :goto_2
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DataRoaming="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "mGsmRoaming="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 926
    const/4 v10, 0x0

    .line 928
    :cond_7
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "roaming = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v10}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 931
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v13, v14}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 932
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v13, v14}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 774
    .end local v10           #roaming:Z
    :cond_8
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 776
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/String;

    move-object v0, v13

    check-cast v0, [Ljava/lang/String;

    move-object v11, v0

    .line 777
    .local v11, states:[Ljava/lang/String;
    const/4 v5, -0x1

    .line 778
    .local v5, lac:I
    const/4 v1, -0x1

    .line 779
    .local v1, cid:I
    const/4 v9, -0x1

    .line 780
    .local v9, regState:I
    const/4 v8, -0x1

    .line 781
    .local v8, reasonRegStateDenied:I
    const/4 v7, -0x1

    .line 782
    .local v7, psc:I
    array-length v13, v11
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v13, :cond_b

    .line 784
    const/4 v13, 0x0

    :try_start_1
    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 785
    array-length v13, v11

    const/4 v14, 0x3

    if-lt v13, v14, :cond_a

    .line 786
    const/4 v13, 0x1

    aget-object v13, v11, v13

    if-eqz v13, :cond_f

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_f

    .line 787
    const/4 v13, 0x1

    aget-object v13, v11, v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 795
    :cond_9
    :goto_3
    const/4 v13, 0x2

    aget-object v13, v11, v13

    if-eqz v13, :cond_a

    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_a

    .line 796
    const/4 v13, 0x2

    aget-object v13, v11, v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 799
    :cond_a
    array-length v13, v11

    const/16 v14, 0xe

    if-le v13, v14, :cond_b

    .line 800
    const/16 v13, 0xe

    aget-object v13, v11, v13

    if-eqz v13, :cond_b

    const/16 v13, 0xe

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_b

    .line 801
    const/16 v13, 0xe

    aget-object v13, v11, v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 809
    :cond_b
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 810
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/telephony/ServiceState;->setState(I)V

    .line 812
    const/16 v13, 0xa

    if-eq v9, v13, :cond_c

    const/16 v13, 0xc

    if-eq v9, v13, :cond_c

    const/16 v13, 0xd

    if-eq v9, v13, :cond_c

    const/16 v13, 0xe

    if-ne v9, v13, :cond_10

    .line 813
    :cond_c
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 821
    :goto_5
    const/4 v13, 0x1

    if-eq v9, v13, :cond_d

    const/4 v13, 0x5

    if-ne v9, v13, :cond_e

    :cond_d
    const/4 v13, -0x1

    if-ne v1, v13, :cond_e

    .line 822
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v13}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v5

    .line 823
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v13}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 824
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v13}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v7

    .line 825
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "radio registered but cid lost, keep last cell loc. regState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " lac: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " cid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " psc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 829
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v13, v5, v1}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 830
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v13, v7}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 833
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleRejectCode([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 906
    .end local v1           #cid:I
    .end local v5           #lac:I
    .end local v7           #psc:I
    .end local v8           #reasonRegStateDenied:I
    .end local v9           #regState:I
    .end local v11           #states:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 907
    .local v3, ex:Ljava/lang/RuntimeException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 790
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #cid:I
    .restart local v5       #lac:I
    .restart local v7       #psc:I
    .restart local v8       #reasonRegStateDenied:I
    .restart local v9       #regState:I
    .restart local v11       #states:[Ljava/lang/String;
    :cond_f
    :try_start_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v14, 0xe

    if-ne v13, v14, :cond_9

    .line 791
    const v5, 0xffff

    goto/16 :goto_3

    .line 804
    :catch_1
    move-exception v3

    .line 805
    .local v3, ex:Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error parsing RegistrationState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 815
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    :cond_10
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_5

    .line 839
    .end local v1           #cid:I
    .end local v5           #lac:I
    .end local v7           #psc:I
    .end local v8           #reasonRegStateDenied:I
    .end local v9           #regState:I
    .end local v11           #states:[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/String;

    move-object v0, v13

    check-cast v0, [Ljava/lang/String;

    move-object v11, v0

    .line 841
    .restart local v11       #states:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 842
    .local v12, type:I
    const/4 v9, -0x1

    .line 843
    .restart local v9       #regState:I
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 844
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 845
    array-length v13, v11
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-lez v13, :cond_14

    .line 847
    const/4 v13, 0x0

    :try_start_5
    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 853
    array-length v13, v11

    const/4 v14, 0x4

    if-lt v13, v14, :cond_11

    const/4 v13, 0x3

    aget-object v13, v11, v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v13

    if-nez v13, :cond_11

    .line 856
    const/4 v13, 0x3

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 858
    :cond_11
    array-length v13, v11

    const/4 v14, 0x5

    if-lt v13, v14, :cond_12

    const/4 v13, 0x3

    if-ne v9, v13, :cond_12

    .line 859
    const/4 v13, 0x4

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 861
    :cond_12
    array-length v13, v11

    const/4 v14, 0x6

    if-lt v13, v14, :cond_13

    .line 862
    const/4 v13, 0x5

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 864
    :cond_13
    const/4 v13, 0x1

    aget-object v13, v11, v13

    if-eqz v13, :cond_14

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_14

    .line 865
    const/4 v13, 0x1

    aget-object v13, v11, v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTAC:I

    .line 866
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[EONS] Received TAC = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTAC:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 872
    :cond_14
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 873
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 874
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    .line 875
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v12}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 876
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    invoke-virtual {v13, v14}, Landroid/telephony/ServiceState;->setDataState(I)V

    .line 877
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRilRadioTechnology:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRadioTechnology:I

    .line 878
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[EONS] EVENT_POLL_STATE_GPRS newGPRSState ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , mDataRadioTechnology ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRadioTechnology:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , mTAC ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTAC:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 868
    :catch_2
    move-exception v3

    .line 869
    .restart local v3       #ex:Ljava/lang/NumberFormatException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error parsing GprsRegistrationState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 883
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    .end local v9           #regState:I
    .end local v11           #states:[Ljava/lang/String;
    .end local v12           #type:I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/String;

    move-object v0, v13

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 885
    .local v6, opNames:[Ljava/lang/String;
    if-eqz v6, :cond_5

    array-length v13, v6

    const/4 v14, 0x3

    if-lt v13, v14, :cond_5

    .line 886
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    const/4 v14, 0x0

    aget-object v14, v6, v14

    const/4 v15, 0x1

    aget-object v15, v6, v15

    const/16 v16, 0x2

    aget-object v16, v6, v16

    invoke-virtual/range {v13 .. v16}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 891
    .end local v6           #opNames:[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [I

    move-object v0, v13

    check-cast v0, [I

    move-object v4, v0

    .line 892
    .local v4, ints:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    const/4 v13, 0x0

    aget v13, v4, v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_15

    const/4 v13, 0x1

    :goto_7
    invoke-virtual {v14, v13}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 893
    const/4 v13, 0x0

    aget v13, v4, v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->isManualNetSelAllowed()Z

    move-result v13

    if-nez v13, :cond_5

    .line 899
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 900
    const-string v13, "GSM"

    const-string v14, " Forcing Automatic Network Selection, manual selection is not allowed"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 892
    :cond_15
    const/4 v13, 0x0

    goto :goto_7

    .line 922
    .end local v4           #ints:[I
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 774
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 616
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 2

    .prologue
    .line 1763
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRilRadioTechnology:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentMccUnknown()Z
    .locals 1

    .prologue
    .line 2132
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCurrentMccUnknown:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2180
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2185
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Lcom/android/internal/telephony/PhoneBase;Z)V
    .locals 4
    .parameter "ar"
    .parameter "phone"
    .parameter "isGsm"

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1441
    .local v1, oldSignalStrength:Landroid/telephony/SignalStrength;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1442
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1443
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 1444
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, p3}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 1451
    :goto_0
    invoke-static {}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getInstance()Lcom/motorola/android/internal/telephony/SignalLevelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v3}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->setLevels(Landroid/telephony/SignalStrength;)V

    .line 1455
    const-string v2, "att"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1458
    check-cast p2, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local p2
    iget-object v2, p2, Lcom/android/internal/telephony/gsm/GSMPhone;->mOSST:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->getSignalStrength(Landroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)V

    .line 1474
    :cond_0
    :goto_1
    return-void

    .line 1446
    .restart local p2
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1447
    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p3}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_0

    .line 1462
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v1}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1467
    :try_start_0
    check-cast p2, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local p2
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, ex:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SignalStrength not notified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onUpdateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2142
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 2177
    :cond_0
    :goto_0
    return-void

    .line 2147
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mInitedPowerForFactory:Z

    if-nez v1, :cond_2

    const-string v1, "factory"

    const-string v2, "ro.bootmode"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2149
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->initRadioPowerForFactory()V

    .line 2153
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2155
    .local v0, newUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 2156
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_4

    .line 2157
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2158
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2159
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_3

    .line 2160
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2161
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 2163
    :cond_3
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2164
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2166
    :cond_4
    if-eqz v0, :cond_0

    .line 2167
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2168
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2169
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2170
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v2, 0x11

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2171
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 2172
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2173
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0x2b

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method registerForUnknownMcc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 355
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 356
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gsmForUnknownMccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 357
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 4

    .prologue
    .line 596
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 598
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 602
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;)V

    goto :goto_0
.end method

.method unregisterForUnknownMcc(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gsmForUnknownMccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 361
    return-void
.end method

.method public updateEons()V
    .locals 6

    .prologue
    .line 639
    const/4 v2, 0x0

    .line 640
    .local v2, needsUpdate:Z
    const/4 v1, -0x1

    .line 642
    .local v1, lactac:I
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v3, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getLacOrTac()I

    move-result v1

    .line 646
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v3, Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateEons(Ljava/lang/String;I)Z

    move-result v2

    .line 647
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EONS] updateEons() lactac = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , needsUpdate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , OperatorNumeric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    if-eqz v2, :cond_0

    .line 650
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v3, Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getEons()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, eonsLong:Ljava/lang/String;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EONS] updateEons() eonsLong = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    if-eqz v0, :cond_0

    .line 654
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateSpnDisplay()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 669
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v8, :cond_5

    .line 670
    const-string v8, "GSM"

    const-string v9, "mIccRecords null while updateSpnDisplay was called."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v2, 0x0

    .line 672
    .local v2, rule:I
    const/4 v5, 0x0

    .line 679
    .local v5, spn:Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, plmn:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 683
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040320

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 685
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSpnDisplay: emergency only and radio is on plmn=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 688
    :cond_0
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    if-ne v2, v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 691
    :cond_1
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v8, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    and-int/lit8 v8, v2, 0x1

    if-ne v8, v6, :cond_6

    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_6

    move v4, v6

    .line 695
    .local v4, showSpn:Z
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    and-int/lit8 v8, v2, 0x2

    if-eq v8, v11, :cond_3

    :cond_2
    if-nez v2, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_3
    move v3, v6

    .line 701
    .local v3, showPlmn:Z
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v7

    aput-object v1, v9, v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v11

    const/4 v6, 0x3

    aput-object v5, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 705
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v0, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    const-string v6, "showSpn"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 708
    const-string v6, "spn"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v6, "showPlmn"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 710
    const-string v6, "plmn"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 714
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #showPlmn:Z
    .end local v4           #showSpn:Z
    :cond_4
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 715
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 716
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 717
    return-void

    .line 674
    .end local v1           #plmn:Ljava/lang/String;
    .end local v2           #rule:I
    .end local v5           #spn:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v2

    .line 675
    .restart local v2       #rule:I
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #spn:Ljava/lang/String;
    goto/16 :goto_0

    .restart local v1       #plmn:Ljava/lang/String;
    :cond_6
    move v4, v7

    .line 691
    goto/16 :goto_1

    .restart local v4       #showSpn:Z
    :cond_7
    move v3, v7

    .line 695
    goto :goto_2
.end method
