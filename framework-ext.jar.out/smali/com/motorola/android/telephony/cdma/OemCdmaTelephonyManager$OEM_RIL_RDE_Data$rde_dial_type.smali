.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"

# interfaces
.implements Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rde_dial_type"
.end annotation


# static fields
.field public static final NV_EMERGENCY_SD_NUM:I = 0x3

.field public static final NV_MAX_DIAL_DIGITS:I = 0x20

.field public static final NV_MAX_LTRS:I = 0xc


# instance fields
.field public address:B

.field private digits:[B

.field private letters:[B

.field private num_digits:B

.field public status:B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 943
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->address:B

    .line 945
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->status:B

    .line 946
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->num_digits:B

    .line 947
    const/16 v1, 0x20

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    .line 948
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    aput-byte v2, v1, v0

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 952
    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->letters:[B

    .line 953
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->letters:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 954
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->letters:[B

    aput-byte v2, v1, v0

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 956
    :cond_1
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;
    .locals 4
    .parameter "buf"

    .prologue
    const/16 v3, 0x20

    .line 1003
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;-><init>()V

    .line 1005
    .local v0, dt:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->address:B

    .line 1006
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->status:B

    .line 1007
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->num_digits:B

    .line 1009
    iget-byte v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->num_digits:B

    if-le v2, v3, :cond_0

    .line 1010
    iput-byte v3, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->num_digits:B

    .line 1013
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1014
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 1013
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1015
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->letters:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1016
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->letters:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 1015
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1018
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 988
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->num_digits:B

    if-ge v0, v2, :cond_0

    .line 989
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 988
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 991
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buf"

    .prologue
    .line 995
    iget-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->address:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 996
    iget-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->status:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 997
    iget-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->num_digits:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 998
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 999
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->letters:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1000
    return-void
.end method

.method public setNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 971
    iput-byte v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->num_digits:B

    .line 973
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 974
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 973
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    aput-byte v3, v1, v0

    goto :goto_1

    .line 981
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_2
    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->num_digits:B

    .line 983
    const/4 v1, 0x1

    return v1

    .line 981
    :cond_2
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    array-length v1, v1

    goto :goto_2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->digits:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->letters:[B

    array-length v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 959
    const-string v1, "\n"

    .line 960
    .local v1, sep:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 962
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->address:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->status:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_digits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->num_digits:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "digits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
