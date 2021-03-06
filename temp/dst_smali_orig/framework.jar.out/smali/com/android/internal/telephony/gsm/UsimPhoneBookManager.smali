.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    }
.end annotation


# static fields
.field static final ADN_FOOTER_SIZE_BYTES:I = 0xe

.field static final ADN_MAX_NUMBER_BYTES:I = 0xa

.field static final ANR_MAX_NUMBER_BYTES:I = 0xa

.field static final ANR_NUMBER_EXT1_OFFSET:I = 0xe

.field static final ANR_NUMBER_LENGTH_OFFSET:I = 0x1

.field static final ANR_NUMBER_OFFSET:I = 0x2

.field static final ANR_TON_OFFSET:I = 0x2

.field private static final DBG:Z = true

.field private static final EVENT_ANR_LOAD_DONE:I = 0x7

.field private static final EVENT_EFANR_LINEAR_RECORD_SIZE_DONE:I = 0x1b

.field private static final EVENT_EFEMAIL_LINEAR_RECORD_SIZE_DONE:I = 0x18

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EXT1_LOAD_DONE:I = 0x14

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_LINEAR_RECORD_SIZE_DONE:I = 0x1c

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_UPDATE_ANR_DONE:I = 0x11

.field private static final EVENT_UPDATE_EMAIL_DONE:I = 0xe

.field private static final EVENT_UPDATE_EXT_DONE:I = 0x12

.field private static final EVENT_UPDATE_IAP_DONE:I = 0xd

.field private static final EVENT_UPDATE_USIM_ADN_DONE:I = 0xc

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final EXT1_MAX_RECORD:I = 0xa

.field static final EXT_MAX_NUMBER_BYTES:I = 0xa

.field static final EXT_RECORD_SIZE:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PROPERTY_USIM_SUPPORT_ANR:Ljava/lang/String; = "gsm.mot.usim.support.anr"

.field static final PROPERTY_USIM_SUPPORT_EMAIL:Ljava/lang/String; = "gsm.mot.usim.support.email"

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_EMPTY_LOCATION_BY_ANR:I = 0x2

.field private static final USIM_EMPTY_LOCATION_BY_EMAIL:I = 0x1

.field private static final USIM_EMPTY_LOCATION_BY_EMAIL_ANR:I = 0x3

.field private static final USIM_EMPTY_LOCATION_BY_NONE:I = 0x0

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAdnBase:I

.field private mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mAdnSizeInfo:[I

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrForAdnRec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExt1FileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mExt1Record:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExt1Set:Ljava/util/BitSet;

.field private mExt1Size:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field mUpdateSuccess:Z

.field private mallEmailFileRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mallIapFileRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 2
    .parameter "fh"
    .parameter "cache"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method private addAnrToPhoneBookRecord(II)V
    .locals 11
    .parameter "adnGroup"
    .parameter "adnBase"

    .prologue
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, numAdnRecs:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size of adn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v5, v8, p2

    .local v5, len:I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1AnrFile(I)V

    move v4, p2

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_1

    const/4 v0, 0x0

    .local v0, anr:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    sub-int v9, v4, p2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anr:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #anr:Ljava/lang/String;
    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #anr:Ljava/lang/String;
    :catch_0
    move-exception v2

    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    goto :goto_0

    .restart local v0       #anr:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .local v7, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    sub-int v9, v4, p2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .local v1, anrRec:[B
    const/16 v8, 0xe

    aget-byte v8, v1, v8

    and-int/lit16 v3, v8, 0xff

    .local v3, extRecord:I
    if-lez v3, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v3, v8, :cond_3

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtRecord(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setANR(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private buildExtString(Ljava/lang/String;I)[B
    .locals 9
    .parameter "extNumber"
    .parameter "recordSize"

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    new-array v1, p2, [B

    .local v1, extData:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_0

    aput-byte v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aput-byte v4, v1, v4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "[buildExtString] Empty number"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_3

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, bcdNumber:[B
    if-eqz v0, :cond_4

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v6, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    aput-byte v7, v1, v4

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    add-int/lit8 v3, p2, -0x1

    aput-byte v5, v1, v3

    goto :goto_1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private findAdnRecordInfo(Lcom/android/internal/telephony/uicc/AdnRecord;I)[I
    .locals 13
    .parameter "adn"
    .parameter "usim_empty_location_by"

    .prologue
    const/4 v9, 0x0

    .local v9, results:[I
    const/4 v0, -0x1

    .local v0, efid:I
    const/4 v1, -0x1

    .local v1, extensionEF:I
    const/4 v4, 0x0

    .local v4, index:I
    const/4 v6, -0x1

    .local v6, location:I
    const/4 v7, 0x0

    .local v7, pbrIndex:I
    const/4 v11, 0x1

    if-ne p2, v11, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findIndexOfEmptyAdnLocationByEmail()I

    move-result v4

    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v4, v11, :cond_2

    const-string v11, "oops,usim adn full"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const-string v11, "gsm.mot.sim.update.error"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    .end local v9           #results:[I
    .local v10, results:[I
    :goto_0
    return-object v10

    .end local v10           #results:[I
    .restart local v9       #results:[I
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v11

    if-nez v11, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    move v6, v4

    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    array-length v11, v11

    if-ge v3, v11, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v8, v11, v3

    .local v8, recNum:I
    if-ge v4, v8, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v11, :cond_3

    const-string v11, "mPbrFile is null now"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v10, v9

    .end local v9           #results:[I
    .restart local v10       #results:[I
    goto :goto_0

    .end local v10           #results:[I
    .restart local v9       #results:[I
    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_4

    move-object v10, v9

    .end local v9           #results:[I
    .restart local v10       #results:[I
    goto :goto_0

    .end local v10           #results:[I
    .restart local v9       #results:[I
    :cond_4
    move v7, v3

    const/16 v11, 0xc0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0xc0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v11, 0xc2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0xc2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v2           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8           #recNum:I
    :cond_5
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findAdnRecordInfo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v0, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",extention:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v1, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",index:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",location:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v11, 0x5

    new-array v9, v11, [I

    const/4 v11, 0x0

    aput v0, v9, v11

    const/4 v11, 0x1

    aput v1, v9, v11

    const/4 v11, 0x2

    aput v4, v9, v11

    const/4 v11, 0x3

    aput v6, v9, v11

    const/4 v11, 0x4

    aput v7, v9, v11

    move-object v10, v9

    .end local v9           #results:[I
    .restart local v10       #results:[I
    goto/16 :goto_0

    .end local v10           #results:[I
    .restart local v2       #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v8       #recNum:I
    .restart local v9       #results:[I
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .end local v2           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    sub-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method private findIndexOfEmptyAdnLocationByEmail()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v0, -0x1

    .local v0, index:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    .local v2, recCount:I
    const/4 v1, -0x1

    .local v1, pbrIndex:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    const/4 v3, -0x1

    .local v3, recordIndexInEF:I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFreeEmailLocation(I)I

    move-result v3

    if-eq v3, v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is one email slot, pbrIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recordIndexInEF = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findIndexOfEmptyAdnLocationByPbrIndex(I)I

    move-result v0

    if-eq v0, v6, :cond_2

    .end local v3           #recordIndexInEF:I
    :cond_0
    if-ne v0, v6, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .end local v0           #index:I
    :cond_1
    return v0

    .restart local v0       #index:I
    .restart local v3       #recordIndexInEF:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findIndexOfEmptyAdnLocationByPbrIndex(I)I
    .locals 5
    .parameter "pbrIndex"

    .prologue
    const/4 v2, -0x1

    .local v2, ret:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    array-length v4, v4

    if-ge p1, v4, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x0

    .local v0, base:I
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-ge v3, p1, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v4, v4, v3

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .local v1, j:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v4, v4, p1

    add-int/2addr v4, v0

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v1

    .end local v0           #base:I
    .end local v1           #j:I
    .end local v3           #x:I
    :cond_1
    return v2

    .restart local v0       #base:I
    .restart local v1       #j:I
    .restart local v3       #x:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getAvailableExtIndex()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    .local v0, index:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    if-ge v0, v1, :cond_0

    .end local v0           #index:I
    :goto_0
    return v0

    .restart local v0       #index:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getEfAnrInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .locals 9
    .parameter "pbrIndex"

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xc4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_3

    move-object v3, v4

    goto :goto_0

    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x1b

    const/4 v7, 0x0

    invoke-virtual {p0, v6, p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "verifyAnr failed get EFANR Info"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readANRFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    goto :goto_0
.end method

.method private getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .locals 9
    .parameter "pbrIndex"

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xca

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_3

    move-object v3, v4

    goto :goto_0

    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-virtual {p0, v6, p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "verifyEmail failed get EFEMAIL Info"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in verifyEmail"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    goto :goto_0
.end method

.method private getEfInfo(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .locals 7
    .parameter "pbrIndex"
    .parameter "efTag"

    .prologue
    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "pbr is not loaded yet!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v3, v4

    goto :goto_0

    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v3, v4

    goto :goto_0

    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x1c

    invoke-virtual {p0, v6, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "failed get EF Info"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in getEfInfo"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    goto/16 :goto_0
.end method

.method private getFreeEmailLocation(I)I
    .locals 8
    .parameter "pbrIndex"

    .prologue
    const/4 v5, -0x1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v1

    .local v1, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v1, :cond_1

    const-string v6, "getFreeEmailLocation failed get EFEMAIL Info"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v4, v5

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, -0x1

    .local v4, recordIndexInEF:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v0, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "don\'t get email file record for PBR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v6, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    if-ge v3, v6, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .local v2, emailrecord:[B
    if-nez v2, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmptyEFRecord([B)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getMaxANRNumberLength()I
    .locals 1

    .prologue
    const/16 v0, 0x14

    return v0
.end method

.method private isEmailsNull([Ljava/lang/String;)Z
    .locals 3
    .parameter "emails"

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isEmptyEFRecord([B)Z
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v1, p1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    if-eq v0, v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USIMPB] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USIMPB] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseANR([BZ)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "isType2"

    .prologue
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v2, v5, 0xff

    .local v2, numberLength:I
    const/4 v5, 0x2

    invoke-static {p1, v5, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .local v1, number:Ljava/lang/String;
    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit16 v0, v5, 0xff

    .local v0, extRecord:I
    const/16 v5, 0xff

    if-ne v0, v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz p2, :cond_1

    array-length v5, p1

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, p1, v5

    and-int/lit16 v4, v5, 0xff

    .local v4, sfi:I
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .local v3, recID:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Type2 ANR,(sfi-rec#):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .end local v3           #recID:I
    .end local v4           #sfi:I
    :cond_1
    return-object v1
.end method

.method private readANRFileAndWait(II)V
    .locals 6
    .parameter "recNum"
    .parameter "adnBase"

    .prologue
    const/16 v5, 0xc4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, efid:I
    const-string v3, "Just support TYPE1 ANR"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    const-string v3, "Error: Anr file is empty"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readANRFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    const-string v3, "gsm.mot.usim.support.anr"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addAnrToPhoneBookRecord(II)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private readAdnFileAndWait(I)V
    .locals 7
    .parameter "recNum"

    .prologue
    const/16 v6, 0xc2

    const/16 v5, 0xc0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .local v1, efExtId:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readAdnFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "NullPointerException in readAdnFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 7
    .parameter "recNum"

    .prologue
    const/16 v5, 0xc1

    const/16 v6, 0xca

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, efid:I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    const-string v3, "Error: IAP file is empty"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "gsm.mot.usim.support.email"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    const-string v3, "Error: Email file is empty"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readEmailFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(I)V

    goto/16 :goto_0
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 6
    .parameter "recNum"

    .prologue
    const/4 v3, 0x0

    .local v3, emailRec:[B
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    .local v4, recSize:I
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v5, :cond_0

    array-length v4, v3

    :goto_0
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .end local v4           #recSize:I
    :goto_1
    return-object v2

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_1

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v4       #recSize:I
    :cond_0
    array-length v5, v3

    add-int/lit8 v4, v5, -0x2

    goto :goto_0
.end method

.method private readExt1AndWait()V
    .locals 9

    .prologue
    const/16 v8, 0xc2

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, extensionEF:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    new-instance v5, Ljava/util/BitSet;

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    invoke-direct {v5, v7}, Ljava/util/BitSet;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseExt1([B)Ljava/lang/String;

    move-result-object v4

    .local v4, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v7, v3, v5}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3           #i:I
    .end local v4           #number:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "Interrupted Exception in readExt1AndWait:"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v3       #i:I
    .restart local v4       #number:Ljava/lang/String;
    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method private readIapFileAndWait(I)V
    .locals 3
    .parameter "efid"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted Exception in readIapFileAndWait"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted Exception in readAdnFileAndWait"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 3
    .parameter "response"
    .parameter "errString"

    .prologue
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private stringCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateAdnByLocationInfo(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z
    .locals 20
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "adnLocationInfo"
    .parameter "response"

    .prologue
    const/16 p4, 0x0

    if-nez p5, :cond_1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Adn record don\'t exist for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Adn record don\'t exist for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/16 v18, 0x0

    aget v16, p5, v18

    .local v16, usimAdnEf:I
    const/16 v18, 0x1

    aget v17, p5, v18

    .local v17, usimAdnExtentionEf:I
    const/16 v18, 0x2

    aget v13, p5, v18

    .local v13, recordIndexInEF:I
    const/16 v18, 0x3

    aget v9, p5, v18

    .local v9, indexInPhoneBookRecords:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .restart local p2
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    .local v7, emails:[Ljava/lang/String;
    const-string v6, ""

    .local v6, email:Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v6, v7, v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .end local v6           #email:Ljava/lang/String;
    .end local v7           #emails:[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x4

    aget v11, p5, v18

    .local v11, pbrIndex:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "got expected info from usim:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x10

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",extention"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x10

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",pbrIndex:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",recordIndexInEF within file:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",indexInPhoneBookRecords:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Adn record don\'t exist for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyInput(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v10

    .local v10, isValidData:Z
    if-nez v10, :cond_4

    const-string v18, "invalid input data"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const-string v18, "newAdn is invalid"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_4
    const-string v18, "valid input data"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .local v12, pendingResponse:Landroid/os/Message;
    if-eqz v12, :cond_5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Have pending update for EF:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v8, 0x1

    .local v8, finalWriteResult:Z
    const/4 v15, 0x0

    .local v15, tmpWriteResult:Z
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeADNFileAndWait([ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v8, 0x0

    :cond_6
    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeANRFileAndWait([ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const/4 v8, 0x0

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEmailFileAndWait([ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v8, 0x0

    :cond_8
    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Message;

    .local v14, response1:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    if-nez v8, :cond_0

    const-string v18, "UpdateAdn failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v14           #response1:Landroid/os/Message;
    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/Exception;
    const-string v18, "interrupted while trying to update by search"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updatePhoneAdnRecord(I)V
    .locals 14
    .parameter "adnGroup"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, numAdnRecs:I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v10, :cond_5

    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    const/4 v9, 0x0

    .local v9, record:[B
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #record:[B
    check-cast v9, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v9       #record:[B
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v10, v9, v10

    and-int/lit16 v8, v10, 0xff

    .local v8, recNum:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_2

    and-int/lit16 v5, v8, 0xff

    .local v5, n1:I
    const/16 v10, 0xff

    if-ne v5, v10, :cond_3

    const-string v10, "oops,unused entry for email"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .end local v5           #n1:I
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v8           #recNum:I
    .end local v9           #record:[B
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v5       #n1:I
    .restart local v8       #recNum:I
    .restart local v9       #record:[B
    :cond_3
    new-array v3, v13, [Ljava/lang/String;

    .local v3, emails:[Ljava/lang/String;
    add-int/lit8 v10, v8, -0x1

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v12

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    add-int v0, v4, v10

    .local v0, adnIndex:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update email:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";for adn:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .local v7, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v7, :cond_4

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v7           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v10, ""

    const-string v11, ""

    invoke-direct {v7, v10, v11, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v7       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_3

    .end local v0           #adnIndex:I
    .end local v3           #emails:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #n1:I
    .end local v7           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8           #recNum:I
    .end local v9           #record:[B
    :cond_5
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .local v2, email:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    new-array v3, v13, [Ljava/lang/String;

    .restart local v3       #emails:[Ljava/lang/String;
    aput-object v2, v3, v12

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    add-int v0, v4, v10

    .restart local v0       #adnIndex:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update email:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";for adn:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .restart local v7       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v7, :cond_7

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    :goto_6
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v7           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v10, ""

    const-string v11, ""

    invoke-direct {v7, v10, v11, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v7       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_6
.end method

.method private updatelocalEmailRecord(II[B)Z
    .locals 9
    .parameter "pbrIndex"
    .parameter "recordIndexInEF"
    .parameter "newEmailRecord"

    .prologue
    const/16 v8, 0xca

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .local v3, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v3, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "verifyEmail failed get EFEMAIL Info"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    .local v1, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v0, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "don\'t get email file record for PBR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .local v2, emailrecord:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget v5, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    if-ge v4, v5, :cond_3

    aget-byte v5, p3, v4

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private verifyAdn(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 12
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    const/16 v11, 0xc0

    const/16 v10, 0x28

    const/16 v9, 0x14

    const/4 v6, 0x0

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    .local v5, tag:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    .local v4, number:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfInfo(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v0

    .local v0, adnInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-eqz v0, :cond_0

    iget v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    add-int/lit8 v3, v7, -0xe

    .local v3, maxNameLength:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_2

    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->setNumber(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New adn length too long, adn length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", limit is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAvailableExtIndex()I

    move-result v1

    .local v1, extIndex:I
    if-gez v1, :cond_4

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setNumber(Ljava/lang/String;)V

    .end local v1           #extIndex:I
    :cond_3
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .restart local v1       #extIndex:I
    :cond_4
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setExtRecord(I)V

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAdnExtNumber(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1
.end method

.method private verifyAnr(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 9
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v3

    .local v3, newanr:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v4

    .local v4, oldanr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "same anr. doesn\'t need change"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v7, :cond_4

    :cond_3
    move v5, v6

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_5

    move v5, v6

    goto :goto_0

    :cond_5
    const/16 v7, 0xc4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfAnrInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v0

    .local v0, anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v0, :cond_6

    move v5, v6

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x14

    if-le v7, v8, :cond_7

    const/16 v7, 0x28

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setANR(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v8

    if-le v7, v8, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New anr length too long, newanr length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",limit is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAvailableExtIndex()I

    move-result v1

    .local v1, extIndex:I
    if-gez v1, :cond_8

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setANR(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtRecord(I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .end local v0           #anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v1           #extIndex:I
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This PBR: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "doesn\'t support ANR"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v5, v6

    goto/16 :goto_0
.end method

.method private verifyEmail(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 19
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v11

    .local v11, newemails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v10, v11, v17

    .local v10, newemail:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v15

    .local v15, oldemails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v14, v15, v17

    .local v14, oldemail:Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "email is same, not need update"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/16 v17, 0x1

    :goto_0
    return v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .local v6, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v6, :cond_3

    const/16 v17, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .local v5, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v5, :cond_4

    const/16 v17, 0x0

    goto :goto_0

    :cond_4
    const/16 v17, 0xca

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    .local v9, newEmails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v9, v17

    if-nez v17, :cond_5

    const-string v8, ""

    .local v8, newEmail:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v13

    .local v13, oldEmails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v13, v17

    if-nez v17, :cond_6

    const-string v12, ""

    .local v12, oldEmail:Ljava/lang/String;
    :goto_2
    const/16 v16, 0x0

    .local v16, recLen:I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v3

    .local v3, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v3, :cond_7

    const/16 v17, 0x0

    goto :goto_0

    .end local v3           #emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v8           #newEmail:Ljava/lang/String;
    .end local v12           #oldEmail:Ljava/lang/String;
    .end local v13           #oldEmails:[Ljava/lang/String;
    .end local v16           #recLen:I
    :cond_5
    const/16 v17, 0x0

    aget-object v8, v9, v17

    goto :goto_1

    .restart local v8       #newEmail:Ljava/lang/String;
    .restart local v13       #oldEmails:[Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    aget-object v12, v13, v17

    goto :goto_2

    .restart local v3       #emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .restart local v12       #oldEmail:Ljava/lang/String;
    .restart local v16       #recLen:I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Email type1 ... emailInfo.recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_8

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v2, v0, [Ljava/lang/String;

    .local v2, clipEmails:[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .local v7, newCharEmail:[C
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v7, v0, v1}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "New email length too long, newemail length"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",limit is: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .end local v2           #clipEmails:[Ljava/lang/String;
    .end local v7           #newCharEmail:[C
    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFreeEmailLocation(I)I

    move-result v17

    if-gez v17, :cond_a

    const-string v17, "don\'t have free email record, and reset email"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    .local v4, emptyEmails:[Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, ""

    aput-object v18, v4, v17

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x0

    aget-object v10, v11, v17

    .end local v4           #emptyEmails:[Ljava/lang/String;
    :cond_a
    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v17, v0

    add-int/lit8 v16, v17, -0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Email type2 ... emailInfo.recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v3           #emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v8           #newEmail:Ljava/lang/String;
    .end local v9           #newEmails:[Ljava/lang/String;
    .end local v12           #oldEmail:Ljava/lang/String;
    .end local v13           #oldEmails:[Ljava/lang/String;
    .end local v16           #recLen:I
    :cond_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "This PBR: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "doesn\'t support EMAIL"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private verifyIap(ILcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 4
    .parameter "pbrIndex"
    .parameter "newAdn"

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This PBR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "doesn\'t have EFIAP, so doesn\'t support type2 ef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private verifyInput(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 5
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    .local v1, finalVerifyResult:Z
    const/4 v2, 0x1

    .local v2, tmpVerifyResult:Z
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyAdn(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v2

    :cond_1
    if-nez v2, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyAnr(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v2

    :cond_3
    if-nez v2, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    .local v0, emails:[Ljava/lang/String;
    if-eqz v0, :cond_5

    array-length v4, v0

    if-lez v4, :cond_5

    aget-object v4, v0, v3

    if-eqz v4, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyEmail(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v2

    :cond_5
    if-nez v2, :cond_6

    move v1, v3

    :cond_6
    goto :goto_0
.end method

.method private writeADNFileAndWait([ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;)Z
    .locals 17
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v11

    .local v11, newname:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    .local v12, newnumber:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v13

    .local v13, oldname:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v14

    .local v14, oldnumber:Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    aget v4, p1, v2

    .local v4, usimAdnEf:I
    const/4 v2, 0x1

    aget v5, p1, v2

    .local v5, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v16, p1, v2

    .local v16, recordIndexInEF:I
    const/4 v2, 0x3

    aget v10, p1, v2

    .local v10, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v15, p1, v2

    .local v15, pbrIndex:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    add-int/lit8 v6, v16, 0x1

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v10, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtRecord()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtRecord()I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtRecord()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdnExtNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    :cond_1
    :goto_2
    const-string v2, "update adn sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto :goto_0

    :catch_0
    move-exception v9

    .local v9, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeADNFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtRecord()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtRecord()I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtRecord()I

    move-result v2

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    goto :goto_2
.end method

.method private writeANRFileAndWait([ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;)Z
    .locals 20
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v13

    .local v13, newanr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v14

    .local v14, oldanr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->stringCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    aget v18, p1, v2

    .local v18, usimAdnEf:I
    const/4 v2, 0x1

    aget v19, p1, v2

    .local v19, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v17, p1, v2

    .local v17, recordIndexInEF:I
    const/4 v2, 0x3

    aget v12, p1, v2

    .local v12, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v15, p1, v2

    .local v15, pbrIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .local v10, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v10, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, efid:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .local v11, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v11, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfAnrInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v8

    .local v8, anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v8, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    iget v0, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v16, v0

    .local v16, recSize:I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAnrString(Ljava/lang/String;I)[B

    move-result-object v5

    .local v5, data:[B
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v4, v17, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtRecord()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtRecord()I

    move-result v2

    const/16 v4, 0xff

    if-eq v2, v4, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtRecord()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    if-nez v2, :cond_7

    const-string v2, "failed update AnrT1 file:"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :cond_7
    const-string v2, "update anr sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto/16 :goto_0

    :catch_0
    move-exception v9

    .local v9, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeANRFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtRecord()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtRecord()I

    move-result v2

    const/16 v4, 0xff

    if-eq v2, v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtRecord()I

    move-result v2

    const-string v4, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    goto :goto_2
.end method

.method private writeEmailFileAndWait([ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;)Z
    .locals 23
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v14

    .local v14, newemails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v13, v14, v2

    .local v13, newemail:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v16

    .local v16, oldemails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v15, v16, v2

    .local v15, oldemail:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->stringCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "stringCompare: email is same, not need update"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    aget v21, p1, v2

    .local v21, usimAdnEf:I
    const/4 v2, 0x1

    aget v22, p1, v2

    .local v22, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v19, p1, v2

    .local v19, recordIndexInEF:I
    const/4 v2, 0x3

    aget v12, p1, v2

    .local v12, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v17, p1, v2

    .local v17, pbrIndex:I
    const/4 v4, -0x1

    .local v4, emailRecordNumber:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeIapFileAndWait([ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;)I

    move-result v4

    :goto_1
    const/4 v2, -0x1

    if-ne v4, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v19, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    const-string v2, "should not run at here, needn\'t write email"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .local v11, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v11, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .local v10, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v10, :cond_7

    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, efid:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v9

    .local v9, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v9, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    iget v0, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v18, v0

    .local v18, recSize:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildEmailString(Ljava/lang/String;IZ)[B

    move-result-object v5

    .local v5, data:[B
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_9

    const/16 v20, 0xff

    .local v20, sfi:I
    add-int/lit8 v2, v18, -0x2

    move/from16 v0, v20

    int-to-byte v6, v0

    aput-byte v6, v5, v2

    add-int/lit8 v2, v18, -0x1

    add-int/lit8 v6, v19, 0x1

    int-to-byte v6, v6

    and-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .end local v20           #sfi:I
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v6, 0x0

    const/16 v7, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    if-nez v2, :cond_a

    const-string v2, "failed update EMAIL file:"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v2, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatelocalEmailRecord(II[B)Z

    const-string v2, "update EMAIL sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto/16 :goto_0

    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeEmailFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private writeExt1FileAndWait(IILjava/lang/String;)Z
    .locals 7
    .parameter "efid"
    .parameter "index"
    .parameter "extNumber"

    .prologue
    const/4 v0, 0x0

    add-int/lit8 v1, p2, -0x1

    if-ltz v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xd

    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildExtString(Ljava/lang/String;I)[B

    move-result-object v3

    .local v3, data:[B
    aget-byte v1, v3, v0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    :cond_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v4, 0x0

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/InterruptedException;
    const-string v0, "Interrupted Exception in writeExt1FileAndWait"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeIapFileAndWait([ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;)I
    .locals 23
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    const/16 v20, 0x0

    .local v20, recordNumber:I
    const/4 v2, 0x0

    aget v21, p1, v2

    .local v21, usimAdnEf:I
    const/4 v2, 0x1

    aget v22, p1, v2

    .local v22, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v19, p1, v2

    .local v19, recordIndexInEF:I
    const/4 v2, 0x3

    aget v12, p1, v2

    .local v12, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v18, p1, v2

    .local v18, pbrIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .local v9, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v9, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    goto :goto_0

    :cond_3
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, efid:I
    const/4 v13, -0x1

    .local v13, location:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .local v11, iaprecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v11, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "don\'t get email file record for PBR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-le v0, v2, :cond_5

    const/4 v2, -0x1

    goto :goto_0

    :cond_5
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .local v5, iaprecode:[B
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v15

    .local v15, newEmails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v14, v15, v2

    .local v14, newEmail:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v17

    .local v17, oldEmails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v16, v17, v2

    .local v16, oldEmail:Ljava/lang/String;
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, v5, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    const/4 v4, -0x1

    aput-byte v4, v5, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write iap, get email record:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v4, v19, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    if-nez v2, :cond_7

    const-string v2, "failed update IAP file:"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :cond_7
    const-string v2, "update iap sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_8
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFreeEmailLocation(I)I

    move-result v10

    .local v10, freeEmailLocation:I
    if-gez v10, :cond_a

    const-string v2, "no empty email location"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_a
    move/from16 v20, v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    and-int/lit16 v4, v10, 0xff

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    goto :goto_1

    .end local v10           #freeEmailLocation:I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, v5, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v20, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "don\'t write iap, get email record:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/16 v2, 0xff

    move/from16 v0, v20

    if-ne v0, v2, :cond_c

    const-string v2, "something wrong"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_c
    move/from16 v2, v20

    goto/16 :goto_0

    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeIapFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public findAdnRecordInfo(Lcom/android/internal/telephony/uicc/AdnRecord;)[I
    .locals 1
    .parameter "adn"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/uicc/AdnRecord;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getUsimAdnSize()[I
    .locals 6

    .prologue
    const/4 v2, 0x3

    new-array v1, v2, [I

    .local v1, result:[I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    const/16 v4, 0xc0

    :try_start_0
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfInfo(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v0

    .local v0, info:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    aput v4, v1, v2

    const/4 v2, 0x1

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    iget v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    mul-int/2addr v4, v5

    aput v4, v1, v2

    const/4 v2, 0x2

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    aput v4, v1, v2

    :cond_0
    monitor-exit v3

    return-object v1

    .end local v0           #info:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v8, "Loading USIM ADN records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current number of records: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    monitor-exit v9

    goto :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8

    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v8, "Loading USIM IAP records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    monitor-exit v9

    goto :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v8

    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v8, "Loading USIM Email records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v8

    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v8, "Loading USIM ANR records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_4

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    monitor-exit v9

    goto/16 :goto_0

    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v8

    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const-string v8, "Loading USIM Ext1 records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_5

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_5
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    monitor-exit v9

    goto/16 :goto_0

    :catchall_5
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v8

    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .local v6, pbrIndex:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .local v2, efTag:I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get record size failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_6
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    monitor-exit v9

    goto/16 :goto_0

    :catchall_6
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v8

    :cond_7
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    .local v7, recordSize:[I
    new-instance v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .local v1, efInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    aget v8, v7, v9

    iput v8, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    aget v8, v7, v10

    iput v8, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .local v5, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-eqz v5, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #efInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v2           #efTag:I
    .end local v5           #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    .end local v6           #pbrIndex:I
    .end local v7           #recordSize:[I
    :pswitch_8
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .restart local v6       #pbrIndex:I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get EFANR record size failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :cond_8
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_7
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    monitor-exit v9

    goto/16 :goto_0

    :catchall_7
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v8

    :cond_9
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    .restart local v7       #recordSize:[I
    new-instance v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .local v3, efanrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    aget v8, v7, v9

    iput v8, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    aget v8, v7, v10

    iput v8, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .restart local v5       #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-eqz v5, :cond_8

    const/16 v8, 0xc4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #efanrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v5           #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    .end local v6           #pbrIndex:I
    .end local v7           #recordSize:[I
    :pswitch_9
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .restart local v6       #pbrIndex:I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get email record size failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :cond_a
    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_8
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    monitor-exit v9

    goto/16 :goto_0

    :catchall_8
    move-exception v8

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v8

    :cond_b
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    .restart local v7       #recordSize:[I
    new-instance v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .local v4, efemailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    aget v8, v7, v9

    iput v8, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    aget v8, v7, v10

    iput v8, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .restart local v5       #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-eqz v5, :cond_a

    const/16 v8, 0xca

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #efemailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v5           #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    .end local v6           #pbrIndex:I
    .end local v7           #recordSize:[I
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_c

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    :goto_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_9
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    monitor-exit v9

    goto/16 :goto_0

    :catchall_9
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v8

    :cond_c
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",exception is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v4

    :goto_0
    return-object v3

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v5, :cond_4

    :cond_3
    monitor-exit v4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readExt1AndWait()V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .local v2, numRecs:I
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    const/4 v0, 0x0

    .local v0, adnBase:I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    aput v5, v3, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adn size of rec "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v3, v3, v1

    if-nez v3, :cond_5

    const-string v3, "Read 0 ADN, no need to read Email, ANR..."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readANRFileAndWait(II)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v5, v5, v1

    add-int/2addr v3, v5

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAdnBase:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method parseType1AnrFile(I)V
    .locals 6
    .parameter "numRecs"

    .prologue
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .local v1, anrRec:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #anrRec:[B
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #anrRec:[B
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseANR([BZ)Ljava/lang/String;

    move-result-object v0

    .local v0, anr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #anr:Ljava/lang/String;
    .end local v1           #anrRec:[B
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Improper ICC card: No anr record for ADN, break,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void
.end method

.method parseType1EmailFile(I)V
    .locals 8
    .parameter "numRecs"

    .prologue
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    const/4 v3, 0x0

    .local v3, emailRec:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #emailRec:[B
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v3, v6

    .local v0, adnRecNum:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0           #adnRecNum:I
    .end local v3           #emailRec:[B
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    return-void

    .restart local v0       #adnRecNum:I
    .restart local v3       #emailRec:[B
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "gsm.mot.usim.support.anr"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gsm.mot.usim.support.email"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;)V
    .locals 3
    .parameter "index"
    .parameter "newAdn"

    .prologue
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const-string v1, "oops,invalid index"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnByindex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .local v0, adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAlphaTag(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setNumber(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setANR(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 19
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    const/16 v17, 0x1

    .local v17, finalResult:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    const/4 v7, 0x0

    .local v7, adnLocationInfo:[I
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailsNull([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "find location for inserting one new contact"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/uicc/AdnRecord;I)[I

    move-result-object v7

    if-nez v7, :cond_0

    const-string v2, "there is no email slot, so just try to lookup a empty ADN"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/uicc/AdnRecord;I)[I

    move-result-object v7

    :cond_0
    if-nez v7, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "space is full for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const/16 v17, 0x0

    :cond_1
    :goto_0
    if-eqz v17, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    monitor-exit v18

    return-void

    :cond_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByLocationInfo(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z

    move-result v17

    goto :goto_0

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailsNull([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailsNull([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "find location for updating the contact to add new email"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/uicc/AdnRecord;I)[I

    move-result-object v7

    if-eqz v7, :cond_7

    const/4 v2, 0x4

    aget v2, v7, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFreeEmailLocation(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    const-string v2, "oldAdn and free email space are at the same pbr record, so update directly"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByLocationInfo(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z

    move-result v17

    goto :goto_0

    :cond_5
    const-string v2, "In oldAdn pbr record, there is no email space"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/uicc/AdnRecord;I)[I

    move-result-object v15

    .local v15, adnLocationInfo_email:[I
    if-eqz v15, :cond_6

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, emails:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v16, v2

    new-instance v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move-object/from16 v0, v16

    invoke-direct {v5, v2, v3, v0, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v5, emptyAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByLocationInfo(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object v10, v5

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v7

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByLocationInfo(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z

    move-result v17

    goto/16 :goto_0

    .end local v5           #emptyAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v16           #emails:[Ljava/lang/String;
    :cond_6
    const-string v2, "Can\'t find empty space for email"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find empty space for email "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const/16 v17, 0x0

    goto/16 :goto_0

    .end local v15           #adnLocationInfo_email:[I
    :cond_7
    const-string v2, "Can\'t find oldAdn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find oldAdn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/uicc/AdnRecord;I)[I

    move-result-object v7

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v7

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByLocationInfo(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z

    move-result v17

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
