.class public Lcom/motorola/motepm/policy/NfcPolicy;
.super Lcom/motorola/motepm/policy/DeviceBooleanPolicy;
.source "NfcPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v1, 0xe

    const/16 v2, 0x77

    const-string v3, "nfc-allowed"

    const v4, 0x10405a1

    const v5, 0x10405a2

    const v6, 0x10405a0

    const v7, 0x104059f

    const-string v8, "android.nfc.action.ADAPTER_STATE_CHANGED"

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/motepm/policy/DeviceBooleanPolicy;-><init>(IILjava/lang/String;IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getDeviceState(Landroid/content/Intent;)I
    .locals 3
    .parameter "broadcastIntent"

    .prologue
    const/4 v1, 0x1

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAuxiliaryServiceBound(Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;)V
    .locals 1
    .parameter "service"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/NfcPolicy;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/motepm/policy/NfcPolicy;->onDisable()Z

    :cond_0
    return-void
.end method

.method protected onDisable()Z
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/NfcPolicy;->getDebugTag()Ljava/lang/String;

    move-result-object v0

    .local v0, METHOD_TAG:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/motepm/policy/NfcPolicy;->getAuxiliaryService()Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;

    move-result-object v2

    .local v2, service:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;->disableNfc()Z

    move-result v3

    .end local v2           #service:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    :goto_0
    return v3

    .restart local v2       #service:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    :cond_0
    const-string v3, "MotorolaPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Auxiliary service not bound."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #service:Lcom/motorola/devicemanagement/IMotDeviceManagerAuxiliaryService;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MotorolaPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Error while disabling NFC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
