.class public final Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;
.super Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.source "MSimGsmDataConnectionTracker.java"


# instance fields
.field private mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

.field private mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisconnectPendingCount:I

.field protected mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

.field protected mSubscription:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/msim/MSimGSMPhone;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    iput v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    iput-object p1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mSubscription:I

    iget v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInternalDataEnabled (is data sub?) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected broadcastMessenger()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->broadcastMessenger()V

    goto :goto_0
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .parameter "cause"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "cause"
    .parameter "disconnectAllCompleteMsg"

    .prologue
    const-string v1, "cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const v1, 0x4201e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)V
    .locals 2
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUpConnection: mDisconnectPendingCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->notifyDataDisconnectComplete()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->notifyAllDataDisconnected()V

    :cond_0
    return-void
.end method

.method protected cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;Z)V
    .locals 9
    .parameter "tearDown"
    .parameter "apnContext"
    .parameter "doAll"

    .prologue
    const/4 v8, 0x0

    if-nez p2, :cond_0

    const-string v5, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: E tearDown="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    invoke-virtual {p2, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v0

    .local v0, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    .end local v0           #apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: X tearDown="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_1

    move v2, p3

    .local v2, disconnectAll:Z
    const-string v5, "dun"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/DataProfile;

    move-result-object v3

    .local v3, dunSetting:Lcom/android/internal/telephony/DataProfile;
    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/DataProfile;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "tearing down dedicated DUN connection"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .end local v3           #dunSetting:Lcom/android/internal/telephony/DataProfile;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: tearing down"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_5

    const-string v5, " all"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    const v5, 0x4200f

    invoke-virtual {p0, v5, p2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .local v4, msg:Landroid/os/Message;
    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/telephony/DataConnection;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    :goto_3
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget v5, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    goto/16 :goto_1

    .end local v4           #msg:Landroid/os/Message;
    :cond_5
    const-string v5, ""

    goto :goto_2

    .restart local v4       #msg:Landroid/os/Message;
    :cond_6
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .end local v2           #disconnectAll:Z
    .end local v4           #msg:Landroid/os/Message;
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    :cond_9
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    invoke-virtual {p2, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto/16 :goto_1
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getSubscriptionInfo()Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .local v0, subscriptionData:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Ignore GSM msgs since GSM phone is not the current DDS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_1

    .local v0, enabled:Z
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4201b
        :pswitch_0
    .end packed-switch
.end method

.method protected isActiveDataSubscription()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimGsmDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimGsmDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected notifyAllDataDisconnected()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method protected notifyDataDisconnectComplete()V
    .locals 3

    .prologue
    const-string v2, "notifyDataDisconnectComplete"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v1           #m:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 1
    .parameter "ar"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 1
    .parameter "connId"
    .parameter "ar"

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->notifyDataDisconnectComplete()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->notifyAllDataDisconnected()V

    :cond_1
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    return-void
.end method

.method protected onSetInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 3
    .parameter "enabled"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v0, 0x1

    .local v0, sendOnComplete:Z
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    if-eqz p1, :cond_1

    const-string v1, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->resetAllRetryCounts()V

    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notify All Data Disconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_0
    return-void
.end method

.method protected registerForAllEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42001

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42006

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42004

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42008

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42007

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42010

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42009

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42016

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42017

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)Z
    .locals 4
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    const v1, 0x4201b

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInternalDataEnabledFlag("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method protected unregisterForAllEvents()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const-string v1, "update"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "update(): Active DDS, register for all events now!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->registerForAllEvents()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->onUpdateIcc()V

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->updateCurrentCarrierInProvider()Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->broadcastMessenger()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->unregisterForAllEvents()V

    const-string v0, "update(): NOT the active DDS, unregister for all events!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateRecords()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->onUpdateIcc()V

    :cond_0
    return-void
.end method
