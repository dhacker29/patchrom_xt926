.class public Lcom/motorola/android/systemui/statusbar/MotoSystemUIUtils;
.super Ljava/lang/Object;
.source "MotoSystemUIUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MotoSystemUIUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isEVDOOnFemto(Ljava/lang/String;)Z
    .locals 10
    .parameter "str"

    .prologue
    const/16 v9, 0xc

    const/4 v5, 0x0

    .line 25
    const/16 v0, 0xc

    .line 26
    .local v0, FEMTO_SUBNET_INDEX:I
    const/16 v1, 0xc

    .line 28
    .local v1, FEMTO_SUBNET_MASK:I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, index:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 41
    .end local v2           #index:I
    :cond_0
    :goto_0
    return v5

    .line 32
    .restart local v2       #index:I
    :cond_1
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 33
    .local v3, length:I
    const/4 v4, 0x0

    .line 34
    .local v4, subnet_value:I
    const/16 v6, 0x31

    if-le v3, v6, :cond_0

    mul-int/lit8 v6, v2, 0x4

    if-gt v3, v6, :cond_0

    .line 35
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    .line 36
    const-string v6, "MotoSystemUIUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Subnet info in bit 48 and 49 is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    and-int/lit8 v6, v4, 0xc

    if-ne v6, v9, :cond_0

    .line 38
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static isEvdo(ILandroid/telephony/ServiceState;)Z
    .locals 1
    .parameter "radioTech"
    .parameter "state"

    .prologue
    .line 45
    if-eqz p1, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateCdmaFemtoIcon(Landroid/telephony/ServiceState;)Z
    .locals 6
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    const/16 v1, 0xfa

    .line 58
    .local v1, FEMTO_NID_MIN:I
    const/16 v0, 0xff

    .line 59
    .local v0, FEMTO_NID_MAX:I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 74
    :goto_0
    return v2

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    invoke-static {v4, p0}, Lcom/motorola/android/systemui/statusbar/MotoSystemUIUtils;->isEvdo(ILandroid/telephony/ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getSubnetInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getSubnetInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/android/systemui/statusbar/MotoSystemUIUtils;->isEVDOOnFemto(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 65
    const-string v3, "MotoSystemUIUtils"

    const-string v4, "EVDO on Network Extender"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v4

    const/16 v5, 0xfa

    if-lt v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v4

    const/16 v5, 0xff

    if-ge v4, v5, :cond_3

    .line 70
    const-string v3, "MotoSystemUIUtils"

    const-string v4, "1x on Network Extender"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_3
    const-string v2, "MotoSystemUIUtils"

    const-string v4, "Not on network extender"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 74
    goto :goto_0
.end method
