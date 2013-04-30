.class public Lcom/android/internal/telephony/msim/SubscriptionManager;
.super Landroid/os/Handler;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;,
        Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;,
        Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    }
.end annotation


# static fields
.field private static final EVENT_ALL_CARD_INFO_AVAILABLE:I = 0x2

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x8

.field private static final EVENT_CARD_INFO_AVAILABLE:I = 0x0

.field private static final EVENT_CARD_INFO_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_CLEANUP_DATA_CONNECTION_DONE:I = 0x7

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xa

.field private static final EVENT_RADIO_ON:I = 0x9

.field private static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0x6

.field private static final EVENT_SET_SUBSCRIPTION_MODE_DONE:I = 0x3

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x4

.field private static final EVENT_SUBSCRIPTION_STATUS_CHANGED:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static NUM_SUBSCRIPTIONS:I = 0x0

.field public static final SUB_ACTIVATE_FAILED:Ljava/lang/String; = "ACTIVATE FAILED"

.field public static final SUB_ACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "ACTIVATE NOT SUPPORTED"

.field public static final SUB_ACTIVATE_SUCCESS:Ljava/lang/String; = "ACTIVATE SUCCESS"

.field public static final SUB_DEACTIVATE_FAILED:Ljava/lang/String; = "DEACTIVATE FAILED"

.field public static final SUB_DEACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "DEACTIVATE NOT SUPPORTED"

.field public static final SUB_DEACTIVATE_SUCCESS:Ljava/lang/String; = "DEACTIVATE SUCCESS"

.field public static final SUB_NOT_CHANGED:Ljava/lang/String; = "NO CHANGE IN SUBSCRIPTION"

.field private static final SUB_STATUS_ACTIVATED:I = 0x1

.field private static final SUB_STATUS_DEACTIVATED:I

.field private static USER_PREF_SUB_FIELDS:I

.field private static sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;


# instance fields
.field private mActivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/msim/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mAllCardsStatusAvailable:Z

.field private mCardInfoAvailable:[Z

.field private mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentDds:I

.field private mCurrentSubscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataActive:Z

.field private mDeactivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/msim/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableDdsInProgress:Z

.field private mIsNewCard:[Z

.field private mQueuedDds:I

.field private mRadioOn:[Z

.field private mSetDdsCompleteMsg:Landroid/os/Message;

.field private mSetDdsRequired:Z

.field private mSetSubsModeRequired:Z

.field private mSetSubscriptionInProgress:Z

.field private mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

.field private mSubActivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubResult:[Ljava/lang/String;

.field private mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    .line 102
    const/4 v0, 0x6

    sput v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 11
    .parameter "context"
    .parameter "uiccController"
    .parameter "ci"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 215
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 138
    iput-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 141
    iput-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    .line 143
    new-array v5, v8, [Z

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    .line 150
    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 152
    iput-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .line 158
    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 162
    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    .line 164
    new-array v5, v8, [Z

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    .line 168
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    .line 170
    sget v5, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    .line 172
    new-array v5, v8, [Z

    fill-array-data v5, :array_2

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    .line 216
    const-string v5, "Constructor - Enter"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 221
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getUserPreferredSubs()V

    .line 223
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    .line 224
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 225
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v1, p0, v7, v6}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->registerForCardInfoAvailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v1, p0, v10, v6}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->registerForCardInfoUnavailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v5, p0, v8, v9}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->registerForAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    iput-object p3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 233
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 234
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/16 v6, 0xa

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/16 v6, 0x9

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    :cond_1
    new-array v5, v8, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    .line 242
    new-array v5, v8, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    .line 243
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_2

    .line 244
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    .line 245
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 247
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    .line 248
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    .line 249
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 250
    .local v4, t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 256
    .end local v4           #t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In MSimProxyManager constructor current active dds is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 259
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    .line 260
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 261
    .restart local v4       #t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    new-instance v6, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/android/internal/telephony/msim/SubscriptionManager;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 263
    .end local v4           #t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_4
    const-string v5, "Constructor - Exit"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 264
    return-void

    .line 143
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 164
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 172
    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;
    .locals 1
    .parameter "subId"

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/msim/Subscription;

    return-object v0
.end method

.method private getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z
    .locals 1
    .parameter "subId"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    return v0
.end method

.method private getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    .locals 1
    .parameter "subId"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/SubscriptionManager;
    .locals 2
    .parameter "context"
    .parameter "uiccController"
    .parameter "ci"

    .prologue
    .line 193
    const-string v0, "SubscriptionManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/msim/SubscriptionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    .line 197
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    return-object v0
.end method

.method private getSetSubscriptionResults()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 637
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v1, v2, [Ljava/lang/String;

    .line 638
    .local v1, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    :cond_0
    return-object v1
.end method

.method private getUserPreferredSubs()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 1407
    const/4 v1, 0x0

    .line 1409
    .local v1, errorOnParsing:Z
    new-instance v8, Lcom/android/internal/telephony/msim/SubscriptionData;

    sget v9, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    iput-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 1411
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget v8, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v3, v8, :cond_7

    .line 1412
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1414
    .local v6, strUserSub:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1415
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: strUserSub = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :try_start_0
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1421
    .local v5, splitUserSub:[Ljava/lang/String;
    array-length v8, v5

    sget v9, Lcom/android/internal/telephony/msim/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    if-ne v8, v9, :cond_6

    .line 1422
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1423
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x0

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 1425
    :cond_0
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1426
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x1

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 1428
    :cond_1
    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1429
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x2

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1433
    :cond_2
    const/4 v8, 0x3

    :try_start_1
    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1434
    .local v7, subStatus:I
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    invoke-static {}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->values()[Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v9

    aget-object v9, v9, v7

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1443
    .end local v7           #subStatus:I
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x4

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1454
    :goto_2
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x5

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1479
    .end local v5           #splitUserSub:[Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    if-eqz v1, :cond_5

    .line 1480
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",,,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v9}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1487
    .local v0, defaultUserSub:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1490
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 1491
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 1492
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    .line 1493
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1494
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput v11, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 1495
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput v11, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 1498
    .end local v0           #defaultUserSub:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput v3, v8, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 1500
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUserPreferredSubs: mUserPrefSubs.subscription["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v9, v9, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1411
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1436
    .restart local v5       #splitUserSub:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1437
    .local v2, ex:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    :try_end_4
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 1470
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .end local v5           #splitUserSub:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1471
    .local v4, pe:Ljava/util/regex/PatternSyntaxException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: PatternSyntaxException while split : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 1445
    .end local v4           #pe:Ljava/util/regex/PatternSyntaxException;
    .restart local v5       #splitUserSub:[Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 1446
    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs:m3gppIndex: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, -0x1

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    goto/16 :goto_2

    .line 1456
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .line 1457
    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs:m3gpp2Index: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, -0x1

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    goto/16 :goto_3

    .line 1465
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :cond_6
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: splitUserSub.length != "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/msim/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1468
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 1503
    .end local v5           #splitUserSub:[Ljava/lang/String;
    .end local v6           #strUserSub:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private isAllCardsInfoAvailable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 862
    const/4 v4, 0x1

    .line 863
    .local v4, result:Z
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, v0, v2

    .line 864
    .local v1, available:Z
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move v4, v5

    .line 863
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 864
    goto :goto_1

    .line 866
    .end local v1           #available:Z
    :cond_1
    if-nez v4, :cond_2

    iget-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    if-eqz v7, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    return v6
.end method

.method private isAllRadioOn()Z
    .locals 5

    .prologue
    .line 854
    const/4 v4, 0x1

    .line 855
    .local v4, result:Z
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    .local v0, arr$:[Z
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-boolean v3, v0, v1

    .line 856
    .local v3, radioOn:Z
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 855
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 858
    .end local v3           #radioOn:Z
    :cond_1
    return v4
.end method

.method private isAnyPendingActivateRequest(I)Z
    .locals 3
    .parameter "subId"

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/Subscription;

    .line 1083
    .local v0, newSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 1085
    const/4 v1, 0x1

    .line 1087
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNewCardAvailable()Z
    .locals 5

    .prologue
    .line 869
    const/4 v4, 0x0

    .line 870
    .local v4, result:Z
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-boolean v2, v0, v1

    .line 871
    .local v2, isNew:Z
    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 870
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 871
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 873
    .end local v2           #isNew:Z
    :cond_2
    return v4
.end method

.method private isPresentInActivatePendingList(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 6
    .parameter "userSub"

    .prologue
    .line 829
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 830
    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/Subscription;

    .line 831
    .local v0, actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/msim/Subscription;->isSame(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 832
    const/4 v5, 0x1

    .line 835
    .end local v0           #actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :goto_1
    return v5

    .line 829
    .restart local v0       #actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .restart local v4       #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 835
    .end local v0           #actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1535
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1539
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    return-void
.end method

.method private notifySubscriptionActivated(I)V
    .locals 1
    .parameter "subId"

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1201
    return-void
.end method

.method private notifySubscriptionDeactivated(I)V
    .locals 1
    .parameter "subId"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1193
    return-void
.end method

.method private printPendingActivateRequests()V
    .locals 7

    .prologue
    .line 925
    const-string v5, "ActivatePending Queue : "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 926
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 927
    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/msim/Subscription;

    .line 928
    .local v3, newSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 930
    .end local v3           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private printPendingDeactivateRequests()V
    .locals 7

    .prologue
    .line 936
    const-string v5, "DeactivatePending Queue : "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 937
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 938
    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/msim/Subscription;

    .line 939
    .local v3, newSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 941
    .end local v3           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private processActivateRequests()V
    .locals 2

    .prologue
    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processActivateRequests: mSetSubscriptionInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSetSubsModeRequired = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1000
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v0, :cond_0

    .line 1001
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    if-eqz v0, :cond_1

    .line 1002
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscriptionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 1003
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v0, :cond_0

    .line 1004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    goto :goto_0
.end method

.method private processAllCardsInfoAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 717
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllRadioOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 718
    const-string v2, "processAllCardsInfoAvailable: Radio Not Available "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 744
    :cond_0
    return-void

    .line 722
    :cond_1
    const/4 v0, 0x0

    .line 723
    .local v0, availableCards:I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 725
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 726
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->isCardAbsentOrError(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 727
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 725
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    :cond_4
    if-ne v0, v3, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v2, :cond_5

    .line 733
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processActivateRequests()V

    .line 736
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isNewCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifyNewCardsAvailable()V

    .line 740
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 741
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 740
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private processAllDataDisconnected(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 353
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    if-eqz v2, :cond_0

    .line 354
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processDisableDataConnectionDone(Landroid/os/AsyncResult;)V

    .line 357
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 358
    .local v0, sub:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v2, v3

    .line 359
    .local v1, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processAllDataDisconnected: sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - subscriptionReadiness["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 363
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V

    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubPreferences()V

    .line 366
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 368
    :cond_1
    return-void
.end method

.method private processCardInfoAvailable(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "ar"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 752
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 754
    .local v0, cardIndex:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-boolean v7, v7, v8

    if-nez v7, :cond_1

    .line 755
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCardInfoAvailable: Radio Not Available on cardIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput-boolean v9, v7, v8

    .line 765
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v1

    .line 767
    .local v1, cardSubInfo:Lcom/android/internal/telephony/msim/SubscriptionData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCardInfoAvailable: cardIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n Card Sub Info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 770
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v6, v7, v8

    .line 771
    .local v6, userSub:Lcom/android/internal/telephony/msim/Subscription;
    iget v5, v6, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 772
    .local v5, subId:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v2

    .line 774
    .local v2, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCardInfoAvailable: subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n user pref sub = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n current sub   = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 778
    iget-object v7, v6, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v8, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v7, v8, :cond_2

    iget-object v7, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v8, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v7, v8, :cond_2

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/msim/SubscriptionData;->hasSubscription(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isPresentInActivatePendingList(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 782
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCardInfoAvailable: subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " need to activate!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 787
    new-instance v4, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v4}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .line 788
    .local v4, sub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/msim/SubscriptionData;->getSubscription(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 789
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 790
    iput v5, v4, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 791
    sget-object v7, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v7, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 792
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    .end local v4           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_2
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/msim/SubscriptionData;->hasSubscription(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 799
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput-boolean v10, v7, v8

    .line 803
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCardInfoAvailable: mIsNewCard ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-boolean v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 806
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllCardsInfoAvailable()Z

    move-result v7

    if-nez v7, :cond_4

    .line 807
    const-string v7, "All cards info not available!! Waiting for all info before processing"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 801
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput-boolean v9, v7, v8

    goto :goto_1

    .line 811
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCardInfoAvailable: mSetSubscriptionInProgress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 814
    iget-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v7, :cond_5

    .line 815
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processActivateRequests()V

    .line 818
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isNewCardAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifyNewCardsAvailable()V

    .line 822
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    array-length v7, v7

    if-ge v3, v7, :cond_0

    .line 823
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    aput-boolean v10, v7, v3

    .line 822
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private processCardInfoNotAvailable(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 882
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_2

    .line 883
    :cond_0
    const-string v6, "processCardInfoNotAvailable - Exception"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 918
    :cond_1
    :goto_0
    return-void

    .line 887
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 888
    .local v1, cardIndex:Ljava/lang/Integer;
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    .line 890
    .local v4, reason:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processCardInfoNotAvailable on cardIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 893
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput-boolean v7, v8, v9

    .line 898
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v8, v8, v7

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v8, v8, v6

    if-nez v8, :cond_5

    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    .line 899
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCardInfoNotAvailable mSetSubsModeRequired = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 903
    sget-object v6, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-eq v4, v6, :cond_3

    sget-object v6, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-ne v4, v6, :cond_6

    .line 907
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_6

    aget-object v5, v0, v2

    .line 908
    .local v5, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v6, v8, :cond_4

    .line 909
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V

    .line 910
    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 907
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_5
    move v6, v7

    .line 898
    goto :goto_1

    .line 915
    :cond_6
    sget-object v6, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-ne v4, v6, :cond_1

    .line 916
    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    goto/16 :goto_0
.end method

.method private processCleanupDataConnectionDone(Ljava/lang/Integer;)V
    .locals 2
    .parameter "subId"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCleanupDataConnectionDone: Radio Not Available on subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    .line 448
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    goto :goto_0
.end method

.method private processDisableDataConnectionDone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 398
    if-eqz p1, :cond_2

    .line 400
    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    .line 402
    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    if-eq v0, v1, :cond_0

    .line 405
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    .line 408
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    iput v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    .line 411
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSubscriptionSource is Successful  Enable Data Connectivity on Subscription "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->enableDataConnectivity(I)V

    .line 417
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    .line 424
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 429
    const-string v0, "Enable Data Connectivity Done!! Sending the cnf back!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 431
    iput-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 433
    :cond_1
    return-void

    .line 420
    :cond_2
    const-string v0, "SubscriptionManager"

    const-string v1, "Disabling Data Subscription Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 375
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 376
    const-string v0, "Register for the all data disconnect"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/msim/MSimProxyManager;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 394
    :goto_0
    return-void

    .line 380
    :cond_0
    const-string v0, "SubscriptionManager"

    const-string v1, "setDataSubscriptionSource Failed : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 387
    const-string v0, "posting failure message"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 389
    iput-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 392
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->enableDataConnectivity(I)V

    goto :goto_0
.end method

.method private processSetSubscriptionModeDone()V
    .locals 1

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllRadioOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    const-string v0, "processSetSubscriptionModeDone: Radio Not Available"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 711
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingActivateRequests()Z

    goto :goto_0
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 507
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;

    .line 508
    .local v3, setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x0

    .line 509
    .local v0, cause:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 510
    .local v4, subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    const/4 v1, 0x0

    .line 512
    .local v1, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-boolean v5, v5, v7

    if-nez v5, :cond_1

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processSetUiccSubscriptionDone: Radio Not Available on subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_9

    .line 521
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_2

    .line 522
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 524
    .local v2, error:Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v2, :cond_2

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v5, :cond_2

    .line 526
    const-string v0, "DEACTIVATE NOT SUPPORTED"

    .line 530
    .end local v2           #error:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v7, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v7, :cond_5

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subscription of SUB:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Activate Failed"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 533
    if-nez v0, :cond_3

    .line 534
    const-string v0, "ACTIVATE FAILED"

    .line 536
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 537
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .line 540
    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_4
    :goto_1
    const-string v5, "set uicc subscription done. update the current subscriptions"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 600
    iget v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v5, v1, v4, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateCurrentSubscription(ILcom/android/internal/telephony/msim/Subscription;Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;Ljava/lang/String;)V

    .line 605
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_c

    .line 606
    iget v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v7, v7, v8

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->saveUserPreferredSubscription(ILcom/android/internal/telephony/msim/Subscription;)V

    .line 614
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aput-object v0, v5, v7

    .line 616
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v5

    if-nez v5, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v5

    if-nez v5, :cond_0

    .line 621
    iput-boolean v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 622
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubPreferences()V

    .line 624
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v5, :cond_0

    .line 625
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-direct {v6, v9, v7, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 541
    :cond_5
    iget-object v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v7, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v7, :cond_8

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subscription of SUB:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Deactivate Failed"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 548
    if-nez v0, :cond_6

    .line 549
    iget v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAnyPendingActivateRequest(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 550
    const-string v0, "ACTIVATE FAILED"

    .line 555
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_6
    :goto_3
    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 561
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .line 563
    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    if-ne v5, v7, :cond_4

    .line 567
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/msim/MSimProxyManager;->enableDataConnectivity(I)V

    goto/16 :goto_1

    .line 557
    :cond_7
    const-string v0, "DEACTIVATE FAILED"

    goto :goto_3

    .line 570
    :cond_8
    const-string v5, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 574
    :cond_9
    iget-object v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v7, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v7, :cond_a

    .line 576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subscription of SUB:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Activated"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 577
    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 578
    const-string v0, "ACTIVATE SUCCESS"

    .line 579
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .line 582
    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 583
    :cond_a
    iget-object v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v7, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v7, :cond_b

    .line 585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subscription of SUB:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Deactivated"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 586
    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 587
    const-string v0, "DEACTIVATE SUCCESS"

    .line 588
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .line 590
    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v7, v7, v8

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget v5, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    goto/16 :goto_1

    .line 594
    :cond_b
    const-string v5, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 610
    :cond_c
    iget v7, v3, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v4, v5, :cond_d

    const/4 v5, 0x1

    :goto_4
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    goto/16 :goto_2

    :cond_d
    move v5, v6

    goto :goto_4
.end method

.method private processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 456
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 457
    .local v2, subId:Ljava/lang/Integer;
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v0, v3, v5

    .line 458
    .local v0, actStatus:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSubscriptionStatusChanged sub = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " actStatus = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 461
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-boolean v3, v3, v6

    if-nez v3, :cond_0

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processSubscriptionStatusChanged: Radio Not Available on subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    .line 467
    if-ne v0, v4, :cond_3

    .line 469
    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    if-eqz v3, :cond_1

    .line 470
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-ne v3, v6, :cond_1

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSubscription on "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 474
    iget v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iput v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    .line 475
    iput-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 476
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Integer;

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 479
    .local v1, msgSetDdsDone:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    aget-object v3, v3, v4

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 480
    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .line 483
    .end local v1           #msgSetDdsDone:Landroid/os/Message;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionActivated(I)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 466
    goto :goto_1

    .line 484
    :cond_3
    if-nez v0, :cond_5

    .line 488
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-ne v3, v4, :cond_4

    .line 489
    const-string v3, "Register for the all data disconnect"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/android/internal/telephony/msim/MSimProxyManager;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 493
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V

    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubPreferences()V

    .line 495
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    goto/16 :goto_0

    .line 498
    :cond_5
    const-string v3, "handleSubscriptionStatusChanged INVALID"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V
    .locals 2
    .parameter "subId"

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/Subscription;->clear()V

    .line 1131
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1135
    return-void
.end method

.method private saveUserPreferredSubscription(ILcom/android/internal/telephony/msim/Subscription;)V
    .locals 4
    .parameter "subIndex"
    .parameter "userPrefSub"

    .prologue
    .line 1507
    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge p1, v1, :cond_0

    if-nez p2, :cond_1

    .line 1508
    :cond_0
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveUserPreferredSubscription: INVALID PARAMETERS: subIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userPrefSub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :goto_0
    return-void

    .line 1514
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 1515
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v1, v1, p1

    iput p1, v1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 1517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p2, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p2, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1524
    .local v0, userSub:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUserPreferredSubscription: userPrefSub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUserPreferredSubscription: userSub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1530
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1517
    .end local v0           #userSub:Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto/16 :goto_1

    :cond_3
    const-string v1, ""

    goto/16 :goto_2

    :cond_4
    const-string v1, ""

    goto/16 :goto_3
.end method

.method private setSubscriptionMode()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1165
    const/4 v3, 0x0

    .line 1166
    .local v3, numSubsciptions:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 1167
    .local v6, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/msim/Subscription;

    .line 1168
    .local v4, pendingSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_0

    .line 1170
    add-int/lit8 v3, v3, 0x1

    .line 1166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1174
    .end local v4           #pendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v6           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSubscriptionMode numSubsciptions = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1176
    if-lez v3, :cond_2

    sget v8, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-gt v3, v8, :cond_2

    .line 1177
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1180
    .local v5, setSubsModeDone:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v8, v7

    invoke-interface {v7, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setSubscriptionMode(ILandroid/os/Message;)V

    .line 1181
    const/4 v7, 0x1

    .line 1183
    .end local v5           #setSubsModeDone:Landroid/os/Message;
    :cond_2
    return v7
.end method

.method private startNextPendingActivateRequests()Z
    .locals 12

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->printPendingActivateRequests()V

    .line 1050
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    .local v6, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v11, v6, v7

    .line 1051
    .local v11, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/msim/Subscription;

    .line 1052
    .local v9, newSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v9, :cond_0

    iget-object v0, v9, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    .line 1053
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->validateActivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/msim/MSimProxyManager;->checkAndUpdatePhoneObject(Lcom/android/internal/telephony/msim/Subscription;)V

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNextPendingActivateRequests: Activating SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1063
    new-instance v10, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;

    iget v0, v9, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v1, v9, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {v10, p0, v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/msim/SubscriptionManager;ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;)V

    .line 1065
    .local v10, setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x4

    invoke-static {p0, v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1068
    .local v5, msgSetUiccSubDone:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v1, v9, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v0, v0, v1

    iget v1, v9, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v9}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v9, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v4, v9, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 1075
    const/4 v0, 0x1

    .line 1078
    .end local v5           #msgSetUiccSubDone:Landroid/os/Message;
    .end local v9           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v10           #setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    .end local v11           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private startNextPendingDeactivateRequests()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 950
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->printPendingDeactivateRequests()V

    .line 952
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    .local v7, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v12, v7, v8

    .line 953
    .local v12, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/msim/Subscription;

    .line 954
    .local v10, newSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v10, :cond_0

    iget-object v0, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    .line 955
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->validateDeactivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 961
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNextPendingDeactivateRequests: Need to deactivating SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 962
    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v1, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    if-eqz v0, :cond_2

    .line 967
    const-string v0, "Deactivate all the data calls if there is any"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 968
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 970
    .local v6, allDataCleanedUpMsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/msim/MSimProxyManager;->disableDataConnectivity(ILandroid/os/Message;)V

    .line 972
    iput-boolean v13, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .end local v6           #allDataCleanedUpMsg:Landroid/os/Message;
    :goto_1
    move v0, v13

    .line 990
    .end local v10           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v12           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :goto_2
    return v0

    .line 974
    .restart local v10       #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .restart local v12       #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_2
    const-string v0, "startNextPendingDeactivateRequests: Deactivating now"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 975
    new-instance v11, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;

    iget v0, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v1, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {v11, p0, v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/msim/SubscriptionManager;ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;)V

    .line 977
    .local v11, setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x4

    invoke-static {p0, v0, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 980
    .local v5, msgSetUiccSubDone:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v1, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v0, v0, v1

    iget v1, v10, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v10}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v4, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    goto :goto_1

    .line 990
    .end local v5           #msgSetUiccSubDone:Landroid/os/Message;
    .end local v10           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v11           #setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    .end local v12           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateCurrentSubscription(ILcom/android/internal/telephony/msim/Subscription;Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;Ljava/lang/String;)V
    .locals 3
    .parameter "subId"
    .parameter "subscription"
    .parameter "subStatus"
    .parameter "cause"

    .prologue
    .line 1092
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .line 1094
    .local v0, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentSubscription: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1097
    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne p3, v1, :cond_1

    .line 1098
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 1104
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    iput-object p3, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1105
    if-nez p4, :cond_0

    .line 1106
    const-string p4, "NO CHANGE IN SUBSCRIPTION"

    .line 1108
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iput-object p4, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 1109
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1110
    return-void

    .line 1100
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/Subscription;->clear()V

    .line 1102
    sget-object p3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    goto :goto_0
.end method

.method private updateSubPreferences()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, activeSubCount:I
    const/4 v0, 0x0

    .line 652
    .local v0, activeSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v2

    .local v2, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .line 653
    .local v6, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_0

    .line 654
    add-int/lit8 v1, v1, 0x1

    .line 655
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 652
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 661
    .end local v6           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    if-ne v1, v10, :cond_3

    .line 662
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubPreferences: only SUB:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is Active.  Update the default/voice/sms and data subscriptions"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 664
    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setVoiceSubscription(I)V

    .line 665
    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setSMSSubscription(I)V

    .line 666
    invoke-static {v11}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 668
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubPreferences: current defaultSub = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 670
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubPreferences: current mCurrentDds = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 671
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-eq v8, v9, :cond_2

    .line 672
    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDefaultSubscription(I)V

    .line 675
    :cond_2
    iget v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-eq v8, v9, :cond_3

    .line 681
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v7, v8, v9

    .line 682
    .local v7, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 683
    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iput v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    .line 684
    const/4 v8, 0x6

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 686
    .local v3, callback:Landroid/os/Message;
    iput-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 687
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update setDataSubscription to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 688
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v8, v8, v9

    invoke-interface {v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 689
    iput-boolean v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .line 699
    .end local v3           #callback:Landroid/os/Message;
    .end local v7           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_3
    :goto_1
    return-void

    .line 693
    .restart local v7       #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_4
    iput-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .line 694
    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iput v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    goto :goto_1
.end method

.method private updateSubscriptionReadiness(IZ)V
    .locals 3
    .parameter "subId"
    .parameter "ready"

    .prologue
    .line 1113
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .line 1114
    .local v0, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionReadiness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1117
    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1123
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    goto :goto_0
.end method

.method private validateActivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 3
    .parameter "sub"

    .prologue
    .line 1031
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    iget v1, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    iget v2, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1038
    const/4 v0, 0x1

    .line 1040
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateDeactivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 3
    .parameter "sub"

    .prologue
    .line 1016
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    iget v1, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    iget v2, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1023
    const/4 v0, 0x1

    .line 1025
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActiveSubscriptionsCount()I
    .locals 8

    .prologue
    .line 1543
    const/4 v0, 0x0

    .line 1544
    .local v0, activeSubCount:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 1545
    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_0

    .line 1546
    add-int/lit8 v0, v0, 0x1

    .line 1544
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1549
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count of subs activated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    return v0
.end method

.method public getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;
    .locals 1
    .parameter "subId"

    .prologue
    .line 1142
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 270
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 272
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 273
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 274
    .local v1, subId:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE on SUB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v4, v2, v3

    .line 276
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllRadioOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    iput-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 278
    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    goto :goto_0

    .line 283
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #subId:Ljava/lang/Integer;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 284
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 285
    .restart local v1       #subId:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_ON on SUB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 290
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #subId:Ljava/lang/Integer;
    :pswitch_2
    const-string v2, "EVENT_CARD_INFO_AVAILABLE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 291
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 295
    :pswitch_3
    const-string v2, "EVENT_CARD_INFO_NOT_AVAILABLE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 296
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoNotAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 300
    :pswitch_4
    const-string v2, "EVENT_ALL_CARD_INFO_AVAILABLE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processAllCardsInfoAvailable()V

    goto :goto_0

    .line 305
    :pswitch_5
    const-string v2, "EVENT_SET_SUBSCRIPTION_MODE_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSetSubscriptionModeDone()V

    goto/16 :goto_0

    .line 310
    :pswitch_6
    const-string v2, "EVENT_SET_UICC_SUBSCRIPTION_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 311
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 315
    :pswitch_7
    const-string v2, "EVENT_SUBSCRIPTION_STATUS_CHANGED"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 316
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 320
    :pswitch_8
    const-string v2, "EVENT_CLEANUP_DATA_CONNECTION_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 321
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCleanupDataConnectionDone(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 325
    :pswitch_9
    const-string v2, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 326
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 330
    :pswitch_a
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_ALL_DATA_DISCONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processAllDataDisconnected(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSetSubscriptionInProgress()Z
    .locals 1

    .prologue
    .line 1554
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    return v0
.end method

.method public isSubActive(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 1154
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 1155
    .local v0, currentSelSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v1, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method notifyNewCardsAvailable()V
    .locals 3

    .prologue
    .line 843
    const-string v1, "notifyNewCardsAvailable"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 844
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    .local v0, setSubscriptionIntent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SetSubscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 848
    const-string v1, "NOTIFY_NEW_CARD_AVAILABLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 850
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 851
    return-void
.end method

.method public declared-synchronized registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1385
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1386
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    monitor-exit p0

    return-void

    .line 1385
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "subId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1366
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1367
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 1368
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1369
    monitor-exit v2

    .line 1370
    return-void

    .line 1369
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "subId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1346
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1347
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 1348
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1349
    monitor-exit v2

    .line 1350
    return-void

    .line 1349
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDataSubscription(ILandroid/os/Message;)V
    .locals 7
    .parameter "subscription"
    .parameter "onCompleteMsg"

    .prologue
    .line 1293
    const/4 v3, 0x0

    .line 1296
    .local v3, result:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataSubscription: mCurrentDds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new subscription = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1299
    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    if-nez v4, :cond_3

    .line 1301
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataSubscription: requested SUB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not yet activated, returning failure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1304
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "Subscription not active"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v0, exception:Ljava/lang/RuntimeException;
    :goto_0
    if-eqz p2, :cond_0

    .line 1332
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1333
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1335
    .end local v0           #exception:Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    return-void

    .line 1305
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-eq v4, p1, :cond_2

    .line 1306
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/msim/MSimProxyManager;->disableDataConnectivityFlag(I)Z

    move-result v1

    .line 1308
    .local v1, flag:Z
    iput-object p2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 1309
    iput p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    .line 1310
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 1313
    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1316
    .local v2, msgSetDataSub:Landroid/os/Message;
    const-string v4, "SubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set DDS to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Calling cmd interface setDataSubscription"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    aget-object v4, v4, v5

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    goto :goto_1

    .line 1321
    .end local v1           #flag:Z
    .end local v2           #msgSetDataSub:Landroid/os/Message;
    :cond_2
    const-string v4, "Current subscription is same as requested Subscription"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1322
    const/4 v3, 0x1

    .line 1323
    const/4 v0, 0x0

    .restart local v0       #exception:Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1326
    .end local v0           #exception:Ljava/lang/RuntimeException;
    :cond_3
    const-string v4, "DDS switch in progress. Sending false"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1327
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "DDS switch in progress"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .restart local v0       #exception:Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z
    .locals 11
    .parameter "subData"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 1229
    const/4 v5, 0x0

    .line 1235
    .local v5, ret:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v8, :cond_0

    .line 1284
    :goto_0
    return v7

    .line 1239
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v9, "NO CHANGE IN SUBSCRIPTION"

    aput-object v9, v8, v7

    .line 1240
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v8, "NO CHANGE IN SUBSCRIPTION"

    aput-object v8, v7, v10

    .line 1243
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v6, v0, v2

    .line 1248
    .local v6, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/msim/Subscription;->equals(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1249
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v7, v8, :cond_3

    .line 1250
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to deactivate current SUB :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1251
    new-instance v4, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v4}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .line 1252
    .local v4, newSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 1253
    sget-object v7, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v7, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1254
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    .end local v4           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_1
    :goto_2
    iget-object v7, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v8, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v7, v8, :cond_2

    .line 1263
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to activate new SUB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1264
    new-instance v4, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v4}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .line 1265
    .restart local v4       #newSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v7, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 1266
    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    .end local v4           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1255
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v7, v8, :cond_1

    iget-object v7, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v8, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v7, v8, :cond_1

    goto :goto_2

    .line 1271
    .end local v6           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v7, :cond_5

    .line 1272
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v1

    .line 1273
    .local v1, deactivateInProgress:Z
    if-eqz v1, :cond_7

    .line 1274
    iput-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 1280
    .end local v1           #deactivateInProgress:Z
    :cond_5
    :goto_3
    iget-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v7, :cond_6

    .line 1282
    const/4 v5, 0x1

    :cond_6
    move v7, v5

    .line 1284
    goto/16 :goto_0

    .line 1276
    .restart local v1       #deactivateInProgress:Z
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processActivateRequests()V

    goto :goto_3
.end method

.method public declared-synchronized unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1394
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    monitor-exit p0

    return-void

    .line 1394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterForSubscriptionActivated(ILandroid/os/Handler;)V
    .locals 2
    .parameter "subId"
    .parameter "h"

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 1374
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1375
    monitor-exit v1

    .line 1376
    return-void

    .line 1375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V
    .locals 2
    .parameter "subId"
    .parameter "h"

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 1354
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1355
    monitor-exit v1

    .line 1356
    return-void

    .line 1355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
