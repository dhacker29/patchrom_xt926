.class public abstract Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;
.super Ljava/lang/Object;
.source "NumberHandleForAssistedDialing.java"


# static fields
.field public static final CUR_COUNTRY_CODE:Ljava/lang/String; = "cur_country_code"

.field public static final CUR_COUNTRY_IDD:Ljava/lang/String; = "cur_country_idd"

.field public static final CUR_COUNTRY_MCC:Ljava/lang/String; = "cur_country_mcc"

.field public static final CUR_COUNTRY_NDD:Ljava/lang/String; = "cur_country_ndd"

.field public static final CUR_COUNTRY_UPDATED_BY_USER:Ljava/lang/String; = "cur_country_updated_by_user"

.field private static final DBG:Z = false

.field public static final REF_COUNTRY_AREA_CODE:Ljava/lang/String; = "ref_country_area_code"

.field public static final REF_COUNTRY_CODE:Ljava/lang/String; = "ref_country_code"

.field public static final REF_COUNTRY_IDD:Ljava/lang/String; = "ref_country_idd"

.field public static final REF_COUNTRY_MCC:Ljava/lang/String; = "ref_country_mcc"

.field public static final REF_COUNTRY_NDD:Ljava/lang/String; = "ref_country_ndd"

.field public static final US_CC:Ljava/lang/String; = "1"

.field public static final US_IDD:Ljava/lang/String; = "011"

.field public static final US_NDD:Ljava/lang/String; = "1"

.field protected static mDisableVZWSpecificADRules:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected cr:Landroid/content/ContentResolver;

.field protected isoCountryName:Ljava/lang/String;

.field protected mCurrentMcc:I

.field protected mMccTable:Lcom/motorola/android/telephony/MCCTables;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "NumberHandleForAssistedDialing"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    iput v3, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    const-string v1, ""

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    new-instance v1, Lcom/motorola/android/telephony/MCCTables;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v3, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    goto :goto_0
.end method


# virtual methods
.method protected checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"
    .parameter "otaIdd"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v0           #c:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method protected concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "ndd"
    .parameter "sourceNumber"
    .parameter "mcc"

    .prologue
    packed-switch p3, :pswitch_data_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, retString:Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0           #retString:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .restart local v0       #retString:Ljava/lang/String;
    goto :goto_0

    .end local v0           #retString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const-string v1, "10"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #retString:Ljava/lang/String;
    goto :goto_0

    .end local v0           #retString:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p2

    .restart local v0       #retString:Ljava/lang/String;
    goto :goto_0

    .end local v0           #retString:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #retString:Ljava/lang/String;
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_0
    .end packed-switch
.end method

.method protected getAreaCode(I)Ljava/lang/String;
    .locals 3
    .parameter "refMcc"

    .prologue
    const-string v1, ""

    .local v1, retString:Ljava/lang/String;
    const/4 v0, -0x1

    .local v0, areaCodeLength:I
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNANPMCC(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v2, v1}, Lcom/motorola/android/telephony/MCCTables;->formatNANPMDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_2
.end method

.method public getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "sourceNumber"
    .parameter "byWhom"

    .prologue
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getPostDialFirstIndex(Ljava/lang/String;)I

    move-result v2

    .local v2, postDialFirstIndex:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    move-object v1, p1

    .local v1, manipulatingNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, postDialNumber:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_3

    :cond_0
    const/4 v0, 0x0

    .local v0, manipulatedNumber:Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_4

    const/4 v0, 0x0

    .end local v0           #manipulatedNumber:Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v0

    .end local v1           #manipulatingNumber:Ljava/lang/String;
    .end local v3           #postDialNumber:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #manipulatingNumber:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #postDialNumber:Ljava/lang/String;
    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getManipulatedNumberWithoutPostDial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #manipulatedNumber:Ljava/lang/String;
    goto :goto_1

    :cond_4
    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method protected abstract getManipulatedNumberWithoutPostDial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected getPostDialFirstIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "phoneNumber"

    .prologue
    const/4 v2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected hasPlusCode(Ljava/lang/String;)Z
    .locals 6
    .parameter "phoneNumber"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method protected hasSpecialChar(Ljava/lang/String;)Z
    .locals 6
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_4

    :cond_3
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:C
    :cond_5
    move v3, v4

    goto :goto_0
.end method

.method protected isNANPMCC(I)Z
    .locals 1
    .parameter "refMcc"

    .prologue
    const/4 v0, 0x0

    .local v0, ret:Z
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x12e -> :sswitch_0
        0x136 -> :sswitch_0
        0x137 -> :sswitch_0
        0x138 -> :sswitch_0
        0x139 -> :sswitch_0
        0x13a -> :sswitch_0
        0x13b -> :sswitch_0
        0x13c -> :sswitch_0
        0x14a -> :sswitch_0
        0x14c -> :sswitch_0
        0x152 -> :sswitch_0
        0x156 -> :sswitch_0
        0x158 -> :sswitch_0
        0x15a -> :sswitch_0
        0x15c -> :sswitch_0
        0x15e -> :sswitch_0
        0x160 -> :sswitch_0
        0x162 -> :sswitch_0
        0x164 -> :sswitch_0
        0x166 -> :sswitch_0
        0x168 -> :sswitch_0
        0x16c -> :sswitch_0
        0x16d -> :sswitch_0
        0x16e -> :sswitch_0
        0x172 -> :sswitch_0
        0x176 -> :sswitch_0
        0x178 -> :sswitch_0
        0x216 -> :sswitch_0
        0x217 -> :sswitch_0
        0x220 -> :sswitch_0
    .end sparse-switch
.end method

.method protected isValidCountryCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryCode"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isValidIDD(Ljava/lang/String;)Z
    .locals 1
    .parameter "idd"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidIDD(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isValidLocalNumber(ILjava/lang/String;)Z
    .locals 4
    .parameter "refMcc"
    .parameter "sourceNumber"

    .prologue
    const/4 v3, 0x7

    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, numberLength:I
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNANPMCC(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    if-eq v0, v3, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_0
    .end packed-switch
.end method

.method protected isValidLongNumber(ILjava/lang/String;)Z
    .locals 4
    .parameter "refMcc"
    .parameter "sourceNumber"

    .prologue
    const/16 v3, 0xa

    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, numberLength:I
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNANPMCC(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_0
    .end packed-switch
.end method

.method protected isValidNANPAreaCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "areaCode"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidNANPAreaCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isValidNDDLongNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "refMcc"
    .parameter "refNdd"
    .parameter "sourceNumber"

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, numberLength:I
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNANPMCC(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    const-string v2, "1"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    if-ne v0, v2, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    const/16 v2, 0xc

    if-gt v0, v2, :cond_0

    const-string v2, "0"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_0
    .end packed-switch
.end method

.method protected manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 27
    .parameter "sourceNumber"
    .parameter "byWhom"
    .parameter "isNBPCDAllowed"
    .parameter "lastNBPCDStatus"

    .prologue
    move-object/from16 v6, p1

    .local v6, manipulatedNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, numLength:I
    const-string v4, ""

    .local v4, areaCode:Ljava/lang/String;
    sget-object v24, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v24

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "cur_country_idd"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, otaIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "cur_country_ndd"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, otaNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "cur_country_code"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, otaCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "cur_country_mcc"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .local v12, otaMcc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "ref_country_idd"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, refIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "ref_country_ndd"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, refNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "ref_country_code"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .local v15, refCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "ref_country_mcc"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .local v19, refMcc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "cur_country_updated_by_user"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .local v5, areaCodeUpdated:I
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v25, "ref_country_area_code"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getAreaCode(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-nez v10, :cond_2

    const-string v10, ""

    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .local v11, otaIddLength:I
    if-nez v13, :cond_3

    const-string v13, ""

    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .local v14, otaNddLength:I
    if-nez v8, :cond_4

    const-string v8, ""

    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .local v9, otaCCLength:I
    if-nez v17, :cond_5

    const-string v17, ""

    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    .local v18, refIddLength:I
    if-nez v20, :cond_6

    const-string v20, ""

    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    .local v21, refNddLength:I
    if-nez v15, :cond_7

    const-string v15, ""

    :cond_7
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .local v16, refCCLength:I
    if-nez v4, :cond_8

    const-string v4, ""

    :cond_8
    if-eqz v7, :cond_e

    if-nez p3, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    const/16 v23, 0x0

    :goto_0
    return-object v23

    .end local v5           #areaCodeUpdated:I
    .end local v8           #otaCC:Ljava/lang/String;
    .end local v9           #otaCCLength:I
    .end local v10           #otaIdd:Ljava/lang/String;
    .end local v11           #otaIddLength:I
    .end local v12           #otaMcc:I
    .end local v13           #otaNdd:Ljava/lang/String;
    .end local v14           #otaNddLength:I
    .end local v15           #refCC:Ljava/lang/String;
    .end local v16           #refCCLength:I
    .end local v17           #refIdd:Ljava/lang/String;
    .end local v18           #refIddLength:I
    .end local v19           #refMcc:I
    .end local v20           #refNdd:Ljava/lang/String;
    .end local v21           #refNddLength:I
    :catchall_0
    move-exception v23

    :try_start_1
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .restart local v5       #areaCodeUpdated:I
    .restart local v8       #otaCC:Ljava/lang/String;
    .restart local v9       #otaCCLength:I
    .restart local v10       #otaIdd:Ljava/lang/String;
    .restart local v11       #otaIddLength:I
    .restart local v12       #otaMcc:I
    .restart local v13       #otaNdd:Ljava/lang/String;
    .restart local v14       #otaNddLength:I
    .restart local v15       #refCC:Ljava/lang/String;
    .restart local v16       #refCCLength:I
    .restart local v17       #refIdd:Ljava/lang/String;
    .restart local v18       #refIddLength:I
    .restart local v19       #refMcc:I
    .restart local v20       #refNdd:Ljava/lang/String;
    .restart local v21       #refNddLength:I
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    const/16 v23, 0x0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    const-string v24, "+"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_a
    move-object/from16 v23, v6

    goto :goto_0

    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->hasPlusCode(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    const/16 v23, 0x0

    goto :goto_0

    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->hasSpecialChar(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    const/16 v23, 0x0

    goto :goto_0

    :cond_d
    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    const-string v24, "+"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    if-nez p3, :cond_e

    add-int/lit8 v23, v9, 0x1

    move/from16 v0, v23

    if-lt v7, v0, :cond_10

    const/16 v23, 0x1

    add-int/lit8 v24, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    add-int/lit8 v23, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1, v12}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :cond_e
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    const/4 v6, 0x0

    :cond_f
    move-object/from16 v23, v6

    goto/16 :goto_0

    :cond_10
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v7, v0, :cond_11

    const/16 v23, 0x1

    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    :cond_11
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v7, v0, :cond_12

    const/16 v23, 0x1

    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    const/16 v23, 0x1

    const/16 v24, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    :cond_12
    const/16 v23, 0x3

    move/from16 v0, v23

    if-le v7, v0, :cond_e

    const/16 v23, 0x1

    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    const/16 v23, 0x1

    const/16 v24, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    const/16 v23, 0x1

    const/16 v24, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    :cond_13
    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_14
    const-string v23, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidLongNumber(ILjava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_16

    if-eqz p4, :cond_15

    const-string v23, "+"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_15
    invoke-virtual {v10, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_16
    const-string v23, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidNDDLongNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_18

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_18

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .local v22, tempNumber:Ljava/lang/String;
    if-eqz p4, :cond_17

    const-string v23, "+"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_17
    invoke-virtual {v10, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .end local v22           #tempNumber:Ljava/lang/String;
    :cond_18
    const-string v23, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidLocalNumber(ILjava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1c

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_19

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_1c

    :cond_19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v21

    if-le v0, v1, :cond_1a

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_1a
    if-eqz p4, :cond_1b

    const-string v23, "+"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_1b
    invoke-virtual {v10, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_1c
    add-int v23, v11, v9

    move/from16 v0, v23

    if-lt v7, v0, :cond_1e

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    if-eqz p4, :cond_1d

    const-string v23, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    const-string v23, "+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_1d
    add-int v23, v11, v9

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    add-int v23, v11, v9

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1, v12}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_1e
    move/from16 v0, v18

    if-lt v7, v0, :cond_e

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    if-eqz p4, :cond_1f

    const-string v23, "+"

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_1f
    add-int v23, v18, v9

    move/from16 v0, v23

    if-lt v7, v0, :cond_20

    add-int v23, v18, v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20

    add-int v23, v18, v9

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1, v12}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_20
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1
.end method
