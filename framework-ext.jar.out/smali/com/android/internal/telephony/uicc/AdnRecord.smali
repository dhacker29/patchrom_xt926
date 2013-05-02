.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field private static final ADN_MAX_NUMBER_BYTES:I = 0xa

.field static final ADN_TON_AND_NPI:I = 0x1

.field private static final ANR_MAX_NUMBER_BYTES:I = 0xa

.field private static final ANR_NUMBER_EXT1_OFFSET:I = 0xe

.field private static final ANR_NUMBER_LENGTH_OFFSET:I = 0x1

.field private static final ANR_NUMBER_OFFSET:I = 0x2

.field private static final ANR_TON_OFFSET:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field public static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field adnExtNumber:Ljava/lang/String;

.field alphaTag:Ljava/lang/String;

.field anr:Ljava/lang/String;

.field anrExtNumber:Ljava/lang/String;

.field anrExtRecord:I

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field number:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/16 v1, 0xff

    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->adnExtNumber:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtNumber:Ljava/lang/String;

    .line 151
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 152
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 153
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 156
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/16 v1, 0xff

    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->adnExtNumber:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtNumber:Ljava/lang/String;

    .line 130
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 131
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 132
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 133
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 134
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "number2"

    .prologue
    const/16 v1, 0xff

    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->adnExtNumber:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtNumber:Ljava/lang/String;

    .line 142
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 143
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 144
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 147
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/16 v1, 0xff

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->adnExtNumber:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtNumber:Ljava/lang/String;

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 117
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 118
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 126
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "number2"

    .prologue
    const/4 v1, 0x0

    .line 138
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 113
    return-void
.end method

.method private isAscii(Ljava/lang/String;)Z
    .locals 3
    .parameter "string"

    .prologue
    .line 517
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 518
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    .line 519
    const/4 v1, 0x0

    .line 522
    :goto_1
    return v1

    .line 517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isEmptyStringArray([Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 212
    if-nez p0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    if-ne v2, v0, :cond_2

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 218
    goto :goto_0
.end method

.method public static parseExt1([B)Ljava/lang/String;
    .locals 6
    .parameter "extRecord"

    .prologue
    const/4 v5, 0x2

    .line 525
    const-string v1, ""

    .line 527
    .local v1, nu:Ljava/lang/String;
    :try_start_0
    array-length v3, p0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    move-object v2, v1

    .line 547
    .end local v1           #nu:Ljava/lang/String;
    .local v2, nu:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 531
    .end local v2           #nu:Ljava/lang/String;
    .restart local v1       #nu:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3

    if-eq v3, v5, :cond_1

    move-object v2, v1

    .line 534
    .end local v1           #nu:Ljava/lang/String;
    .restart local v2       #nu:Ljava/lang/String;
    goto :goto_0

    .line 537
    .end local v2           #nu:Ljava/lang/String;
    .restart local v1       #nu:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa

    if-le v3, v4, :cond_2

    move-object v2, v1

    .line 539
    .end local v1           #nu:Ljava/lang/String;
    .restart local v2       #nu:Ljava/lang/String;
    goto :goto_0

    .line 541
    .end local v2           #nu:Ljava/lang/String;
    .restart local v1       #nu:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {p0, v3, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 547
    .end local v1           #nu:Ljava/lang/String;
    .restart local v2       #nu:Ljava/lang/String;
    goto :goto_0

    .line 544
    .end local v2           #nu:Ljava/lang/String;
    .restart local v1       #nu:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing error in  ext record"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 431
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 434
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 436
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 438
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 440
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 465
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 451
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 455
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 457
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 460
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 462
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 463
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringArrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 221
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmptyStringArray([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmptyStringArray([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 197
    if-ne p0, p1, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    .line 200
    :cond_0
    if-nez p0, :cond_1

    .line 201
    const-string p0, ""

    .line 203
    :cond_1
    if-nez p1, :cond_2

    .line 204
    const-string p1, ""

    .line 206
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 399
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 408
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 11
    .parameter "recordSize"

    .prologue
    const/16 v10, 0x14

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, adnString:[B
    add-int/lit8 v3, p1, -0xe

    .line 331
    .local v3, footerOffset:I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmptyStringArray([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 333
    const-string v6, "GSM"

    const-string v7, "[buildAdnString] Empty number"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-array v0, p1, [B

    .line 335
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_2

    .line 336
    aput-byte v8, v0, v4

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 339
    .end local v4           #i:I
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_3

    .line 340
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_2
    :goto_1
    return-object v0

    .line 344
    :cond_3
    new-array v0, p1, [B

    .line 345
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, p1, :cond_4

    .line 346
    aput-byte v8, v0, v4

    .line 345
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 351
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    if-nez v6, :cond_8

    const-string v5, ""

    .line 353
    .local v5, sub:Ljava/lang/String;
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_5

    .line 355
    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 358
    :cond_5
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 360
    .local v1, bcdNumber:[B
    if-eqz v1, :cond_6

    .line 361
    add-int/lit8 v6, v3, 0x1

    array-length v7, v1

    invoke-static {v1, v9, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    :cond_6
    if-eqz v1, :cond_7

    .line 366
    add-int/lit8 v6, v3, 0x0

    array-length v7, v1

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 370
    :cond_7
    add-int/lit8 v6, v3, 0xc

    aput-byte v8, v0, v6

    .line 372
    add-int/lit8 v6, v3, 0xd

    iget v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 377
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 382
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/android/internal/telephony/GsmAlphabet;->encodeAlphaTag(Ljava/lang/String;I)[B

    move-result-object v2

    .line 383
    .local v2, byteTag:[B
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADN byte "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    array-length v6, v2

    invoke-static {v2, v9, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 351
    .end local v1           #bcdNumber:[B
    .end local v2           #byteTag:[B
    .end local v5           #sub:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    goto :goto_3
.end method

.method public buildAnrString(Ljava/lang/String;I)[B
    .locals 7
    .parameter "number"
    .parameter "anrRecLen"

    .prologue
    const/16 v5, 0x14

    const/4 v6, 0x0

    .line 267
    new-array v1, p2, [B

    .line 268
    .local v1, data:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 269
    const/4 v4, -0x1

    aput-byte v4, v1, v2

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_0
    const/16 v3, 0xff

    .line 272
    .local v3, length:I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 274
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 276
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 279
    .local v0, bcdNumber:[B
    const/4 v4, 0x2

    array-length v5, v0

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    array-length v3, v0

    .line 283
    .end local v0           #bcdNumber:[B
    :cond_2
    const/4 v4, 0x1

    int-to-byte v5, v3

    aput-byte v5, v1, v4

    .line 284
    const/16 v4, 0xe

    iget v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 285
    return-object v1
.end method

.method public buildEmailString(Ljava/lang/String;IZ)[B
    .locals 4
    .parameter "email"
    .parameter "emailRecLen"
    .parameter "isEmailFiletype2"

    .prologue
    .line 291
    new-array v0, p2, [B

    .line 292
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 293
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_0
    const/16 v2, 0xff

    .line 297
    .local v2, length:I
    if-eqz p3, :cond_2

    .line 299
    add-int/lit8 v2, p2, -0x2

    .line 306
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 307
    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 310
    :cond_1
    return-object v0

    .line 303
    :cond_2
    move v2, p2

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public getANR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    return-object v0
.end method

.method public getAdnExtNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->adnExtNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrExtNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrExtRecord()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    return v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtRecord()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmptyStringArray([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringArrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqualExceptEmail(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setANR(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setAdnExtNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "adn"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->adnExtNumber:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public setAnrExtNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtNumber:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setAnrExtRecord(I)V
    .locals 0
    .parameter "ext"

    .prologue
    .line 503
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 504
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setExtRecord(I)V
    .locals 0
    .parameter "ext"

    .prologue
    .line 513
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 514
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setRecordNumber(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 170
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 250
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    return-void
.end method
