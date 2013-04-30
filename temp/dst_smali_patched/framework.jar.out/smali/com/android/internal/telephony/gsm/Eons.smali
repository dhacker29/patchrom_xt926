.class public final Lcom/android/internal/telephony/gsm/Eons;
.super Ljava/lang/Object;
.source "Eons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/Eons$EonsControlState;,
        Lcom/android/internal/telephony/gsm/Eons$EonsState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mEONSUpdatedPLMN:Z

.field mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

.field mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

.field mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

.field mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEONSUpdatedPLMN:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/Eons;->reset()V

    return-void
.end method

.method private getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isIniting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isIniting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_AND_OPL_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EONS] "

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

    const-string v2, "[EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateEonsFromOplAndPnn(Ljava/lang/String;I)V
    .locals 4
    .parameter "regOperator"
    .parameter "lac"

    .prologue
    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/gsm/OplRecords;->getMatchingPnnRecord(Ljava/lang/String;IZ)I

    move-result v1

    .local v1, pnnRecord:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

    .local v0, pnnName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetched EONS name from EF_PNN record = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    return-void
.end method

.method private updateEonsIfHplmn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "regOperator"
    .parameter "hplmn"

    .prologue
    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparing hplmn, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with registered plmn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1, v3, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

    .local v0, pnnName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetched EONS name from EF_PNN\'s first record, name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .end local v0           #pnnName:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getEons()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/PnnRecords;->getCurrentEons()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mEONSUpdatedPLMN:Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mEONSUpdatedPLMN:Z

    goto :goto_0
.end method

.method public getEonsForAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, avlNetworks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v10, 0x0

    const/4 v0, 0x0

    .local v0, eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnAndOplPresent()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "OPL/PNN data is not available. Use the network names from Ril."

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/Eons;->loge(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, size:I
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v0       #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Available Networks List Size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_3

    const/4 v5, 0x0

    .local v5, pnnRecord:I
    const/4 v4, 0x0

    .local v4, pnnName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .local v2, ni:Lcom/android/internal/telephony/OperatorInfo;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/telephony/gsm/OplRecords;->getMatchingPnnRecord(Ljava/lang/String;IZ)I

    move-result v5

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v7, v5, v10}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PLMN = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ME Name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", PNN Name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", RAT = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getRat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v9

    invoke-direct {v3, v4, v7, v8, v9}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .local v3, operatorInfo:Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getRat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/OperatorInfo;->setRat(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #ni:Lcom/android/internal/telephony/OperatorInfo;
    .end local v3           #operatorInfo:Lcom/android/internal/telephony/OperatorInfo;
    .end local v4           #pnnName:Ljava/lang/String;
    .end local v5           #pnnRecord:I
    .end local v6           #size:I
    :cond_2
    const-string v7, "Available Networks List is empty"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/Eons;->loge(Ljava/lang/String;)V

    :cond_3
    move-object v7, v0

    goto/16 :goto_0
.end method

.method public isEONSUpdatedPLMN()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEONSUpdatedPLMN:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEONSUpdatedPLMN:Z

    return-void
.end method

.method public resetOplData()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    return-void
.end method

.method public resetPnnData()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    return-void
.end method

.method public setOplData(Ljava/util/ArrayList;)V
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
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    new-instance v0, Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/OplRecords;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    return-void
.end method

.method public setPnnData(Ljava/util/ArrayList;)V
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
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    new-instance v0, Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/PnnRecords;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    return-void
.end method

.method public updateEons(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .parameter "regOperator"
    .parameter "lac"
    .parameter "hplmn"

    .prologue
    const/4 v0, 0x1

    .local v0, needsOperatorNameUpdate:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnAndOplPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsFromOplAndPnn(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsIfHplmn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isIniting()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Reading data from EF_OPL or EF_PNN is not complete. Suppress operator name display until all EF_OPL/EF_PNN data is read."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
