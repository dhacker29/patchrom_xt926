.class public Lcom/motorola/android/internal/telephony/SMSNumberHandler;
.super Ljava/lang/Object;
.source "SMSNumberHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;
    }
.end annotation


# static fields
.field private static ALL_COUNTRY_CODES:[I = null

.field public static final GSM_UMTS_NETWORK:I = 0x0

.field private static IDDS_MAPS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MAX_COUNTRY_CODES_LENGTH:I = 0x0

.field private static final MIN_COUNTRY_AREA_LOCAL_LENGTH:I = 0xa

.field private static MULTI_IDDS_MAPS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final NANP_CC:I = 0x1

.field private static final NANP_IDD:Ljava/lang/String; = "011"

.field private static final NANP_LONG_LENGTH:I = 0xb

.field private static final NANP_MEDIUM_LENGTH:I = 0xa

.field private static final NANP_NDD:Ljava/lang/String; = "1"

.field private static final NANP_SHORT_LENGTH:I = 0x7

.field private static final NP_CC_AREA_LOCAL:I = 0x68

.field private static final NP_HOMEIDD_CC_AREA_LOCAL:I = 0x65

.field private static final NP_INTERNATIONAL_BEGIN:I = 0x64

.field private static final NP_LOCALIDD_CC_AREA_LOCAL:I = 0x67

.field private static final NP_LOCAL_NUMBER:I = 0xc9

.field private static final NP_NANP_AREA_LOCAL:I = 0x2

.field private static final NP_NANP_BEGIN:I = 0x1

.field private static final NP_NANP_LOCAL:I = 0x1

.field private static final NP_NANP_LOCALIDD_CC_AREA_LOCAL:I = 0x5

.field private static final NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x6

.field private static final NP_NANP_NBPCD_NDD_AREA_LOCAL:I = 0x4

.field private static final NP_NANP_NDD_AREA_LOCAL:I = 0x3

.field private static final NP_NBPCD_CC_AREA_LOCAL:I = 0x66

.field private static final NP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x64

.field private static final NP_NONE:I = 0x0

.field private static final NP_OTHERS_BEGIN:I = 0xc8

.field private static final NP_SHORT_CODE:I = 0xc8

.field public static final OTHER_CDMA_NETWORK:I = 0x2

.field private static final PLUS_SIGN:Ljava/lang/String; = "+"

.field private static final TAG:Ljava/lang/String; = "SMSNumberHandler"

.field public static final VERIZON_CDMA_NETWORK:I = 0x1


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->IDDS_MAPS:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "724"

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "0014"

    aput-object v4, v3, v5

    const-string v4, "0015"

    aput-object v4, v3, v6

    const-string v4, "0021"

    aput-object v4, v3, v7

    const-string v4, "0023"

    aput-object v4, v3, v8

    const-string v4, "0031"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "456"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v5

    const-string v4, "007"

    aput-object v4, v3, v6

    const-string v4, "008"

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "732"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "00444"

    aput-object v4, v3, v5

    const-string v4, "005"

    aput-object v4, v3, v6

    const-string v4, "007"

    aput-object v4, v3, v7

    const-string v4, "009"

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "244"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "00"

    aput-object v4, v3, v5

    const-string v4, "990"

    aput-object v4, v3, v6

    const-string v4, "994"

    aput-object v4, v3, v7

    const-string v4, "999"

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "510"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v5

    const-string v4, "008"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "425"

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "00"

    aput-object v4, v3, v5

    const-string v4, "012"

    aput-object v4, v3, v6

    const-string v4, "013"

    aput-object v4, v3, v7

    const-string v4, "014"

    aput-object v4, v3, v8

    const-string v4, "018"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "525"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v5

    const-string v4, "008"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    const-string v1, "450"

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v3, v5

    const-string v4, "002"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private checkNANP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;)I
    .locals 10
    .parameter "numberEntry"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, allIDDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, isNANP:Z
    iget-object v6, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->number:Ljava/lang/String;

    .local v6, number:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, firstChar:C
    const/16 v8, 0x32

    if-lt v1, v8, :cond_0

    const/16 v8, 0x39

    if-gt v1, v8, :cond_0

    const/4 v5, 0x1

    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/4 v8, 0x7

    if-ge v2, v8, :cond_0

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v5, 0x0

    .end local v0           #c:C
    .end local v2           #i:I
    :cond_0
    if-eqz v5, :cond_8

    const/4 v8, 0x1

    .end local v1           #firstChar:C
    :goto_1
    return v8

    .restart local v0       #c:C
    .restart local v1       #firstChar:C
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #c:C
    .end local v1           #firstChar:C
    .end local v2           #i:I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_4

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x3

    goto :goto_1

    :cond_4
    const-string v8, "+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_5

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x4

    goto :goto_1

    :cond_5
    const-string v8, "011"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_8

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x6

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, idd:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .local v7, number2:Ljava/lang/String;
    if-eqz v7, :cond_7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iput-object v4, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->IDD:Ljava/lang/String;

    const/4 v8, 0x5

    goto/16 :goto_1

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #idd:Ljava/lang/String;
    .end local v7           #number2:Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method private checkNP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 8
    .parameter "numberEntry"
    .parameter
    .parameter "homeIDD"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, allIDDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->number:Ljava/lang/String;

    .local v3, number:Ljava/lang/String;
    const/4 v0, -0x1

    .local v0, countryCode:I
    const-string v7, "+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .local v6, numberNoNBPCD:Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, numberCountryAreaLocal:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iput v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    const/16 v7, 0x64

    .end local v4           #numberCountryAreaLocal:Ljava/lang/String;
    .end local v6           #numberNoNBPCD:Ljava/lang/String;
    :goto_0
    return v7

    .restart local v6       #numberNoNBPCD:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iput v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    const/16 v7, 0x66

    goto :goto_0

    .end local v6           #numberNoNBPCD:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #numberCountryAreaLocal:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iput v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    const/16 v7, 0x65

    goto :goto_0

    .end local v4           #numberCountryAreaLocal:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, exitCode:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, numberNoIDD:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    iput v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    iput-object v1, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->IDD:Ljava/lang/String;

    const/16 v7, 0x67

    goto :goto_0

    .end local v1           #exitCode:Ljava/lang/String;
    .end local v5           #numberNoIDD:Ljava/lang/String;
    :cond_4
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iput v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    const/16 v7, 0x68

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private formatNumberForVZW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 12
    .parameter "number"
    .parameter "activeMcc"
    .parameter "activeMnc"
    .parameter "isNBPCDSupported"
    .parameter "networkType"

    .prologue
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, np:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Number is invalid!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    new-instance v7, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;

    invoke-direct {v7, p0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;-><init>(Lcom/motorola/android/internal/telephony/SMSNumberHandler;Ljava/lang/String;)V

    .local v7, numberEntry:Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getAllIDDs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, allIDDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v7, v1}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->checkNANP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;)I

    move-result v5

    .local v5, nanpState:I
    const-string v9, "SMSNumberHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NANP type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    if-eq v5, v9, :cond_2

    const/4 v9, 0x2

    if-eq v5, v9, :cond_2

    const/4 v9, 0x3

    if-ne v5, v9, :cond_3

    .end local v6           #np:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v6

    .restart local v6       #np:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x4

    if-ne v5, v9, :cond_5

    if-nez p4, :cond_2

    const/4 v9, 0x1

    move/from16 v0, p5

    if-eq v0, v9, :cond_4

    const/4 v9, 0x2

    move/from16 v0, p5

    if-ne v0, v9, :cond_2

    :cond_4
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_5
    const/4 v9, 0x5

    if-ne v5, v9, :cond_7

    const/4 v9, 0x1

    move/from16 v0, p5

    if-eq v0, v9, :cond_2

    if-nez p5, :cond_6

    iget-object v3, v7, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->IDD:Ljava/lang/String;

    .local v3, idd:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .end local v3           #idd:Ljava/lang/String;
    :cond_6
    const/4 v9, 0x2

    move/from16 v0, p5

    if-ne v0, v9, :cond_7

    iget-object v3, v7, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->IDD:Ljava/lang/String;

    .restart local v3       #idd:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .end local v3           #idd:Ljava/lang/String;
    :cond_7
    const-string v9, "011"

    invoke-direct {p0, v7, v1, v9}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->checkNP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v4

    .local v4, internState:I
    const-string v9, "SMSNumberHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "International type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    .local v8, returnNumber:Ljava/lang/String;
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const-string v9, "+"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez p4, :cond_9

    const/4 v9, 0x1

    move/from16 v0, p5

    if-eq v0, v9, :cond_8

    const/4 v9, 0x2

    move/from16 v0, p5

    if-ne v0, v9, :cond_9

    :cond_8
    const-string v9, "+011"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_9
    :goto_1
    if-nez v8, :cond_a

    move-object v8, v6

    :cond_a
    const-string v9, "SMSNumberHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; After format = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    goto/16 :goto_0

    :pswitch_1
    if-nez p5, :cond_9

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_2
    if-eqz p5, :cond_c

    const/4 v9, 0x1

    move/from16 v0, p5

    if-eq v0, v9, :cond_b

    const/4 v9, 0x2

    move/from16 v0, p5

    if-ne v0, v9, :cond_9

    :cond_b
    if-nez p4, :cond_9

    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "011"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_3
    if-eqz p5, :cond_d

    const/4 v9, 0x2

    move/from16 v0, p5

    if-ne v0, v9, :cond_9

    :cond_d
    iget-object v3, v7, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->IDD:Ljava/lang/String;

    .restart local v3       #idd:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "011"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .end local v3           #idd:Ljava/lang/String;
    :pswitch_4
    iget v2, v7, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    .local v2, countryCode:I
    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->inExceptionListForNpCcAreaLocal(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xb

    if-lt v9, v10, :cond_9

    const/4 v9, 0x1

    if-eq v2, v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "011"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .end local v2           #countryCode:I
    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "011"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAllCountryCodes()[I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "country_code"

    aput-object v0, v2, v11

    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Lookup;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .local v7, cc:I
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    aput v7, v0, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    .local v10, length:I
    sget v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MAX_COUNTRY_CODES_LENGTH:I

    if-le v10, v0, :cond_1

    sput v10, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MAX_COUNTRY_CODES_LENGTH:I

    :cond_1
    move v8, v9

    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_1

    .end local v7           #cc:I
    .end local v8           #i:I
    .end local v10           #length:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->ALL_COUNTRY_CODES:[I

    goto :goto_0
.end method

.method private getAllIDDs(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "mcc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .local v6, allIDDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    move-object v7, v6

    .end local v6           #allIDDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, allIDDs:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v7

    .end local v7           #allIDDs:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #allIDDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #allIDDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6       #allIDDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "idd"

    aput-object v0, v2, v11

    const-string v0, "mcc"

    aput-object v0, v2, v1

    .local v2, projection3:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, selectionArgs:[Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v3, "mcc=?"

    new-array v4, v1, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    aput-object p1, v4, v11

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/provider/Dlut$Idd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, cur:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, idd:Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v9           #idd:Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MULTI_IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .local v10, multiIdds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_5

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    sget-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SMSNumberHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MCC = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", all IDDs = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .restart local v7       #allIDDs:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method private getCountryCode(Ljava/lang/String;)I
    .locals 9
    .parameter "number"

    .prologue
    const/4 v1, -0x1

    .local v1, cc:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_0

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getAllCountryCodes()[I

    move-result-object v0

    .local v0, allCCs:[I
    if-nez v0, :cond_1

    .end local v0           #allCCs:[I
    .end local v1           #cc:I
    :cond_0
    :goto_0
    return v1

    .restart local v0       #allCCs:[I
    .restart local v1       #cc:I
    :cond_1
    sget v6, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MAX_COUNTRY_CODES_LENGTH:I

    new-array v2, v6, [I

    .local v2, ccArray:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget v6, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v3, v6, :cond_2

    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    array-length v6, v0

    if-ge v3, v6, :cond_0

    aget v5, v0, v3

    .local v5, tempCC:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    sget v6, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v4, v6, :cond_4

    aget v6, v2, v4

    if-ne v5, v6, :cond_3

    const-string v6, "SMSNumberHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Country code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private getNumberPlanType(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number Plan type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, numberPlanType:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v0, "NP_NANP_LOCAL"

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string v0, "NP_NANP_AREA_LOCAL"

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const-string v0, "NP_NANP_NDD_AREA_LOCAL"

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    const-string v0, "NP_NANP_NBPCD_NDD_AREA_LOCAL"

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    const-string v0, "NP_NANP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    const-string v0, "NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_5
    const/16 v1, 0x64

    if-ne p1, v1, :cond_6

    const-string v0, "NP_NBPCD_IDD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_6
    const/16 v1, 0x65

    if-ne p1, v1, :cond_7

    const-string v0, "NP_IDD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_7
    const/16 v1, 0x66

    if-ne p1, v1, :cond_8

    const-string v0, "NP_NBPCD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_8
    const/16 v1, 0x67

    if-ne p1, v1, :cond_9

    const-string v0, "NP_IDD_CC_AREA_LOCAL"

    goto :goto_0

    :cond_9
    const/16 v1, 0x68

    if-ne p1, v1, :cond_a

    const-string v0, "NP_CC_AREA_LOCAL"

    goto :goto_0

    :cond_a
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_b

    const-string v0, "NP_SHORT_CODE"

    goto :goto_0

    :cond_b
    const/16 v1, 0xc9

    if-ne p1, v1, :cond_c

    const-string v0, "NP_LOCAL_NUMBER"

    goto :goto_0

    :cond_c
    const-string v0, "Unclear type"

    goto :goto_0
.end method

.method private inExceptionListForNpCcAreaLocal(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;)Z
    .locals 4
    .parameter "numberEntry"

    .prologue
    iget v0, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    .local v0, countryCode:I
    iget-object v2, p1, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .local v1, result:Z
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "SMSNumberHandler"

    const-string v3, "The number is in exception list for this format!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    .end local v1           #result:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNANP(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/16 v2, 0xb

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "activeMcc"
    .parameter "activeMnc"
    .parameter "isNBPCDSupported"
    .parameter "networkType"

    .prologue
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nubmer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a global phone number!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    if-eq p5, v0, :cond_2

    const/4 v0, 0x2

    if-eq p5, v0, :cond_2

    if-eqz p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network type is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activeMcc is null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "SMSNumberHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format Number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Active MCC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Active MNC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NBPCD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p5}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->formatNumberForVZW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNANPShortCode(Ljava/lang/String;)Z
    .locals 10
    .parameter "number"

    .prologue
    const/16 v9, 0xa

    const/4 v5, 0x1

    const-string v6, "SMSNumberHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNANPShortCode? number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nubmer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a global phone number!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, np:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Number is invalid!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, allIDDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "011"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;

    invoke-direct {v4, p0, v3}, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;-><init>(Lcom/motorola/android/internal/telephony/SMSNumberHandler;Ljava/lang/String;)V

    .local v4, numberEntry:Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;
    invoke-direct {p0, v4, v0}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->checkNANP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;)I

    move-result v2

    .local v2, nanpState:I
    const-string v6, "SMSNumberHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NANP type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "011"

    invoke-direct {p0, v4, v0, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->checkNP(Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v1

    .local v1, internState:I
    const-string v6, "SMSNumberHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NP type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v9, :cond_5

    const-string v6, "SMSNumberHandler"

    const-string v7, "isNANPShortCode: true -- rule #1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_4

    const-string v6, "+"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v2, :cond_7

    const-string v6, "SMSNumberHandler"

    const-string v7, "isNANPShortCode: true -- rule #2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v6, v4, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->country_code:I

    if-ne v6, v5, :cond_7

    if-nez v2, :cond_7

    const-string v6, "SMSNumberHandler"

    const-string v7, "isNANPShortCode: true -- rule #4"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-nez v2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_6

    const-string v6, "SMSNumberHandler"

    const-string v7, "isNANPShortCode: true -- rule #2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_7

    const-string v6, "1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "SMSNumberHandler"

    const-string v7, "isNANPShortCode: true -- rule #3"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string v5, "SMSNumberHandler"

    const-string v6, "isNANPShortCode: false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
