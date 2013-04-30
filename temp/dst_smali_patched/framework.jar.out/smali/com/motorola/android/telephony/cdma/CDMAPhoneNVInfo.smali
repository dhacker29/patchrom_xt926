.class public Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.super Ljava/lang/Object;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$1;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    }
.end annotation


# static fields
.field private static final CDMA_START:I = 0x2000000

.field private static final LOCAL_LOGD:Z = false

.field public static final NV_TYPE_BOOL:I = 0x1

.field public static final NV_TYPE_BYTES:I = 0x3

.field public static final NV_TYPE_INT:I = 0x0

.field public static final NV_TYPE_STRING:I = 0x2

.field public static final OEM_RIL_GENERIC_FAILURE:I = 0x5

.field public static final OEM_RIL_NAM_ACCESS_COUNTER_EXCEEDED:I = 0x4

.field public static final OEM_RIL_NAM_PASSWORD_INCORRECT:I = 0x3

.field public static final OEM_RIL_NAM_READ_WRITE_FAILURE:I = 0x2

.field public static final OEM_RIL_RADIO_NOT_AVAILABLE:I = 0x1

.field private static final OEM_RIL_REQUEST_CDMA_GET_BP_APN:I = 0x2000018

.field private static final OEM_RIL_REQUEST_CDMA_GET_RDE_ITEM:I = 0x2000016

.field private static final OEM_RIL_REQUEST_CDMA_SET_BP_APN:I = 0x2000019

.field private static final OEM_RIL_REQUEST_CDMA_SET_RDE_ITEM:I = 0x2000015

.field public static final OEM_RIL_SUCCESS:I = 0x0

.field public static final OEM_RIL_WAITING_FOR_RESPONSE:I = -0x1

.field public static final OEM_RIL_WATCHDOG_TIMEOUT:I = 0x6

.field static final SIZE_OF_BYTE:I = 0x1

.field static final SIZE_OF_NV_ITEM:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PhoneNVInfo"

.field private static mLock:[B = null

.field private static final sDefaultSpcCode:Ljava/lang/String; = "000000"

.field private static sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;


# instance fields
.field private final callbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mBoolResult:Z

.field private mBytesResult:[B

.field private mConnectedToIMS:Z

.field private mCurrentMessage:Landroid/os/Message;

.field private mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

.field private mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

.field private mIntResult:I

.field private final mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

.field private mNVType:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReqId:I

.field private mStatus:I

.field private mStringResult:Ljava/lang/String;

.field private sLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    iput v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    iput-boolean v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mConnectedToIMS:Z

    const-class v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhoneNVInfo"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    new-instance v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    invoke-direct {v1, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->start()V

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_EPMA_SUPPORTED:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_EHRPD_ENABLED:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_HDRSCP_SESSION_STATUS_I:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PHONE_CONTEXT_URI:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SIG_COMP:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_CDMA_SCAN_TIMER:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_CDMA_AKEY_HASH:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_1X_DATA_SERVICE_TRANSFER_TIMER:I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IPV6_ENABLED:I

    new-instance v1, Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    invoke-direct {v1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->connect2IMS()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$1002(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B

    return-object p1
.end method

.method static synthetic access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    return p1
.end method

.method static synthetic access$200()[B
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    return v0
.end method

.method static synthetic access$702(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIntResult:I

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBoolResult:Z

    return p1
.end method

.method static synthetic access$902(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;

    return-object p1
.end method

.method private commitIMSSession(I)I
    .locals 3
    .parameter "rst"

    .prologue
    iget-boolean v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mConnectedToIMS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    if-nez v1, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    invoke-static {}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->commitImsSettings()I

    move-result v0

    .local v0, result:I
    if-eqz v0, :cond_2

    const-string v1, "PhoneNVInfo"

    const-string v2, "Failed commiting IMS Settings."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move p1, v0

    goto :goto_0
.end method

.method private connect2IMS()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mConnectedToIMS:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    invoke-static {}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->connectToImsService()I

    move-result v0

    .local v0, result:I
    if-eqz v0, :cond_1

    const-string v1, "PhoneNVInfo"

    const-string v2, "Failed connect to IMS service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #result:I
    :cond_0
    :goto_0
    return-void

    .restart local v0       #result:I
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mConnectedToIMS:Z

    goto :goto_0
.end method

.method private getImsEmpaSupported()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return v1
.end method

.method private getImsHomeDomain()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eImsDomain:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->getImsString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getImsPcscfPort()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePcscfIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->getImsString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getImsPhoneContextURI()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePhoneContextUri:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->getImsString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getImsSigComp()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSigComp:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->getImsInt(I)I

    move-result v0

    .local v0, result:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getImsSmsFormat()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v3, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSmsFormat:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->getImsInt(I)I

    move-result v0

    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private getImsSmsOverIP()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSmsOverIp:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->getImsInt(I)I

    move-result v0

    .local v0, result:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getImsT1Timer()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerT1:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->getImsInt(I)I

    move-result v0

    goto :goto_0
.end method

.method private getImsT2Timer()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerT2:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->getImsInt(I)I

    move-result v0

    goto :goto_0
.end method

.method private getImsTestMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eImsTestMode:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->getImsInt(I)I

    move-result v0

    .local v0, result:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getImsTfTimer()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v0, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerF:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->getImsInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/telephony/Phone;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .locals 2
    .parameter "phone"

    .prologue
    const-class v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "msg"

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    return-void
.end method

.method private removeCallback(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, callbackCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;

    iget-object v2, v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #callbackCount:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setImsHomeDomain(Ljava/lang/String;)I
    .locals 2
    .parameter "domain"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v1, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eImsDomain:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v1

    invoke-static {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->setImsString(ILjava/lang/String;)I

    move-result v0

    .local v0, result:I
    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->commitIMSSession(I)I

    move-result v1

    goto :goto_0
.end method

.method private setImsPcscfPort(Ljava/lang/String;)I
    .locals 2
    .parameter "port"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v1, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ePcscfIpPort:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v1

    invoke-static {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->setImsString(ILjava/lang/String;)I

    move-result v0

    .local v0, result:I
    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->commitIMSSession(I)I

    move-result v1

    goto :goto_0
.end method

.method private setImsSmsFormat(Z)I
    .locals 3
    .parameter "format"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    .local v1, smsFormat:I
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSmsFormat:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v2

    invoke-static {v2, v1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->setImsInt(II)I

    move-result v0

    .local v0, result:I
    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->commitIMSSession(I)I

    move-result v2

    goto :goto_0
.end method

.method private setImsSmsOverIP(Z)I
    .locals 3
    .parameter "on"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    .local v1, smsOverIp:I
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eSmsOverIp:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v2

    invoke-static {v2, v1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->setImsInt(II)I

    move-result v0

    .local v0, result:I
    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->commitIMSSession(I)I

    move-result v2

    goto :goto_0
.end method

.method private setImsT1Timer(I)I
    .locals 2
    .parameter "t1"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v1, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerT1:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v1

    invoke-static {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->setImsInt(II)I

    move-result v0

    .local v0, result:I
    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->commitIMSSession(I)I

    move-result v1

    goto :goto_0
.end method

.method private setImsT2Timer(I)I
    .locals 2
    .parameter "t2"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v1, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerT2:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v1

    invoke-static {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->setImsInt(II)I

    move-result v0

    .local v0, result:I
    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->commitIMSSession(I)I

    move-result v1

    goto :goto_0
.end method

.method private setImsTestMode(Z)I
    .locals 3
    .parameter "enabled"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    .local v1, testMode:I
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v2, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eImsTestMode:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v2

    invoke-static {v2, v1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->setImsInt(II)I

    move-result v0

    .local v0, result:I
    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->commitIMSSession(I)I

    move-result v2

    goto :goto_0
.end method

.method private setImsTfTimer(I)I
    .locals 2
    .parameter "tf"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->startIMSSession()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    sget-object v1, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->eTimerF:Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni$enumImsType;->ordinal()I

    move-result v1

    invoke-static {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->setImsInt(II)I

    move-result v0

    .local v0, result:I
    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->commitIMSSession(I)I

    move-result v1

    goto :goto_0
.end method

.method private startIMSSession()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mConnectedToIMS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMS:Lcom/motorola/android/internal/telephony/ImsSettingsJni;

    invoke-static {}, Lcom/motorola/android/internal/telephony/ImsSettingsJni;->startImsSession()I

    move-result v0

    .local v0, result:I
    if-eqz v0, :cond_2

    const-string v2, "PhoneNVInfo"

    const-string v3, "Failed to start IMS session."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getModemAPN()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, -0x1

    monitor-enter p0

    :try_start_0
    const-string v5, "PhoneNVInfo"

    const-string v6, "getModemAPN() start."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000018

    invoke-virtual {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .local v4, msg:Landroid/os/Message;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, commandlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "CDMAQAPNEFS "

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "AT+APNE?"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, array_size:I
    new-array v1, v0, [Ljava/lang/String;

    .local v1, command:[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v5, -0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    iput-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v1, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v5, v7, :cond_0

    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v3

    .local v3, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v3           #iex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getModemAPN() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v5

    .end local v0           #array_size:I
    .end local v1           #command:[Ljava/lang/String;
    .end local v2           #commandlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #msg:Landroid/os/Message;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoBoolean(I)Z
    .locals 8
    .parameter "id"

    .prologue
    monitor-enter p0

    :try_start_0
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SIG_COMP:I

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getImsSigComp()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    if-ne p1, v5, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getImsTestMode()Z

    move-result v1

    goto :goto_0

    :cond_2
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_EPMA_SUPPORTED:I

    if-ne p1, v5, :cond_3

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getImsEmpaSupported()Z

    move-result v1

    goto :goto_0

    :cond_3
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    if-ne p1, v5, :cond_4

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getImsSmsFormat()Z

    move-result v1

    goto :goto_0

    :cond_4
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    if-ne p1, v5, :cond_5

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getImsSmsOverIP()Z

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    const/4 v1, 0x0

    .local v1, mValue:Z
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_1
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_1

    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_6
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_0

    iget-boolean v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBoolResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .end local v1           #mValue:Z
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoBytes(I)[B
    .locals 8
    .parameter "id"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    const/4 v1, 0x0

    .local v1, mValue:[B
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_1

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    monitor-exit p0

    return-object v1

    .end local v1           #mValue:[B
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoInt(I)I
    .locals 8
    .parameter "id"

    .prologue
    monitor-enter p0

    :try_start_0
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getImsT1Timer()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    if-ne p1, v5, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getImsT2Timer()I

    move-result v1

    goto :goto_0

    :cond_2
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    if-ne p1, v5, :cond_3

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getImsTfTimer()I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    const/4 v5, 0x0

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    const/4 v1, -0x1

    .local v1, mValue:I
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_1
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_1

    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_4
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_0

    iget v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIntResult:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .end local v1           #mValue:I
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoString(I)Ljava/lang/String;
    .locals 8
    .parameter "id"

    .prologue
    monitor-enter p0

    :try_start_0
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PHONE_CONTEXT_URI:I

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getImsPhoneContextURI()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    if-ne p1, v5, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getImsHomeDomain()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    if-ne p1, v5, :cond_3

    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getImsPcscfPort()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    const/4 v1, 0x0

    .local v1, mValue:Ljava/lang/String;
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_1
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_1

    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_4
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .end local v1           #mValue:Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 7
    .parameter "cb"

    .prologue
    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v6

    const/4 v3, 0x0

    .local v3, r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, b:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .local v4, r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3       #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_2
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v4       #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v4           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3       #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_4
    iput-object v1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    iput-object p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v3           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v4       #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3       #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    goto :goto_2
.end method

.method public declared-synchronized setModemAPN(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "apn_str"

    .prologue
    const/4 v8, -0x1

    monitor-enter p0

    :try_start_0
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setModemAPN() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000019

    invoke-virtual {v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .local v4, msg:Landroid/os/Message;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, commandlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "CDMAEDITAPN "

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "AT+APNE="

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, array_size:I
    new-array v1, v0, [Ljava/lang/String;

    .local v1, command:[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v5, -0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    iput-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v1, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v5, v8, :cond_1

    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v3

    .local v3, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v3           #iex:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_4
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setModemAPN() End: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v5

    .end local v0           #array_size:I
    .end local v1           #command:[Ljava/lang/String;
    .end local v2           #commandlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #msg:Landroid/os/Message;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPhoneNVInfo(II)I
    .locals 11
    .parameter "id"
    .parameter "value"

    .prologue
    monitor-enter p0

    :try_start_0
    sget v8, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    if-ne p1, v8, :cond_0

    invoke-direct {p0, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setImsT1Timer(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v8

    :goto_0
    monitor-exit p0

    return v8

    :cond_0
    :try_start_1
    sget v8, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    if-ne p1, v8, :cond_1

    invoke-direct {p0, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setImsT2Timer(I)I

    move-result v8

    goto :goto_0

    :cond_1
    sget v8, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    if-ne p1, v8, :cond_2

    invoke-direct {p0, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setImsTfTimer(I)I

    move-result v8

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v9, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v5, r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_3
    iget-object v8, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    invoke-interface {v8, p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->valueChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_4
    iget-object v8, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    invoke-interface {v8}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->removeCallback(Landroid/os/IBinder;)V

    goto :goto_2

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v5           #r:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v3           #msg:Landroid/os/Message;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .restart local v1       #i:I
    .restart local v3       #msg:Landroid/os/Message;
    :cond_3
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v8, 0x0

    :try_start_7
    iput v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    new-instance v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .local v6, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .local v4, obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v4, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    new-instance v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v8, 0x2000015

    const-string v9, "000000"

    invoke-direct {v7, v6, v8, v9}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .local v7, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_3
    iget v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    :try_start_8
    sget-object v9, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    sget-object v8, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    monitor-exit v9

    goto :goto_3

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v2

    .local v2, iex:Ljava/lang/InterruptedException;
    goto :goto_3

    .end local v2           #iex:Ljava/lang/InterruptedException;
    :cond_4
    :try_start_b
    iget v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0
.end method

.method public declared-synchronized setPhoneNVInfo(ILjava/lang/String;)I
    .locals 8
    .parameter "id"
    .parameter "value"

    .prologue
    monitor-enter p0

    :try_start_0
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    if-ne p1, v5, :cond_0

    invoke-direct {p0, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setImsHomeDomain(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    :goto_0
    monitor-exit p0

    return v5

    :cond_0
    :try_start_1
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    if-ne p1, v5, :cond_1

    invoke-direct {p0, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setImsPcscfPort(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/String;)V

    .local v2, obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000015

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_1
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_1

    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_2
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPhoneNVInfo(IZ)I
    .locals 8
    .parameter "id"
    .parameter "value"

    .prologue
    monitor-enter p0

    :try_start_0
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    if-ne p1, v5, :cond_0

    invoke-direct {p0, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setImsTestMode(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    :goto_0
    monitor-exit p0

    return v5

    :cond_0
    :try_start_1
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    if-ne p1, v5, :cond_1

    invoke-direct {p0, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setImsSmsFormat(Z)I

    move-result v5

    goto :goto_0

    :cond_1
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    if-ne p1, v5, :cond_2

    invoke-direct {p0, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setImsSmsOverIP(Z)I

    move-result v5

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Z)V

    .local v2, obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000015

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_1
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_1

    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_3
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPhoneNVInfo(I[B)I
    .locals 8
    .parameter "id"
    .parameter "value"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .local v3, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>([B)V

    .local v2, obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000015

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .local v4, req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .local v0, iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v5

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v3           #rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4           #req:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .parameter "cb"

    .prologue
    invoke-interface {p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->removeCallback(Landroid/os/IBinder;)V

    return-void
.end method
