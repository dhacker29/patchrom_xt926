.class public Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
.super Ljava/lang/Object;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OEM_RIL_RDE_Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    }
.end annotation


# static fields
.field public static MOT_NV_1X_DATA_SERVICE_TRANSFER_TIMER:I

.field public static MOT_NV_CDMA_AKEY_HASH:I

.field public static MOT_NV_IMS_CDMA_SCAN_TIMER:I

.field public static MOT_NV_IMS_EPMA_SUPPORTED:I

.field public static MOT_NV_IMS_HOME_DOMAIN:I

.field public static MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

.field public static MOT_NV_IMS_PCSCF_PORT:I

.field public static MOT_NV_IMS_PHONE_CONTEXT_URI:I

.field public static MOT_NV_IMS_SIG_COMP:I

.field public static MOT_NV_IMS_SMS_FORMAT:I

.field public static MOT_NV_IMS_SMS_OVER_IP:I

.field public static MOT_NV_IMS_T1_TIMER:I

.field public static MOT_NV_IMS_T2_TIMER:I

.field public static MOT_NV_IMS_TEST_MODE:I

.field public static MOT_NV_IMS_TF_TIMER:I

.field public static MOT_NV_IPV6_ENABLED:I

.field public static RDE_NV_EHRPD_ENABLED:I

.field public static RDE_NV_HDRSCP_SESSION_STATUS_I:I


# instance fields
.field public dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

.field public elementID:I

.field public length:I

.field public offset:I

.field public recordNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_EPMA_SUPPORTED:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_EHRPD_ENABLED:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_HDRSCP_SESSION_STATUS_I:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PHONE_CONTEXT_URI:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SIG_COMP:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_CDMA_SCAN_TIMER:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_CDMA_AKEY_HASH:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_1X_DATA_SERVICE_TRANSFER_TIMER:I

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IPV6_ENABLED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    iput v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->recordNum:I

    iput v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->offset:I

    iput v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->length:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .locals 5
    .parameter "buf"

    .prologue
    new-instance v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .local v1, rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->recordNum:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->offset:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->length:I

    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>()V

    .local v2, rde_obj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iget v3, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->length:I

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->length:I

    if-ge v0, v3, :cond_0

    iget-object v3, v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    return-object v1
.end method


# virtual methods
.method public SIZE()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit16 v0, v0, 0x80

    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->size()I

    move-result v0

    goto :goto_0
.end method

.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buf"

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->recordNum:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->offset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v1, "\n"

    .local v1, sep:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "elementID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->recordNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object=\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
