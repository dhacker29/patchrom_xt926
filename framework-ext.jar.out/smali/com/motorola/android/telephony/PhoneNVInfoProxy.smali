.class public Lcom/motorola/android/telephony/PhoneNVInfoProxy;
.super Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;
.source "PhoneNVInfoProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneNVInfoProxy"

.field private static sInstance:Lcom/motorola/android/telephony/PhoneNVInfoProxy;


# instance fields
.field private mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->sInstance:Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    return-void
.end method

.method private constructor <init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)V
    .locals 1
    .parameter "phoneNVInfo"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .line 63
    const-string v0, "iphonenvinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "iphonenvinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 66
    :cond_0
    return-void
.end method

.method private getTimerFromBuffer(I)I
    .locals 6
    .parameter "id"

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, timer:I
    iget-object v3, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBytes(I)[B

    move-result-object v1

    .line 222
    .local v1, fullData:[B
    if-nez v1, :cond_0

    .line 223
    const/4 v3, -0x1

    .line 231
    :goto_0
    return v3

    .line 226
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 227
    .local v0, buf:Ljava/nio/ByteBuffer;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 229
    const-string v3, "PhoneNVInfoProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getTimer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 231
    goto :goto_0
.end method

.method public static init(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Lcom/motorola/android/telephony/PhoneNVInfoProxy;
    .locals 3
    .parameter "phoneNVInfo"

    .prologue
    .line 49
    const-class v1, Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->sInstance:Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)V

    sput-object v0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->sInstance:Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    .line 55
    :goto_0
    sget-object v0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->sInstance:Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    monitor-exit v1

    return-object v0

    .line 53
    :cond_0
    const-string v0, "PhoneNVInfoProxy"

    const-string v2, "init() called multiple times"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTimerToBuffer(II)I
    .locals 6
    .parameter "id"
    .parameter "timer"

    .prologue
    .line 235
    const-string v3, "PhoneNVInfoProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " setTimer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v3, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBytes(I)[B

    move-result-object v2

    .line 238
    .local v2, fullData:[B
    if-nez v2, :cond_0

    .line 239
    const/4 v3, 0x5

    .line 246
    :goto_0
    return v3

    .line 242
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    .local v0, buf:Ljava/nio/ByteBuffer;
    const/16 v3, 0x8

    invoke-virtual {v0, v3, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 244
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 246
    .local v1, data:[B
    iget-object v3, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v3, p1, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(I[B)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public get1XDataServiceTransferTimer()I
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_1X_DATA_SERVICE_TRANSFER_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getCDMAAkeyHashValue()[B
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_CDMA_AKEY_HASH:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getEHRPDStatus()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_EHRPD_ENABLED:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getHDRSCPSessionStatus()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_HDRSCP_SESSION_STATUS_I:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getIPV6Enable()Z
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IPV6_ENABLED:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsCdmaScanTimer()I
    .locals 1

    .prologue
    .line 258
    sget v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_CDMA_SCAN_TIMER:I

    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->getTimerFromBuffer(I)I

    move-result v0

    return v0
.end method

.method public getImsEmpaSupported()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_EPMA_SUPPORTED:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsHomeDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsMultimodeScanTimer()I
    .locals 1

    .prologue
    .line 250
    sget v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->getTimerFromBuffer(I)I

    move-result v0

    return v0
.end method

.method public getImsPcscfPort()I
    .locals 4

    .prologue
    .line 98
    iget-object v2, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    invoke-virtual {v2, v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, port:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 103
    :goto_0
    return v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getImsPhoneContextURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PHONE_CONTEXT_URI:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsSigComp()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SIG_COMP:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsSmsFormat()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsSmsOverIP()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsT1Timer()I
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsT2Timer()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsTestMode()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsTfTimer()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getModemAPN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getModemAPN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .parameter "ob"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    .line 268
    return-void
.end method

.method public set1XDataServiceTransferTimer(I)I
    .locals 2
    .parameter "timer"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_1X_DATA_SERVICE_TRANSFER_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setEHRPDStatus(I)I
    .locals 2
    .parameter "status"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_EHRPD_ENABLED:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setHDRSCPSessionStatus(I)I
    .locals 2
    .parameter "status"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_HDRSCP_SESSION_STATUS_I:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setIPV6Enable(Z)I
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IPV6_ENABLED:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsCdmaScanTimer(I)I
    .locals 1
    .parameter "cdma"

    .prologue
    .line 262
    sget v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_CDMA_SCAN_TIMER:I

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->setTimerToBuffer(II)I

    move-result v0

    return v0
.end method

.method public setImsHomeDomain(Ljava/lang/String;)I
    .locals 2
    .parameter "domain"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setImsMultimodeScanTimer(I)I
    .locals 1
    .parameter "mm"

    .prologue
    .line 254
    sget v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->setTimerToBuffer(II)I

    move-result v0

    return v0
.end method

.method public setImsPcscfPort(I)I
    .locals 3
    .parameter "port"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setImsSmsFormat(Z)I
    .locals 2
    .parameter "format"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsSmsOverIP(Z)I
    .locals 2
    .parameter "on"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsT1Timer(I)I
    .locals 2
    .parameter "t1"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsT2Timer(I)I
    .locals 2
    .parameter "t2"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsTestMode(Z)I
    .locals 2
    .parameter "enabled"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsTfTimer(I)I
    .locals 2
    .parameter "tf"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setModemAPN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apn_str"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setModemAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .parameter "ob"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    .line 272
    return-void
.end method
