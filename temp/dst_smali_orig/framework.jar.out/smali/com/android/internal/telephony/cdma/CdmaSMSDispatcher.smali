.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final DEBUG_FILE_FOR_BROADCAST_MSG:Ljava/lang/String; = "/sdcard/_debug_mode_for_broadcast_msg_"

.field protected static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field protected mAckWaitMessageId:I

.field private mCdmaJudgeSmsType:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field protected mLastAcknowledgedSmsFingerprint:[B

.field protected mLastDispatchedSmsFingerprint:[B

.field private final mScpResultsReceiver:Landroid/content/BroadcastReceiver;

.field protected mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"
    .parameter "imsSMSDispatcher"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v0, "CDMA"

    const-string v1, "CdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method private static checkDuplicatePortOmadmWappush([BI)Z
    .locals 6
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    add-int/lit8 p1, p1, 0x4

    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .local v1, omaPdu:[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .local v2, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .local v3, wspIndex:I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, fillIn:Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v5, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "stack_type"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 4
    .parameter "sms"

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsCbProgramData()Ljava/util/ArrayList;

    move-result-object v1

    .local v1, programDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    if-nez v1, :cond_0

    const-string v2, "CDMA"

    const-string v3, "handleServiceCategoryProgramData: program data list is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sender"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "program_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v2, "android.permission.RECEIVE_SMS"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private isDebugModeForBroadcastSMS()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/_debug_mode_for_broadcast_msg_"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 6
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "ril.cdma.inecmmode"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, inEcm:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CDMA"

    const-string v5, "CdmaSMSDispatcher.acknowledgeLastIncomingSms(): inEcm.equals true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_5

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "KDDI"

    const-string v5, "ro.cdma.home.operator.alpha"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eq p1, v2, :cond_1

    const/4 p2, 0x3

    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .local v0, causeCode:I
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "KDDI"

    const-string v5, "ro.cdma.home.operator.alpha"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-nez v4, :cond_3

    new-instance v4, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2, v2}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    :cond_3
    if-eqz p1, :cond_4

    move v2, v3

    .local v2, sendAck:I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    invoke-virtual {v4, v2, v5}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicateFile(II)V

    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I

    .end local v0           #causeCode:I
    .end local v2           #sendAck:I
    :cond_5
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .parameter "ifSupportNationalTable"
    .parameter "ifSupportLockingShiftTable"
    .parameter "language"

    .prologue
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 20
    .parameter "smsb"

    .prologue
    if-nez p1, :cond_0

    const-string v17, "CDMA"

    const-string v18, "dispatchMessage: message is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x2

    :goto_0
    return v17

    :cond_0
    const-string v17, "ril.cdma.inecmmode"

    const-string v18, "false"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, inEcm:Ljava/lang/String;
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "CDMA"

    const-string v18, "CdmaSMSDispatcher.dispatchMessage(): inEcm.equals true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const-string v17, "CDMA"

    const-string v18, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v12, p1

    check-cast v12, Lcom/android/internal/telephony/cdma/SmsMessage;

    .local v12, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v9

    .local v9, rawPdu:[B
    if-eqz v9, :cond_5

    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "rawPdu.length= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v9

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", rawPdu= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexStringWithSpaceSep([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9           #rawPdu:[B
    :goto_1
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v7

    .local v7, msgtype:I
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const-string v17, "KDDI"

    const-string v18, "ro.cdma.home.operator.alpha"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v11

    .local v11, serviceCategory:I
    const/4 v10, 0x1

    .local v10, rejectBroadcastSMS:Z
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_3

    const/16 v17, 0x26

    move/from16 v0, v17

    if-eq v11, v0, :cond_3

    const/16 v17, 0x23

    move/from16 v0, v17

    if-eq v11, v0, :cond_3

    const/16 v17, 0x28

    move/from16 v0, v17

    if-lt v11, v0, :cond_7

    const/16 v17, 0x3f

    move/from16 v0, v17

    if-gt v11, v0, :cond_7

    :cond_3
    const/4 v10, 0x0

    :cond_4
    :goto_2
    if-eqz v10, :cond_a

    const/16 v17, 0x4

    goto/16 :goto_0

    .end local v7           #msgtype:I
    .end local v10           #rejectBroadcastSMS:Z
    .end local v11           #serviceCategory:I
    .restart local v9       #rawPdu:[B
    :cond_5
    const-string v17, "CDMA"

    const-string v18, "warning! rawPdu is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v9           #rawPdu:[B
    :cond_6
    const-string v17, "CDMA"

    const-string v18, "warning! sms is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local v7       #msgtype:I
    .restart local v10       #rejectBroadcastSMS:Z
    .restart local v11       #serviceCategory:I
    :cond_7
    const v17, 0x8001

    move/from16 v0, v17

    if-eq v11, v0, :cond_9

    const v17, 0x8026

    move/from16 v0, v17

    if-eq v11, v0, :cond_9

    const/16 v17, 0x23

    move/from16 v0, v17

    if-eq v11, v0, :cond_9

    const v17, 0x8028

    move/from16 v0, v17

    if-lt v11, v0, :cond_8

    const v17, 0x803f

    move/from16 v0, v17

    if-le v11, v0, :cond_9

    :cond_8
    const v17, 0xc001

    move/from16 v0, v17

    if-eq v11, v0, :cond_9

    const v17, 0xc026

    move/from16 v0, v17

    if-eq v11, v0, :cond_9

    const/16 v17, 0x23

    move/from16 v0, v17

    if-eq v11, v0, :cond_9

    const v17, 0xc028

    move/from16 v0, v17

    if-lt v11, v0, :cond_4

    const v17, 0xc03f

    move/from16 v0, v17

    if-gt v11, v0, :cond_4

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isDebugModeForBroadcastSMS()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v10, 0x0

    goto :goto_2

    .end local v10           #rejectBroadcastSMS:Z
    .end local v11           #serviceCategory:I
    :cond_a
    const/16 v17, 0x1

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const-string v17, "CDMA"

    const-string v18, "Broadcast type message"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v6

    .local v6, message:Landroid/telephony/SmsCbMessage;
    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V

    :cond_b
    const/16 v17, 0x1

    goto/16 :goto_0

    .end local v6           #message:Landroid/telephony/SmsCbMessage;
    :cond_c
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v14

    .local v14, teleService:I
    const/4 v4, 0x0

    .local v4, handled:Z
    const/16 v17, 0x1003

    move/from16 v0, v17

    if-eq v0, v14, :cond_e

    const/high16 v17, 0x4

    move/from16 v0, v17

    if-ne v0, v14, :cond_11

    :cond_e
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const-string v17, "KDDI"

    const-string v18, "ro.cdma.home.operator.alpha"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/16 v17, 0x1003

    move/from16 v0, v17

    if-ne v0, v14, :cond_f

    const/16 v17, 0x3

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v15

    .local v15, voicemailCount:I
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPriority()I

    move-result v16

    .local v16, voicemailPriority:I
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Voicemail count="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Voicemail priority="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->updateMessageWaitingIndicator(II)V

    const/4 v4, 0x1

    .end local v15           #voicemailCount:I
    .end local v16           #voicemailPriority:I
    :cond_10
    :goto_3
    if-eqz v4, :cond_15

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_11
    const/16 v17, 0x1002

    move/from16 v0, v17

    if-eq v0, v14, :cond_12

    const/16 v17, 0x1005

    move/from16 v0, v17

    if-ne v0, v14, :cond_13

    :cond_12
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_13
    const/16 v17, 0x1006

    move/from16 v0, v17

    if-ne v0, v14, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_14
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v17

    if-nez v17, :cond_10

    const/4 v4, 0x1

    goto :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v17

    if-nez v17, :cond_16

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v17

    sget-object v18, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_16

    const-string v17, "CDMA"

    const-string v18, "RESULT_SMS_OUT_OF_MEMORY"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x3

    goto/16 :goto_0

    :cond_16
    const/16 v17, 0x1004

    move/from16 v0, v17

    if-ne v0, v14, :cond_17

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v17

    iget v0, v12, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    move/from16 v18, v0

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v17

    goto/16 :goto_0

    :cond_17
    const/16 v17, 0x1002

    move/from16 v0, v17

    if-eq v0, v14, :cond_18

    const/16 v17, 0x1005

    move/from16 v0, v17

    if-eq v0, v14, :cond_18

    const/16 v17, 0x1

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    const/16 v17, 0x4

    goto/16 :goto_0

    :cond_18
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const-string v17, "KDDI"

    const-string v18, "ro.cdma.home.operator.alpha"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v13

    .local v13, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v13, :cond_19

    iget-object v0, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object/from16 v17, v0

    if-nez v17, :cond_1a

    iget-object v0, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v17, v0

    if-nez v17, :cond_1a

    :cond_19
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v8, v0, [[B

    .local v8, pdus:[[B
    const/16 v17, 0x0

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v18

    aput-object v18, v8, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->kddiDispatchPdus([[BLcom/android/internal/telephony/cdma/SmsMessage;)V

    const/16 v17, -0x1

    goto/16 :goto_0

    .end local v8           #pdus:[[B
    .end local v13           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v17

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "3gpp2"

    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIms()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    return v0
.end method

.method protected kddiDispatchPdus([[BLcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 8
    .parameter "pdus"
    .parameter "sms"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-nez v0, :cond_1

    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget v1, p2, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiCheckSmsDuplicate(ILjava/lang/Long;[B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->getDuplicatedMessageResponseType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/NullPointerException;
    const-string v0, "CDMA"

    const-string v1, "judgeSmsType() failed to create SmsAccessory "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v7           #ex:Ljava/lang/NullPointerException;
    :pswitch_1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiGetMessageEncoding()I

    move-result v6

    .local v6, encoding:I
    const/4 v0, 0x4

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiJudgeType([B)Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v5

    .local v5, accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :goto_1
    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetResponseType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_2
    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->kddiNotifiySmsToApp([[BLcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsDuplicate:Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget v1, p2, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicate(IJ[BLcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V

    goto :goto_0

    .end local v5           #accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :cond_4
    new-instance v5, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaJudgeSmsType:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v5       #accessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_2

    :pswitch_4
    iget v0, p2, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mAckWaitMessageId:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected kddiNotifiySmsToApp([[BLcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 2
    .parameter "pdus"
    .parameter "accessory"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->kddiNonOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .locals 15
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    const/4 v11, 0x0

    .local v11, index:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget-byte v1, p1, v11

    and-int/lit16 v13, v1, 0xff

    .local v13, msgType:I
    if-eqz v13, :cond_0

    const-string v1, "CDMA"

    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_0
    return v1

    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_0
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v6, v1, 0xff

    .local v6, totalSegments:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v5, v1, 0xff

    .local v5, segment:I
    if-lt v5, v6, :cond_1

    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WDP bad segment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting 0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_0

    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_1
    const/4 v14, 0x0

    .local v14, sourcePort:I
    const/4 v9, 0x0

    .local v9, destinationPort:I
    if-nez v5, :cond_2

    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v14, v1, 0x8

    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v14, v1

    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v9, v1, 0x8

    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v9, v1

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkDuplicatePortOmadmWappush([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v11, v12, 0x4

    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_1
    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    array-length v1, v0

    sub-int/2addr v1, v11

    new-array v2, v1, [B

    .local v2, userData:[B
    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v11

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZ)I

    move-result v1

    goto/16 :goto_0

    .end local v2           #userData:[B
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_2
    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "origPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    int-to-short v1, p3

    if-eqz p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, v1, p5, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .local v6, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p6, p7, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v5           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    int-to-short v1, p3

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, v1, p4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .local v6, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v5           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 13
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;IILjava/lang/String;)V
    .locals 5
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"
    .parameter "cbNumber"
    .parameter "priority"
    .parameter "encodingMethod"
    .parameter "language"

    .prologue
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v3, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object p4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v4, 0x1

    if-ne p5, v4, :cond_0

    const/16 v4, 0x9

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {p1, v3, v4, p9, p10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .local v1, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .local v0, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, p6, p7, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v4, 0x4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 10
    .parameter "tracker"

    .prologue
    const/4 v2, 0x0

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "pdu"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v3, v7

    check-cast v3, [B

    .local v3, pdu:[B
    const/4 v7, 0x2

    invoke-virtual {p0, v7, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .local v4, reply:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    .local v5, serviceState:Landroid/telephony/ServiceState;
    const/4 v0, 0x0

    .local v0, isLteOnly:Z
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v7, v7, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v7, :cond_0

    const-string v7, "CDMA"

    const-string v8, "CDMALTEPhone"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v7, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v6

    .local v6, serviceStateTracker:Lcom/android/internal/telephony/ServiceStateTracker;
    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;

    .end local v6           #serviceStateTracker:Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isPsOnlyMode()Z

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v0, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enable_mo_sms_over_ims"

    invoke-static {v7, v8, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v2, 0x1

    .local v2, moSmsOverIms:Z
    :cond_2
    if-eqz v3, :cond_5

    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pdu.length= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexStringWithSpaceSep([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendSms:  isLteOnly="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " moSmsOverIms="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isIms()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mRetryCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mImsRetry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mMessageRef="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SS="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    if-nez v2, :cond_6

    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    :goto_1
    return-void

    :cond_5
    const-string v7, "CDMA"

    const-string v8, "pdu==null "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v7, v3, v8, v9, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_1
.end method

.method protected sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V
    .locals 17
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "cbNumber"
    .parameter "priority"
    .parameter "encodingMethod"
    .parameter "language"

    .prologue
    const/4 v14, 0x0

    .local v14, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    const-string v4, "ro.cdma.sms.latin_encode"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v12, 0x0

    .local v12, encoding:I
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v11

    .local v11, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v12, v11, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    new-instance v16, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v16, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    const/4 v4, 0x1

    if-ne v12, v4, :cond_1

    const/4 v4, 0x2

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz p5, :cond_3

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v14

    .end local v11           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v12           #encoding:I
    .end local v16           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :goto_2
    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v13

    .local v13, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v13, v1, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v15

    .local v15, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .end local v13           #map:Ljava/util/HashMap;
    .end local v15           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_3
    return-void

    .restart local v11       #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v12       #encoding:I
    .restart local v16       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_1
    const/4 v4, 0x2

    if-ne v12, v4, :cond_2

    const/16 v4, 0x8

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .end local v11           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v12           #encoding:I
    .end local v16           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_4
    if-eqz p5, :cond_5

    const/4 v7, 0x1

    :goto_4
    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v14

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    if-eqz p4, :cond_0

    const/4 v4, 0x3

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method updateMessageWaitingIndicator(II)V
    .locals 1
    .parameter "mwi"
    .parameter "voicemailPriority"

    .prologue
    if-gez p1, :cond_1

    const/4 p1, -0x1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(II)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->storeVoiceMailCount()V

    return-void

    :cond_1
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    const/16 p1, 0x63

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(ZI)V
    .locals 1
    .parameter "mwi"
    .parameter "voicemailPriority"

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->updateMessageWaitingIndicator(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
