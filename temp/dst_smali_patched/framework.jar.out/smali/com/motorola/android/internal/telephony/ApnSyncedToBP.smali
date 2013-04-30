.class public Lcom/motorola/android/internal/telephony/ApnSyncedToBP;
.super Ljava/lang/Object;
.source "ApnSyncedToBP.java"


# static fields
.field protected static final DBG:Z = true

.field protected static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final SYS_PROP_FIRSTUP_AFTER_FR:Ljava/lang/String; = "persist.radio.firstupafterfr"

.field protected static final mMaxClass:I = 0x4


# instance fields
.field protected mApnNum3GPP:I

.field protected mApnNum3GPP2:I

.field protected mCachedApns3GPP:[Lcom/android/internal/telephony/ApnSetting;

.field protected mCachedApns3GPP2:[Lcom/android/internal/telephony/ApnSetting;

.field protected mIsChangedApns3GPP:Z

.field protected mIsChangedApns3GPP2:Z

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "phone"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/PhoneBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, allApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/4 v1, 0x4

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    new-array v0, v1, [Lcom/android/internal/telephony/ApnSetting;

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/ApnSetting;

    new-array v0, v1, [Lcom/android/internal/telephony/ApnSetting;

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/ApnSetting;

    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->cacheApnListFromAp(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new ApnSyncedToBP, with allApns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    return-void
.end method

.method private cacheApnListFromAp(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, allApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/4 v10, 0x4

    const/4 v9, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheApnListFromAp, with allApns:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v1, 0x0

    .local v1, curApnNum3GPP:I
    const/4 v2, 0x0

    .local v2, curApnNum3GPP2:I
    new-array v3, v10, [Lcom/android/internal/telephony/ApnSetting;

    .local v3, currentApns3GPP:[Lcom/android/internal/telephony/ApnSetting;
    new-array v4, v10, [Lcom/android/internal/telephony/ApnSetting;

    .local v4, currentApns3GPP2:[Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .local v0, apn:Lcom/android/internal/telephony/DataProfile;
    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    if-ge v6, v10, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    if-lez v6, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/DataProfile;->bearer:I

    const/16 v7, 0xe

    if-eq v6, v7, :cond_1

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/DataProfile;->bearer:I

    if-nez v6, :cond_4

    :cond_1
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v6, v7, v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v7, v7, v6

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/ApnSetting;->equals2(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Apns3GPP changed, old:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3gpp apn new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v7, v6, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    aput-object v6, v3, v7

    add-int/lit8 v1, v1, 0x1

    :cond_4
    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/DataProfile;->bearer:I

    const/16 v7, 0xd

    if-eq v6, v7, :cond_5

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/DataProfile;->bearer:I

    if-nez v6, :cond_0

    :cond_5
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v6, v7, v6

    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v7, v7, v6

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/ApnSetting;->equals2(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Apns3GPP2 changed, old:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/ApnSetting;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3gpp2 apn new:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .end local v0           #apn:Lcom/android/internal/telephony/DataProfile;
    aput-object v0, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    iget v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    if-eq v1, v6, :cond_9

    iput v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    :cond_9
    iget v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    if-eq v2, v6, :cond_a

    iput v2, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    iput-boolean v9, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mApnNum3GPP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mApnNum3GPP2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mApnNum3GPP2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "curApnNum3GPP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",curApnNum3GPP2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mIsChangedApns3GPP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mIsChangedApns3GPP2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    if-eqz v6, :cond_b

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/ApnSetting;

    :cond_b
    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    if-eqz v6, :cond_c

    iput-object v4, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/ApnSetting;

    .end local v1           #curApnNum3GPP:I
    .end local v2           #curApnNum3GPP2:I
    .end local v3           #currentApns3GPP:[Lcom/android/internal/telephony/ApnSetting;
    .end local v4           #currentApns3GPP2:[Lcom/android/internal/telephony/ApnSetting;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_c
    return-void
.end method

.method private getIPType(Lcom/android/internal/telephony/ApnSetting;)I
    .locals 5
    .parameter "apn"

    .prologue
    const/4 v3, 0x0

    .local v3, result:I
    const/4 v2, 0x0

    .local v2, isRoaming:Z
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/DataProfile;->roamingProtocol:Ljava/lang/String;

    .local v1, ipType:Ljava/lang/String;
    :goto_1
    const-string v4, "IP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :cond_0
    :goto_2
    return v3

    .end local v1           #ipType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "exception in mPhone.getServiceState().getRoaming()"

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/DataProfile;->protocol:Ljava/lang/String;

    goto :goto_1

    .restart local v1       #ipType:Ljava/lang/String;
    :cond_2
    const-string v4, "IPV6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const-string v4, "IPV4V6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_2
.end method

.method private updateApnListToBp(I[Lcom/android/internal/telephony/ApnSetting;)V
    .locals 24
    .parameter "profileType"
    .parameter "cachedApns"

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "need update BP apn list for profileType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    const/4 v13, 0x0

    .local v13, ratType:I
    const/4 v3, 0x4

    new-array v15, v3, [Lcom/motorola/android/internal/telephony/ApnInfo;

    .local v15, apnInfoList:[Lcom/motorola/android/internal/telephony/ApnInfo;
    const-string v3, "updateBPApnList:prepare to get list from BP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    new-instance v16, Lcom/motorola/android/internal/telephony/ApnJni;

    invoke-direct/range {v16 .. v16}, Lcom/motorola/android/internal/telephony/ApnJni;-><init>()V

    .local v16, apnJniIntf:Lcom/motorola/android/internal/telephony/ApnJni;
    const-string v3, "updateBPApnList:new apnjni ok"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/motorola/android/internal/telephony/ApnJni;->listApns(I)[Lcom/motorola/android/internal/telephony/ApnInfo;

    move-result-object v19

    .local v19, bpApnsList:[Lcom/motorola/android/internal/telephony/ApnInfo;
    const-string v3, "updateBPApnList:has gotten list from BP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    array-length v3, v0

    if-eqz v3, :cond_1

    const-string v3, "updateBPApnList:get list from BP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    move-object/from16 v17, v19

    .local v17, arr$:[Lcom/motorola/android/internal/telephony/ApnInfo;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    aget-object v18, v17, v21

    .local v18, bpApnInfo:Lcom/motorola/android/internal/telephony/ApnInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList:get apninfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    if-lez v3, :cond_0

    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    aget-object v3, v15, v3

    if-nez v3, :cond_0

    move-object/from16 v0, v18

    iget v3, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    aput-object v18, v15, v3

    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .end local v17           #arr$:[Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v18           #bpApnInfo:Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v21           #i$:I
    .end local v22           #len$:I
    :cond_1
    const-string v3, "updateBPApnList:can not get list from BP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    :cond_2
    const/16 v20, 0x1

    .local v20, i:I
    :goto_1
    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_a

    aget-object v14, p2, v20

    .local v14, apn:Lcom/android/internal/telephony/ApnSetting;
    if-nez v14, :cond_5

    aget-object v3, v15, v20

    if-eqz v3, :cond_3

    aget-object v3, v15, v20

    iget v3, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ApnJni;->deleteApn(II)I

    move-result v23

    .local v23, ret:I
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to delete apn info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    .end local v23           #ret:I
    :cond_3
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .restart local v23       #ret:I
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sccuess to delete apn info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto :goto_2

    .end local v23           #ret:I
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    const/4 v13, 0x3

    :goto_3
    new-instance v2, Lcom/motorola/android/internal/telephony/ApnInfo;

    iget v3, v14, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v3, v15, v3

    if-nez v3, :cond_7

    const/4 v4, 0x0

    :goto_4
    iget v5, v14, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    iget-object v6, v14, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->getIPType(Lcom/android/internal/telephony/ApnSetting;)I

    move-result v7

    iget-boolean v8, v14, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    iget v9, v14, Lcom/android/internal/telephony/ApnSetting;->timer:I

    iget v10, v14, Lcom/android/internal/telephony/DataProfile;->authType:I

    iget-object v11, v14, Lcom/android/internal/telephony/DataProfile;->user:Ljava/lang/String;

    iget-object v12, v14, Lcom/android/internal/telephony/DataProfile;->password:Ljava/lang/String;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v13}, Lcom/motorola/android/internal/telephony/ApnInfo;-><init>(IIILjava/lang/String;IZIILjava/lang/String;Ljava/lang/String;I)V

    .local v2, apnInfo:Lcom/motorola/android/internal/telephony/ApnInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList,apninfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    const/16 v23, -0x1

    .restart local v23       #ret:I
    iget v3, v14, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v3, v15, v3

    if-eqz v3, :cond_8

    iget v3, v14, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v3, v15, v3

    iget v3, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    iput v3, v2, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    iget v3, v14, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v3, v15, v3

    iget v3, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    move/from16 v0, p1

    invoke-static {v3, v0, v2}, Lcom/motorola/android/internal/telephony/ApnJni;->setApn(IILcom/motorola/android/internal/telephony/ApnInfo;)I

    move-result v23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "to setApn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    :goto_5
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList apn to BP fail,apninfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v2           #apnInfo:Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v23           #ret:I
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_7
    iget v3, v14, Lcom/android/internal/telephony/ApnSetting;->apnClass:I

    aget-object v3, v15, v3

    iget v4, v3, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    goto/16 :goto_4

    .restart local v2       #apnInfo:Lcom/motorola/android/internal/telephony/ApnInfo;
    .restart local v23       #ret:I
    :cond_8
    const-string v3, "to createApn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/ApnJni;->createApn(ILcom/motorola/android/internal/telephony/ApnInfo;)I

    move-result v23

    goto :goto_5

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBPApnList apn to BP succeed,apninfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v2           #apnInfo:Lcom/motorola/android/internal/telephony/ApnInfo;
    .end local v14           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v23           #ret:I
    :cond_a
    return-void
.end method

.method private updateApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Z)V
    .locals 12
    .parameter "bpApnList"
    .parameter "is3GPP2"

    .prologue
    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .local v5, resolver:Landroid/content/ContentResolver;
    const-string v10, "content://telephony/carriers"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .local v8, url:Landroid/net/Uri;
    const-string v6, "apn = ? AND bearer = ? AND class = 2"

    .local v6, selection:Ljava/lang/String;
    const/4 v10, 0x2

    new-array v7, v10, [Ljava/lang/String;

    .local v7, selectionArgs:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "maybeUpdateApnListFromBP: selection = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    move-object v1, p1

    .local v1, arr$:[Lcom/motorola/android/internal/telephony/ApnInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .local v0, apnInfo:Lcom/motorola/android/internal/telephony/ApnInfo;
    iget-object v10, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "carrier_enabled"

    iget-boolean v11, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->enabled:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    aput-object v11, v7, v10

    const/4 v11, 0x1

    if-eqz p2, :cond_4

    const-string v10, "13"

    :goto_2
    aput-object v10, v7, v11

    :try_start_0
    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "maybeUpdateApnListFromBP: update table carriers succeed, with values = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", selectionArgs = ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v10, "14"

    goto :goto_2

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "maybeUpdateApnListFromBP: update table carriers failed, uri or values are null, with values = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", selectionArgs = ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public checkAndSyncApnList(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, allApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->cacheApnListFromAp(Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP:[Lcom/android/internal/telephony/ApnSetting;

    invoke-direct {p0, v1, v0}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnListToBp(I[Lcom/android/internal/telephony/ApnSetting;)V

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mIsChangedApns3GPP2:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->mCachedApns3GPP2:[Lcom/android/internal/telephony/ApnSetting;

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnListToBp(I[Lcom/android/internal/telephony/ApnSetting;)V

    :cond_1
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public maybeUpdateApnListFromBP()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "call maybeUpdateApnListFromBP()"

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    const-string v3, "1"

    const-string v4, "persist.radio.firstupafterfr"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/motorola/android/internal/telephony/ApnJni;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/ApnJni;-><init>()V

    .local v0, apnJniIntf:Lcom/motorola/android/internal/telephony/ApnJni;
    const-string v3, "maybeUpdateApnListFromBP:new apnjni succeed!"

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/ApnJni;->listApns(I)[Lcom/motorola/android/internal/telephony/ApnInfo;

    move-result-object v1

    .local v1, bpApnsList1:[Lcom/motorola/android/internal/telephony/ApnInfo;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/ApnJni;->listApns(I)[Lcom/motorola/android/internal/telephony/ApnInfo;

    move-result-object v2

    .local v2, bpApnsList2:[Lcom/motorola/android/internal/telephony/ApnInfo;
    const-string v3, "maybeUpdateApnListFromBP:get list from BP succeed!"

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->log(Ljava/lang/String;)V

    invoke-direct {p0, v1, v6}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Z)V

    invoke-direct {p0, v2, v7}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->updateApnTable([Lcom/motorola/android/internal/telephony/ApnInfo;Z)V

    const-string v3, "persist.radio.firstupafterfr"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
